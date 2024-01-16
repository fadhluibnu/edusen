const MODELS = require('../models');
const users = MODELS.users;
const jwt = require('jsonwebtoken')
const bcrypt = require('bcrypt')
const {
    db
} = require('../firebase/admin')
const faceapi = require("face-api.js")
const canvas = require('canvas')
const {
    Canvas,
    Image,
} = require("canvas");
// const user = require('../models/user');
faceapi.env.monkeyPatch({
    Canvas,
    Image
})

async function generateToken(user) {
    try {
        const payload = {
            id: user.id,
            name: user.name,
            username: user.username,
            email: user.email,
            faceId: user.faceId
        }
        const secret = "edusenToken$123";
        const expired = 60 * 60 * 1
        const token = jwt.sign(payload, secret, {
            expiresIn: expired
        })
        return token;
    } catch (err) {
        return false;
    }
}

async function hashPassword(password) {
    return new Promise((resolve, reject) => {
        bcrypt.genSalt(10, (err, salt) => {
            if (err) {
                reject(err);
            }
            bcrypt.hash(password, salt, (err, hash) => {
                if (err) {
                    reject(err);
                }
                resolve(hash);
            });
        });
    });
}

async function LoadModels() {
    await faceapi.nets.faceRecognitionNet.loadFromDisk("./face_recognition/models");
    await faceapi.nets.faceLandmark68Net.loadFromDisk("./face_recognition/models");
    await faceapi.nets.ssdMobilenetv1.loadFromDisk("./face_recognition/models");
}
async function uploadLabeledImages(images, label) {
    try {
        await LoadModels();
        const img = await canvas.loadImage(images);
        const descriptions = await faceapi.detectSingleFace(img).withFaceLandmarks().withFaceDescriptor();
        const docId = await db.collection('FaceID').doc().id
        await db.collection('FaceID').doc(docId).set({
            label: label,
            descriptions: Array.from(descriptions.descriptor)
        });
        return docId;
        // const float32 = new Float32Array(Object.values(descriptions.descriptor))
        // return new faceapi.LabeledFaceDescriptors(`${label}`, [float32]);
    } catch (error) {
        console.log(error.message)
        return false;
    }
}
exports.registrasi = async (req, res) => {
    const t = await MODELS.sequelize.transaction()
    try {
        let faceStore = await uploadLabeledImages("./images/" + req.file.filename, req.body.email)
        if (faceStore) {
            const user = await users.create({
                name: req.body.name,
                email: req.body.email,
                password: await hashPassword(req.body.password),
                faceID: faceStore
            }, {
                transaction: t
            });

            let token = await generateToken(user)

            if (user && token) {
                t.commit()
                res.status(200).json({
                    status: 200,
                    message: 'success',
                    data: user,
                    token: token
                });
            } else {
                throw new Error
            }
        } else {
            throw new Error
        }

    } catch (err) {
        await db.collection("FaceID").doc(req.body.email).delete();
        t.rollback();
        res.status(500).json({
            status: 500,
            message: err.message,
            data: null
        });
    }
}

exports.loginWithFaceID = async (req, res) => {
    try {
        await LoadModels();

        let FaceID = await db.collection('FaceID').get().then((snapshot) => {
            const data = snapshot.docs.map((doc) => ({
                ...doc.data(),
            }));
            return data
        })

        for (let i = 0; i < FaceID.length; i++) {
            let descriptions = FaceID[i].descriptions;

            let Float32 = {}
            for (let x = 0; x < descriptions.length; x++) {
                const element = descriptions[x];
                Float32[`${x}`] = element
            }
            // FaceID[i].descriptions = Float32
            FaceID[i] = new faceapi.LabeledFaceDescriptors(`${FaceID[i].label}`, [new Float32Array(Object.values(descriptions))])
        }

        const faceMatcher = new faceapi.FaceMatcher(FaceID, 0.6);
        const img = await canvas.loadImage("./images/" + req.file.filename);
        let temp = faceapi.createCanvasFromMedia(img);

        // Process the image for the model
        const displaySize = {
            width: img.width,
            height: img.height
        };
        faceapi.matchDimensions(temp, displaySize);

        const detections = await faceapi.detectAllFaces(img).withFaceLandmarks().withFaceDescriptors();
        const resizedDetections = await faceapi.resizeResults(detections, displaySize);
        // console.log(resizedDetections);
        const results = await resizedDetections.map((d) => faceMatcher.findBestMatch(d.descriptor));


        const UserData = await users.findOne({
            where: {
                email: results[0].label
            }
        })

        res.status(200).json({
            status: 200,
            message: 'success',
            data: UserData,
            token: await generateToken(UserData)
        });
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: error.message,
            data: null,
            token: null
        })
    }
}