const express = require('express')
const cors = require('cors');
const bodyParser = require('body-parser')
// const fileUpload = require('express-fileupload')
const app = express()
const port = 5000

app.use(cors());
app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({
//     extended: true
// }));
// app.use(fileUpload({
//     useTempFiles: true,
// }));

// router
const userRouter = require('./router/user-router')
app.use('/api/users', userRouter)

// listen
app.listen(port, () => {
    console.log(`Example app listening on port http://localhost:${port}`)
})