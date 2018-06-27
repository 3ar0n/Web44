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
    accountModel.login(user).then (rows => {
        if (rows.length > 0) {
            //console.log('success');
            req.session.isLogged = true;
            req.session.user = rows[0];

            if (req.session.user.isAdmin === 1) {
                res.redirect('/admin');
            } else {
                res.redirect('/');
            }
        }
        else {
            //console.log('fail');
            var vm = {
                fail:true
            }
            res.render('account/signin', vm);
        }
    })
});

router.post('/logout', (req, res) => {
    req.session.isLogged = false;
    req.session.user = null;
    res.redirect('/');
});

module.exports = router;