const express = require('express');
var productModel = require('../models/productModel');
const router = express.Router();

router.get('/', (req, res) => {
    productModel.loadAll().then(rows => {
        var vm = {
            newest: rows,
            bestseller: rows,
            mostview: rows
        };
        res.render('home/index', vm);
    });
});

module.exports = router;