const express = require('express');
const cartModel = require('../models/cartModel');
const router = express.Router();

router.get('/', (req, res) => {
    res.render('cart/cart');
});

module.exports = router;