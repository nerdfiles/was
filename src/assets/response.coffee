###
@fileOverview ./src/assets/response.coffee
###

###
@jsdoc class
@name Response
###

class Response

  ###
  @name Response:constructor
  @param {string} body Response body.
  @param {int} code Response HTTP Status code
  ###

  constructor: (body, code) ->
    @body = body

    switch typeof code
      when 'undefined' then @code = 200
      when 'number' then @code = code
      else throw new TypeError 'Response code must be an integer.'

  ###
  @name Response:render
  @return {object}
  ###

  render: () ->
    statusCode:  @code
    body:        JSON.stringify @body

export default Response
