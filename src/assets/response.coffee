###
@fileOverview ./src/assets/response.coffee
###

class Response
  constructor: (body, code) ->
    @body = body

    switch typeof code
      when 'undefined' then @code = 200
      when 'number' then @code = code
      else throw new TypeError 'Response code must be an integer.'

  render: () ->
    statusCode:  @code
    body:        JSON.stringify @body

export default Response
