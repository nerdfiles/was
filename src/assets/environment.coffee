###
@fileOverview ./src/assets/environment.coffee
###

# Infrastructure.
Request = require('./request')
Parser = require('./parser')

environment = (event, context, callback, action, middlewares) ->
  ###
  @name environment
  ###

  stage = event.requestContext.stage.toUpperCase()
  env =
    stage: stage
    debug: ['DEV', 'QA', 'TEST'].indexOf(stage) >= -1

  if typeof middlewares !== 'object'
    middlewares = []
  middleware = []

  try
    req = new Request(event, new LamdaParser())
    middleware = middlewares.map((m) =>
      new m(req, env)
    )
    wares = middleware.map((instance) =>
      instance.create()
    )
    res = action.apply(null, [req, env].concat(wares))
    context.done(null, res.simplify())
  catch err
    context.done err
  finally
    mwInstances.forEach((instance) =>
      instance.destroy()
    )

export default environment
