// Generated by CoffeeScript 1.11.1

/*
@fileOverview ./src/assets/config.coffee
 */
var Config,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

import {
  util
} from 'util';

import {
  AWS
} from 'aws-sdk';

import {
  Asset
} from 'mover';


/*
Configuration.

@param {String} ...
 */

Config = (function(superClass) {
  extend(Config, superClass);

  function Config() {
    this.config = AWS.config = new AWS.Config();
  }

  Config.prototype.initialize = function() {
    return console.log(this.config);
  };

  return Config;

})(Asset);

export default Config;

