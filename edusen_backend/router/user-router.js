const userController = require("../controller/user-controller")
const router = require('express').Router()
const multer = require("multer");

const multerMid = multer({
    storage: multer.memoryStorage(),
})

// router.post('/uploads', multerMid.single('faceID'), async (req, res, next) => {
//     try {
//         const myFile = req.file
//         const imageUrl = await uploadImage(myFile)

//         res
//             .status(200)
//             .json({
//                 message: "Upload was successful",
//                 data: imageUrl
//             })
//     } catch (error) {
//         res.status(500).json(error.message)
//     }
// })


router.post('/register', multerMid.single('faceID'), userController.registrasi)
router.post('/login-with-face-id', multerMid.single('faceID'), userController.loginWithFaceID)

module.exports = router