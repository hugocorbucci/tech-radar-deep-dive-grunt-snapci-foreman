var connect = require('connect');
var http = require('http');

var app = connect();

var model = require('./app/index.js');

app.use(function(req, res){
  res.end(model.index());
});

http.createServer(app).listen(process.env.PORT);
