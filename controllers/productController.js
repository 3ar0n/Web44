const express = require('express');
const productModel = require('../models/productModel');
const router = express.Router();

router.get('/', (req, res) => {
	res.redirect('/');
});

router.get('/:proID', (req, res) => {
	var proID = req.params.proID;
	//var proID = req.body.id
	productModel.loadDetail(proID).then(rows => {
		var brandID = rows[0].brandID;
		productModel.loadSameBrand(proID, brandID).then(same_rows => {
			var vm = {
				product: rows[0],
				same_brand: same_rows
			}
			res.render('product/product-detail', vm);
		})
	})
});

module.exports = router;