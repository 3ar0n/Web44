var database = require('../database/database');
var config = require('../config/config');

exports.loadAll = () => {
    var sql = `select * from productinformation where proID = 0`;
    return database.load(sql);
}