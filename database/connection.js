const mysql = require('mysql');
const util = require('util');
var inquirer = require('inquirer');
connection.query = until.promisify(connection.query)
module.exports = connection;
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'password1',
    database: 'employee_db',
    
}) 
connection.connect(function(err){
    
    if(err){
        throw err;
        
    }
    start()
});






