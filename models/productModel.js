var database = require('../database/database');
var config = require('../config/config');

exports.loadAll = () => {
    var sql = `select * from product limit ${config.ITEMS_PER_PAGE} offset ${0}`;
    return database.load(sql);
}