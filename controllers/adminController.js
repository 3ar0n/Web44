const express = require('express');
const accountModel = require('../models/accountModel');
const brandModel = require('../models/brandModel');
const categoryModel = require('../models/categoryModel');
const productModel = require('../models/productModel');
const router = express.Router();

router.get('/', (req, res) => {
    res.redirect('/admin/user');
});

router.get('/user', (req, res) => {
    accountModel.loadUsers().then (rows => {
        var vm = {
            users: rows
        };
        res.render('admin/users-index', vm);
    }).catch(err => {
        res.end('fail');
    });
});

router.get('/category', (req, res) => {
    categoryModel.loadAll().then (rows => {
        var vm = {
            categories: rows
        };
        res.render('admin/category-index', vm);
    }).catch(err => {
        res.end('fail');
    });
});

router.get('/brand', (req, res) => {
    brandModel.loadAll().then (rows => {
        var vm = {
            brands: rows
        };
        res.render('admin/brand-index', vm);
    }).catch(err => {
        res.end('fail');
    });
});

router.get('/product', (req, res) => {
    productModel.loadAll().then (rows => {
        var vm = {
            products: rows
        };
        res.render('admin/product-index', vm);
    }).catch(err => {
        res.end('fail');
    });
});

router.get('/cart', (req, res) => {
    res.render('admin/cart-index');
});

module.exports = router;