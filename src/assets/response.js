// Generated by CoffeeScript 1.11.1
var Response;

Response = (function() {
  function Response(body, code) {
    this.body = body;
    switch (typeof code) {
      case 'undefined':
        this.code = 200;
        break;
      case 'number':
        this.code = code;
        break;
      default:
        throw new TypeError('Response code must be an integer.');
    }
  }

  Response.prototype.render = function() {
    return {
      statusCode: this.code,
      body: JSON.stringify(this.body)
    };
  };

  return Response;

})();

export default Response;
