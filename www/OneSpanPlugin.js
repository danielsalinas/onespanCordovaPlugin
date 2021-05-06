var exec = require('cordova/exec');

exports.OSActivate = function (arg0, success, error) {
    exec(success, error, 'OneSpanPlugin', 'OSActivate', [arg0]);
};
