const cors = require("cors");
const mysql = require("mysql2");
const express = require("express");

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: process.env.DBPASSWORD,
    database: "cafe_copenhagen"
});



app.get('/filter/:size/:price/:wifi/:discount/:music',(req, res) =>{
    connection.query(`SELECT * FROM cafeer WHERE size = ${req.params.size} AND price = ${req.params.price} AND wifi = ${req.params.wifi} AND student_discount = ${req.params.discount} AND music = ${req.params.music}`,(error, results) =>{
        res.send(results);
    } )
})


//localhost:3000/new
app.post('/newUser', (req, res) => {
    const email = req.body.email
    const name = req.body.name
    const password = req.body.password
    const school = req.body.school
    const query = `INSERT INTO users (email, name, password, school) VALUES ("${email}", "${name}", "${password}", "${school}")`;
    connection.query(query, (error, results) => {
        res.send(results);
    });
});

//localhost:3000/newCafe

app.post('/newCafe', (req, res) => {
    const name = req.body.name
    const price = req.body.price
    const size = req.body.size
    const wifi = req.body.wifi
    const lat = req.body.lat
    const lng = req.body.lng

    const student_discount = req.body.student_discount
    const query = `INSERT INTO cafeer (name, price, size, wifi, music, student_discount, lat, lng) VALUES ("${name}", ${price}, ${size}, ${wifi}, ${student_discount}, ${lat} , ${lng})`;
    connection.query(query, (error, results) => {
        res.send(results);
});
});




app.listen(port, () => {
    console.log(`Application is now running on port ${port}`);
})
