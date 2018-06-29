const productModel = require('../models/productModel');

module.exports = (req, res, next) => {

	if (req.session.isLogged === null) {
		req.session.isLogged = false;
    } else {
        if (req.session.isLogged === true) {
            if (req.session.user.fullName === null) {
                var userName = 'user';
            } else {
                var userName = req.session.user.fullName;
            }
        }
    }

    res.locals.layoutVM = {
        isLogged: req.session.isLogged,
        curUser: req.session.user,
        username: userName
    };

    productModel.loadBrand().then(rows => {
        res.locals.layoutVM.brand = rows;
    });
    productModel.loadCategories().then(rows => {
        res.locals.layoutVM.cat = rows;
    });
    next();
};