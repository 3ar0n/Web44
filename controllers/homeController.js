const express = require('express');
const productModel = require('../models/productModel');
const brandModel = require('../models/brandModel');
const router = express.Router();

router.get('/', (req, res) => {
    brandModel.loadAll().then(b_rows => {
        productModel.loadNewest().then(newest_rows => {
            productModel.loadBestseller().then(bestsell_rows => {
                productModel.loadMostview().then(view_rows => {
                    var vm = {
                        Category: b_rows,
                        newest: newest_rows,
                        bestseller: bestsell_rows,
                        mostview: view_rows
                    };
                    res.render('home/index', vm);
                })
            })
        })
    });
});

router.get('/view', (req, res) => {
    var catID = req.query.cat;
    var brandID = req.query.brand;
    if (brandID == -1) {
        productModel.loadByCat(catID).then(rows => {
            var vm = {
                cat: res.locals.layoutVM.cat[catID].catName,
                product: rows
            }
            res.render('home/byBrandCat', vm);
        })
    } else {
        if (catID == -1) {
            productModel.loadByBrand(brandID).then(rows => {
                var vm = {
                    brand: res.locals.layoutVM.brand[brandID].brandName,
                    product: rows
                }
                res.render('home/byBrandCat', vm);
            })
        } else {
            productModel.loadByBrandCat(brandID, catID).then(rows => {
                var vm = {
                    brand: res.locals.layoutVM.brand[brandID].brandName,
                    cat: res.locals.layoutVM.cat[catID].catName,
                    product: rows
                }
                res.render('home/byBrandCat', vm);
            })
        }
    }
});

module.exports = router;