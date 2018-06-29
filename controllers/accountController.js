const express = require('express');
const accountModel = require('../models/accountModel');
const cartModel = require('../models/cartModel');
const restrict = require('../middle-wares/restrict');
const router = express.Router();

router.get('/', restrict, (req, res) => {
    accountModel.load(res.locals.layoutVM.curUser).then(rows => {
        req.session.user = rows[0];
        cartModel.loadAllSum().then(carts => {
            var vm = {
                User: rows[0],
                Carts: carts
            };
            res.render('account/profile', vm);
        })
        
        
    });
})

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
            res.render('account/signin');
        }
    })
});

router.post('/signup', (req, res) => {
    var email = req.body.email;
    accountModel.checkEmail(email).then (result => {
        if (result.length > 0) {
            res.render('account/signup');
        } else {
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
                console.log(err);
                res.end('fail');
            });
        }
    }).catch(err => {
        console.log(err);
        res.end('fail');
    })
});

router.post('/', restrict, (req, res) => {
    if (req.body.password_new == '') {
        //console.log('thanh cong');
        var user = {
            email: req.session.user.email,
            password: req.session.user.password,
            fullName: req.body.fullName,
            phone: req.body.phone,
            address: req.body.address
        };
        accountModel.update(user).then(value => {
            res.redirect('/account');
        }).catch(err => {
            console.log(err);
            res.end('fail');
        });
    } else {
        if (req.body.password_new === req.body.password_rep) {
            //console.log('doi mat khau');
            var user = {
                email: req.session.user.email,
                password: req.body.password_new,
                fullName: req.body.fullName,
                phone: req.body.phone,
                address: req.body.address
            };
            accountModel.update(user).then(value => {
                res.redirect('/account');
            }).catch(err => {
                console.log(err);
                res.end('fail');
            });
        } else {
            //console.log('that bai');
            res.redirect('/account');
        };
    };
});

router.post('/logout', (req, res) => {
    req.session.isLogged = false;
    req.session.user = null;
    res.redirect('/');
});

module.exports = router;