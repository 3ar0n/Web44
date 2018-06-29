var database = require('../database/database');

exports.addCart = (cart) =>{
	var sql = 'INSERT INTO `cart_detail`(`cartID`, `proID`, `quantity`) VALUES ('${cart.cartID}','${cart.proID}','${cart.quantity}')';
	return database.save(sql);
}
exports.addCartIF = (cartIF) =>{
	var sql = 'INSERT INTO `carts`(`cartID`, `email`, `createDate`) VALUES ('${cartIF.cartID}','${cartIF.email}','${cartIF.date}')';
	return database.save(sql);
}