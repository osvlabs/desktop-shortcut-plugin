var exec = require('cordova/exec');

exports.createDesktopWithIconImage = function (arg0, success, error) {
    exec(success, error, 'DesktopShortcut', 'createDesktopWithIconImage', [arg0]);
};
