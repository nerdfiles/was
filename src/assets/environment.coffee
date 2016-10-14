###
@fileOverview ./src/assets/environment.coffee
###

# Core.
_ = require('lodash')
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

  if not _.isArray(middlewares)
    middlewares = []
  middleware = []

  try
    req = new Request(event, new LamdaParser())
    middleware = middlewares.map((m) ->
      new m(req, env)
    )
    wares = middleware.map((item) ->
      item.create()
    )
    res = action.apply(null, [req, env].concat(wares))
    context.done(null, res.render())
  catch err
    context.done err
  finally
    middlewares.forEach((middleware) ->
      middleware.destroy()
    )

export default environment
