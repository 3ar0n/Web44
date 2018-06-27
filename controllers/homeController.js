const express = require('express');
const productModel = require('../models/productModel');
const brandModel = require('../models/brandModel');
const router = express.Router();

router.get('/', (req, res) => {
    brandModel.loadAll().then(b_rows => {
        productModel.loadNewest().then(newest_rows => {
            productModel.loadBestseller().then(bestsell_rows => {
                productModel.loadMostview().then(view_rows => {
                    var vm = {
                        Category: b_rows,
                        newest: newest_rows,
                        bestseller: bestsell_rows,
                        mostview: view_rows
                    };
                    res.render('home/index', vm);
                })
            })
        })
    });
});

module.exports = router;