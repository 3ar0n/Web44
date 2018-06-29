const express = require('express');
const accountModel = require('../models/accountModel');
const restrict = require('../middle-wares/restrict');
const router = express.Router();

router.get('/', restrict, (req, res) => {
    res.render('account/profile');
    /*accountModel.load(res.locals.layoutVM.curUser).then(rows => {
        req.session.user = rows[0];
        var vm = {
            User: rows[0]
        };
        res.render('account/frofile');
    });*/
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

router.post('/logout', (req, res) => {
    req.session.isLogged = false;
    req.session.user = null;
    res.redirect('/');
});

module.exports = router;