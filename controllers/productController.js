const express = require('express');
const productModel = require('../models/productModel');
const router = express.Router();

router.get('/', (req, res) => {
	res.redirect('/');
});

router.get('/view', (req, res) => {
	var proID = req.query.id
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
			})
		})
	})
});

module.exports = router;