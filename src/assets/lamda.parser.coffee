ReqStream = require './request.stream'

class Parser
  analyzeEvent: (event) ->
    new ReqStream(
      @analyzePath(event.path),
      @analyzeMethod(event.httpMethod),
      @analyzeHeaders(event.headers),
      @analyzeBody(event.body),
      @analyzeQuery(event.queryStringParameters)
    )

  analyzePath: (val) ->
    val

  analyzeMethod: (val) ->
    val

  analyzeHeaders: (val) ->
    val

  analyzeBody: (val) ->
    JSON.parse val

  analyzeQuery: (val) ->
    val

export default Parser
