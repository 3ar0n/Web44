const express = require('express');
const accountModel = require('../models/accountModel');
const brandModel = require('../models/brandModel');
const cartModel = require('../models/cartModel');
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
    cartModel.loadAllSum().then (Sums => {
        var vm = {
            carts: Sums
        }
        res.render('admin/cart-index', vm);
    }).catch(err => {
        console.log(err);
        res.end('fail');
    })
});

router.get('/cart/view', (req, res) => {
    var id = req.query.id;
    cartModel.loadDetail(id).then (rows => {
        var i = 0, sum = 0;
        for (i = 0; i < rows.length; i++) {
            sum += rows[i].price * rows[i].quantity;
        }
        var vm = {
            cartID: id,
            sum: sum,
            detail: rows
        }
        res.render('admin/cart-detail', vm);
    }).catch(err => {
        console.log(err);
        res.end('fail');
    })
});

module.exports = router;