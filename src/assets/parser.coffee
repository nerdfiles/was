###
@fileOverview ./src/assets/parser.coffee
###

import { Stream } from './stream'

###
@class
@name Parser
###

class Parser

  ###
  @name analyzeEvent
  ###

  analyzeEvent: (event) ->
    new Stream(
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
