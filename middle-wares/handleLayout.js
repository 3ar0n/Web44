module.exports = (req, res, next) => {

	if (req.session.isLogged === undefined) {
		req.session.isLogged = false;
    }

    if (req.session.isLogged === true) {
        if (req.session.user.fullName === null) {
            var userName = 'user';
        } else {
            var userName = req.session.user.fullName;
        }
    }
    

    res.locals.layoutVM = {
        isLogged: req.session.isLogged,
        curUser: req.session.user,
        username: userName
    };

    next();
};