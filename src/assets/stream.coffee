KeyStore = require('./store.key')

class Stream
  constructor: (path, method, headers, body, query) ->
    @private = {}
    @private.path = path
    @private.method = method
    @private.headers = headers
    @private.body = body
    @private.query = query

  @getter 'path', () ->
    @private.path

  @getter 'method', () ->
    @private.method

  @getter 'query', () ->
    @private.query

  @getter 'headers', () ->
    @private.headers

  @getter 'body', () ->
    @private.query

  stringify: () ->
    JSON.stringify @private

export default RequestStream

