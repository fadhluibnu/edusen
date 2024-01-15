const express = require('express')
const cors = require('cors');
const bodyParser = require('body-parser')
const app = express()
const port = 5000
const userRouter = require('./router/user-route');

// app.use(cors());
// app.use(express.json());
// app.use(express.urlencoded({ extended: true }));


app.use('/api/users', userRouter);

app.use(bodyParser.json());
const db = require('./models');
db.sequelize.sync().then(() => {
  app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
  })
})


// app.listen(port, () => {
//   console.log(`Example app listening on port ${port}`)
// })