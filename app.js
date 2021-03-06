const express = require('express');
const exphbs = require('express-handlebars');
const express_handlebars_sections = require('express-handlebars-sections');
const bodyParser = require('body-parser');
const session = require('express-session');
const MySQLStore = require('express-mysql-session')(session);
const wnumb = require('wnumb');

// Controllers
const homeController = require('./controllers/homeController');  // example
const productController = require('./controllers/productController');
const accountController = require('./controllers/accountController');
const adminController = require('./controllers/adminController');
const cartController = require('./controllers/cartController');

// Middle-wares
const handle404 = require('./middle-wares/handle404'),
      handleLayout = require('./middle-wares/handleLayout'),
      restrict = require('./middle-wares/restrict'),
      restrictAdmin = require('./middle-wares/restrictAdmin');

const app = express();
const port = 3000;

app.engine('hbs', exphbs({
    defaultLayout: 'main',
    layoutsDir: 'views/_layouts/',
    helpers: {
        section: express_handlebars_sections(),
        number_format: n => {
            var nf = wnumb({
                thousand: '.'
            });
            return nf.to(n);
        },
        date_format: d => {
            var day = new Date(d);
            var str = day.getFullYear() + '-' + (day.getMonth() + 1) + '-' + day.getDate();
            return str;
        }
    }
}));
app.set('view engine', 'hbs');

app.use(express.static('public'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: false
}));

// Config session
var sessionStore = new MySQLStore({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'web44',
    createDatabaseTable: true,
    schema: {
        tableName: 'sessions',
        columnNames: {
            session_id: 'session_id',
            expires: 'expires',
            data: 'data'
        }
    }
});

app.use(session({
    key: 'session_cookie_name',
    secret: 'session_cookie_secret',
    store: sessionStore,
    resave: false,
    saveUninitialized: false
}));

app.use(handleLayout);

// -----------

app.get('/home', (req, res) => {
    res.redirect('/');
});

app.use('/', homeController);
app.use('/product', productController);
app.use('/account', accountController);
app.use('/admin', restrictAdmin, adminController);
app.use('/cart', cartController)

app.use(handle404);

app.listen(port, () => {
    console.log("Running on port " + port);
});