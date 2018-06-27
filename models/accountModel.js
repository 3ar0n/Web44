var database = require('../database/database');

exports.login = (user) => {
    var sql = `select * from users where email = '${user.email}' and password = '${user.password}'`;
    return database.load(sql);
}