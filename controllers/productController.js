const express = require('express');
//var productInformation = require('../models/productInformation');
var productModel = require('../models/productModel');
const router = express.Router();

router.get('/:proID', (req,res) => {
	var proID = req.params.proID;
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
	// productInformation.loadAll().then(pi_rows => {
	// 	productModel.loadInformation().then(pm_rows => {
	// 		var vm = {
	// 			information: pi_rows,
	// 			model: pm_rows
	// 		}
	// 		res.render('product/product-information', vm);
	// 	})
	// })
})

module.exports = router;