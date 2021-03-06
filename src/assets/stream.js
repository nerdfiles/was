// Generated by CoffeeScript 1.11.1

/*
@fileOverview ./src/assets/stream.coffee
 */
var KeyStore, Stream;

KeyStore = require('./store.key');

require('./function');

Stream = (function() {
  function Stream(path, method, headers, body, query) {
    this["private"] = {};
    this["private"].path = path;
    this["private"].method = method;
    this["private"].headers = headers;
    this["private"].body = body;
    this["private"].query = query;
  }

  Stream.getter('path', function() {
    return this["private"].path;
  });

  Stream.getter('method', function() {
    return this["private"].method;
  });

  Stream.getter('query', function() {
    return this["private"].query;
  });

  Stream.getter('headers', function() {
    return this["private"].headers;
  });

  Stream.getter('body', function() {
    return this["private"].query;
  });

  Stream.prototype.stringify = function() {
    return JSON.stringify(this["private"]);
  };

  return Stream;

})();

export default Stream;
