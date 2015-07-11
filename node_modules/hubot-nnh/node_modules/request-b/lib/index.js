var Promise, request;

Promise = require('es6-promise').Promise;

request = require('request');

module.exports = function(options) {
  return new Promise(function(resolve, reject) {
    return request(options, function(err, res) {
      if (err != null) {
        return reject(err);
      }
      return resolve(res);
    });
  });
};
