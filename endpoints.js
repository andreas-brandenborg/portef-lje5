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


app.get('/test/:email/:password', (req, res) => {
    const email = req.params.email;
    const password = req.params.password;

    connection.query(
        `SELECT * FROM users WHERE email = ? AND password = ?`,
        [email, password],
        (error, results) => {
        res.send(results);})
})



//localhost:3000/new
app.post('/newUser', (req, res) => {
    const { email, name, password, school } = req.body;
    const query = `INSERT INTO users (email, name, password, school) VALUES (?, ?, ?, ?)`;
    connection.query(query, [email, name, password, school], (error, results) => {
        res.send(results);
    });
});


app.listen(port, () =>{
    console.log(`Application is now running on port ${port}`);
});
