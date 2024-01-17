const express = require('express')
const cors = require('cors');
const bodyParser = require('body-parser')
const app = express()
const port = 8080

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

const userRouter = require('./router/user-router');
const { users } = require('./models');
app.use(express.static(__dirname + '/images'));
app.use('/api/users', userRouter)
app.get('/test', async function (req, res) {
    try {
        const user = await users.findAll()
        res.status(200).json(user)
    } catch (error) {
        res.status(500).json(error.message)
    }
})
app.get('/', async function (req, res) {
    res.send(__dirname)
})

app.listen(port, () => {
    console.log(`Example app listening on port http://localhost:${port}`)
})