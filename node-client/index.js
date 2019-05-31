var soap = require('soap');
var url = 'http://localhost:3000/webserver/WebService?wsdl';
var args = {arg0 : ["abd"]};
soap.createClient(url, function(err, client) {
    if(err) {
        console.log(err);
    }
    client.sayHello(args, function(err, result) {
        console.log(result);
    });
    client.compare({arg0 : 4,arg1 : 2},function(err,result) {
        console.log("compare",result)
    })
});