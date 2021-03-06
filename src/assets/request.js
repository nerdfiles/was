// Generated by CoffeeScript 1.11.1
var KeyStore, Request;

KeyStore = require('./store.key');

require('./function');

Request = (function() {
  function Request(event, transformer) {
    this.data = transformer.analyzeEvent(event);
  }

  Request.getter('path', function() {
    return this.data.path;
  });

  Request.getter('method', function() {
    return this.data.method;
  });

  Request.getter('query', function() {
    return new KeyStore(this.data.query);
  });

  Request.getter('headers', function() {
    return new KeyStore(this.data.headers);
  });

  Request.getter('body', function() {
    return new KeyStore(this.data.body);
  });

  Request.prototype.stringify = function() {
    return this.data.stringify();
  };

  return Request;

})();

export default Request;
