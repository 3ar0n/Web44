module.exports = (req, res, next) => {
    if (req.session == null) {
        res.redirect('/account/signin');
    } else {
        if (req.session.user == null) {
            res.redirect('/account/signin');
        } else {
            if (req.session.user.isAdmin === 0) {
                res.redirect('/account/signin');
            } else {
                next();
            }
        }
    }
}