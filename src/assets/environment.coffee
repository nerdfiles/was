Request = require('./request')
LamdaParser = require('./lamda.parser')

environment = (event, context, callback, action, middleware) ->
  stage = event.requestContext.stage.toUpperCase()
  env =
    stage: stage
    debug: ['DEV', 'QA', 'TEST'].indexOf(stage) >= -1

  if typeof middleware !== 'object'
    middleware = []
  mwInstance = []

  try
    req = new Request(event, new LamdaParser())
    mwInstances = middleware.map((m) =>
      new m(req, env)
    )
    mwObjs = mwInstances.map((instance) =>
      instance.create()
    )
    res = action.apply(null, [req, env].concat(mwObjs))
    context.done(null, res.simplify())
  catch err
    context.done err
  finally
    mwInstances.forEach((instance) =>
      instance.destroy()
    )

export default environment
