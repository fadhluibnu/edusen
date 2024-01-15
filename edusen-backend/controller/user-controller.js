const model = require('../models');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const User = model.User;


function generateToken(user) {
    try{
        const payload = {
            id: user.id,
            name: user.name,
            username: user.username,
            email: user.email,
            faceId: user.faceId
        }
    
        const secret = "edusenToken$123";
    
        const expired = 60*60*1
    
        const token = jwt.sign(payload, secret, { expiresIn: expired})
    
        return token;
    } catch(err) {
        return false;
    }
}

function hashPassword(password) {
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

exports.register = async (req, res) => {
    const t = await model.sequelize.transaction()
    try {
        const user = await User.create({
            name: req.body.name,
            username: req.body.username,
            email: req.body.email,
            password: await hashPassword(req.body.password),
            faceId: req.file.filename
        }, {transaction: t});

        let token = generateToken(user)

        if (user && token) {
            t.commit()
            res.status(200).json({
                status: 200,
                message: 'success',
                data: user,
                token: token
            });
        } else {
            throw new Error;
        }
    } catch (err) {
        t.rollback();
        res.status(500).json({
            status: 500,
            message: err.message,
            data: null
        });
    }
}

exports.loginWithForm  = async(req, res) => {
    try {
        const request = req.body
        const user = await User.findOne({
            where: {
                email: data.email
            }
        })

        const passCheck = await bcrypt.compareSync(request.password, user.password);

        if(user && passCheck) {
            let token = generateToken(user)
            res.status(200).json({
                status: 200,
                message: 'success',
                data: user,
                token: token
            })
        } else {
            res.status(401).json({
                status: 401,
                message: 'invalid login',
                data: null,
                token: null
            })
        }
    } catch (error) {
        res.status(500).json({
            status: 500,
            message: error.message,
            data: null,
            token: null
        })
    }
}

exports.loginWithFaceID = async (req, res) => {
    try {
        const similarity = []
        const allFaceID = await User.findAll({
            attributes: ['id', 'faceId']
        });
    } catch (error) {
        
    }
}