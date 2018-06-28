var database = require('../database/database');

exports.signin = (user) => {
    var sql = `select * from users where email = '${user.email}' and password = '${user.password}'`;
    return database.load(sql);
}

exports.signup = (user) => {
    var sql = `select * from users where email = '${user.email}' 
    and password = '${user.password}' and fullName = '${user.fullName}' 
    and phone = '${user.phone}' and address = '${user.address}'`;
    return database.load(sql);
}