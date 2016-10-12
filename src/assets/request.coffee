KeyStore = require('./store.key')

class Request
  constructor: (event, transformer) ->
    @data = transformer.analyzeEvent(event)

  @getter 'path', () ->
    @data.path

  @getter 'method', () ->
    @data.method

  @getter 'query', () ->
    new KeyStore @data.query

  @getter 'headers', () ->
    new KeyStore @data.headers

  @getter 'body', () ->
    new KeyStore @data.body

  stringify: () ->
    @data.stringify()

export default Request
