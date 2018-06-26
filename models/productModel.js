var database = require('../database/database');
var config = require('../config/config');

exports.loadAll = () => {
    var sql = `select * from products limit ${config.ITEMS_PER_PAGE} offset ${0}`;
    return database.load(sql);
}

exports.loadNewest = () => {
    var sql = `SELECT * FROM products JOIN brands WHERE products.brandID = brands.brandID ORDER BY addedDay DESC limit ${config.ITEMS_PER_PAGE}`;
    return database.load(sql);
}

exports.loadBestseller = () => {
    var sql = `SELECT * FROM products JOIN brands WHERE products.brandID = brands.brandID ORDER BY totalBought DESC limit ${config.ITEMS_PER_PAGE}`;
    return database.load(sql);
}

exports.loadMostview = () => {
    var sql = `SELECT * FROM products JOIN brands WHERE products.brandID = brands.brandID ORDER BY totalView DESC limit ${config.ITEMS_PER_PAGE}`;
    return database.load(sql);
}
exports.loadInformation = () => {
    var sql = `SELECT * FROM products where proID = 0`;
    return database.load(sql);
}