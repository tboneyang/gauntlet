// Load the core http module.
var http = require('http');
var connect = require('connect');
var serveStatic = require('serve-static');
connect().use(serveStatic('.')).listen(8080);

// Ziggeo sdk
ZiggeoSdk = require('./ziggeo/ziggeo-sdk.js');
ZiggeoSdk.init('85947ae896bc6363d58e8fdb0025da37', 'd78507cc9b3f8d4ab77b3e97ac8842d9', 'ad6dc0e56b51afdbd4105d0a681618a8');


// Print out a nice message so you know that the server started
console.log('Server running on port 8080');
