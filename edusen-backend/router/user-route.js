const express = require('express')
const router = express.Router()
const userController = require('../controller/user-controller')

const multer = require("multer");

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'uploads/')
    },
    filename: function (req, file, cb) {
        cb(null, file.fieldname + '-' + Date.now() + '.jpg')
    }
});

const upload = multer({ storage: storage });

router.post('/register', upload.single('faceId'), userController.register)

module.exports = router