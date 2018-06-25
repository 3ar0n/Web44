var database = require('../database/database');

exports.loadAll = () => {
    var sql = `select * from brands`;
    return database.load(sql);
}