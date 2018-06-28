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

exports.loadUsers = () => {
    var sql = `select email, fullName, phone, address, isAdmin from users`;
    return database.load(sql);
}

exports.addUser = (user) => {
    var sql = `insert into users(email, password, fullName, phone, address, isAdmin)
    values('${user.email}', '${user.password}', '${user.fullName}', '${user.phone}', '${user.address}', '${user.isAdmin}')`;
    return database.save(sql);
}

exports.checkEmail = (email) => {
    var sql = `SELECT * FROM users WHERE email = '${email}'`;
    return database.load(sql);
}