const express = require('express');
const productModel = require('../models/productModel');
//const addToCart = require('../models/addCart');
const router = express.Router();

var i = 0;
router.get('/', (req, res) => {
	res.redirect('/');
});
router.get('/view', (req, res) => {
	var proID = req.query.id;
	productModel.getInt(proID).then(info => {
		var newView = info[0].totalView + 1;
		var newBought = info[0].totalBought;
		var newStore = info[0].inStorage;
		productModel.postInt(proID, newView, newBought, newStore).then(value => {
			productModel.loadDetail(proID).then(rows => {
				var brandID = rows[0].brandID;
				var catID = rows[0].catID;
				productModel.loadSameBrand(proID, brandID).then(brand_rows => {
					productModel.loadSameCat(proID, catID).then(cat_rows => {
						var vm = {
							product: rows[0],
							product_name: rows[0].proName,
							same_brand: brand_rows,
							same_cat: cat_rows
						}
						res.render('product/product-detail', vm);
					}).catch(err => {
						console.log(err);
						res.end('fail');
					})
				}).catch(err => {
					console.log(err);
					res.end('fail');
				})
			}).catch(err => {
				console.log(err);
				res.end('fail');
			})
		}).catch(err => {
			console.log(err);
			res.end('fail');
		})
	}).catch(err => {
		console.log(err);
		res.end('fail');
	})
});
/*router.post('/', (req, res) => {
	var check = addToCart();
	if(check === true){
		var link = window.location.search.substring(1);
		var id = link.split('=');
		var dateTime = new Date();
		var cart{
			cartID: i,
			proID: id[1],
			quantity: 1
		}
		addToCart.addCart(cart).then (rows => {
                res.redirect('/');
            }).catch(err => {
                console.log(err);
                res.end('fail');
            });
        var cartIF{
        	cartID: i,,
			email: req.session.user,
			date: dateTime
        }
        addToCart.addCartIF(cartIF).then (rows => {
                res.redirect('/');
            }).catch(err => {
                console.log(err);
                res.end('fail');
            });
        i++;
	}
})*/

module.exports = router;