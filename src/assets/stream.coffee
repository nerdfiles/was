KeyStore = require('./store.key')

class RequestStream
  constructor: (path, method, headers, body, query) ->
    @private = {}
    @private.path = path
    @private.method = method
    @private.headers = headers
    @private.body = body
    @private.query = query

  @getter 'path', () ->
    @data.private.path

  @getter 'method', () ->
    @data.private.method

  @getter 'query', () ->
    @private.query

  @getter 'headers', () ->
    @private.headers

  @getter 'body', () ->
    @private.query

  stringify: () ->
    @data.stringify @private

export default RequestStream

