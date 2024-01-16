const userController = require("../controller/user-controller")
const router = require('express').Router()
const multer = require("multer");

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'images/')
    },
    filename: function (req, file, cb) {
        cb(null, file.fieldname + '-' + Date.now() + '.jpg')
    }
});

const upload = multer({ storage: storage });

router.post('/register', upload.single('faceID'), userController.registrasi)
router.post('/login-with-face-id', upload.single('faceID'), userController.loginWithFaceID)

module.exports = router