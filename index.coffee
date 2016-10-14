partialRight = require('lodash.partialright')
dispatcher = require('./src/assets/environment')

export default =
  environment: (action, middleware) ->
    partialRight(environment, action, middleware)
