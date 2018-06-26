const express = require('express');
var productInformation = require('../models/productInformation');
var productModel = require('../models/productModel');
const router = express.Router();

router.get('/', function(req,res){
	productInformation.loadAll().then(pi_rows => {
		productModel.loadInformation().then(pm_rows => {
			var vm = {
				information: pi_rows,
				model: pm_rows
			}
			res.render('product/product-information', vm);
		})
	})
})

module.exports = router;