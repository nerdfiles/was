partialRight = require('lodash.partialright')
environ = require('./src/assets/environment')

__environment__ =
  environment: (action, middleware) ->
    partialRight(environ, action, middleware)

export default __environment__
