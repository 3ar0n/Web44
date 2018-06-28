const express = require('express');
const accountModel = require('../models/accountModel');
const router = express.Router();

router.get('/signin', (req, res) => {
    res.render('account/signin');
});

router.get('/signup', (req, res) => {
    res.render('account/signup');
});

router.post('/signin', (req, res) => {
    var user = {
        email: req.body.email,
        password: req.body.password
    }
    accountModel.signin(user).then (rows => {
        if (rows.length > 0) {
            req.session.isLogged = true;
            req.session.user = rows[0];

            if (req.session.user.isAdmin === 1) {
                res.redirect('/admin');
            } else {
                res.redirect('/');
            }
        }
        else {
            alert("Đăng nhập thất bại");
            res.render('account/signin');
        }
    })
});

router.post('/signup', (req, res) => {
    var user = {
        email: req.body.email,
        password: req.body.password,
        fullName: req.body.fullName,
        phone: req.body.phone,
        address: req.body.address,
        isAdmin: 0
    }
    accountModel.addUser(user).then (rows => {
        res.redirect('/account/signin');
    }).catch(err => {
        res.end('fail');
    });
});

router.post('/logout', (req, res) => {
    req.session.isLogged = false;
    req.session.user = null;
    res.redirect('/');
});

module.exports = router;