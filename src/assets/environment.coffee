###
@fileOverview ./src/assets/environment.coffee
###

# Core.
import { _ } from 'lodash'
# Infrastructure.
import { Request } from './request'
import { Parser } from './parser'

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
    req = new Request(event, new Parser())
    middleware = middlewares.map((m) ->
      new m(req, env)
    )
    wares = middleware.map((item) ->
      item.create()
    )
    #[_err, _res] = event.body env
    res = action.apply(null, [req, env].concat(wares))
    context.done(null, res.render())
  catch err
    context.done err
  finally
    middlewares.forEach((middleware) ->
      middleware.destroy()
    )

export default environment
