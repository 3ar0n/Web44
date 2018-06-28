var database = require('../database/database');
var config = require('../config/config');

exports.loadAll = () => {
    var sql = `SELECT * FROM products INNER JOIN product_detail ON products.proID = product_detail.proID`;
    return database.load(sql);
}

exports.loadSumary = () => {
    var sql = `select * from products limit ${config.ITEMS_PER_PAGE}`;
    return database.load(sql);
}

exports.loadNewest = () => {
    var sql = `SELECT * FROM products JOIN brands ON products.brandID = brands.brandID
    ORDER BY addedDay DESC limit ${config.ITEMS_PER_PAGE}`;
    return database.load(sql);
}

exports.loadBestseller = () => {
    var sql = `SELECT * FROM products JOIN brands ON products.brandID = brands.brandID
    ORDER BY totalBought DESC limit ${config.ITEMS_PER_PAGE}`;
    return database.load(sql);
}

exports.loadMostview = () => {
    var sql = `SELECT * FROM products JOIN brands ON products.brandID = brands.brandID
    ORDER BY totalView DESC limit ${config.ITEMS_PER_PAGE}`;
    return database.load(sql);
}
exports.loadInformation = () => {
    var sql = `SELECT * FROM products where proID = 0`;
    return database.load(sql);
}

exports.loadDetail = id => {
    var sql = `SELECT * FROM products JOIN product_detail
    ON products.proID = product_detail.proID AND products.proID = ${id}`;
    return database.load(sql);
}

exports.loadSameBrand = (proID, brandID) => {
    var sql = `SELECT * FROM products WHERE brandID = ${brandID} AND proID <> ${proID} limit ${config.SAME_ITEMS}`;
    return database.load(sql);
}

exports.loadSameCat = (proID, catID) => {
    var sql = `SELECT * FROM products WHERE catID = ${catID} AND proID <> ${proID} limit ${config.SAME_ITEMS}`;
    return database.load(sql);
}