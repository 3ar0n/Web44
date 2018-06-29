var database = require('../database/database');

exports.loadAllSum = () => {
    var sql = `select * from carts ORDER BY createDate DESC`;
    return database.load(sql);
}

exports.loadDetail = (cartID) => {
    var sql = `SELECT * FROM cart_detail JOIN products ON cart_detail.proID = products.proID WHERE cartID = ${cartID}`;
    return database.load(sql);
}

/*
exports.addCart = (cart) =>{
	var sql = 'INSERT INTO `cart_detail`(`cartID`, `proID`, `quantity`) VALUES ('${cart.cartID}','${cart.proID}','${cart.quantity}')';
	return database.save(sql);
}
exports.addCartIF = (cartIF) =>{
	var sql = 'INSERT INTO `carts`(`cartID`, `email`, `createDate`) VALUES ('${cartIF.cartID}','${cartIF.email}','${cartIF.date}')';
	return database.save(sql);
}
*/