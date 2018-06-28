module.exports = (req, res, next) => {
    if (req.session.user === null) {
        res.render('error/index');
    } else {
        if (req.session.user.isAdmin === 0) {
            res.render('error/index');
        } else {
            next();
        }
    }
}