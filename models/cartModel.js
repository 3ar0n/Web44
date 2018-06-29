var database = require('../database/database');

exports.loadAllSum = () => {
    var sql = `select * from carts ORDER BY createDate DESC`;
    return database.load(sql);
}

exports.loadDetail = (cartID) => {
    var sql = `SELECT * FROM cart_detail JOIN products ON cart_detail.proID = products.proID WHERE cartID = ${cartID}`;
    return database.load(sql);
}