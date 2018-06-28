var database = require('../database/database');

exports.loadAll = () => {
    sql = `SELECT * FROM categories`;
    return database.load(sql);
}