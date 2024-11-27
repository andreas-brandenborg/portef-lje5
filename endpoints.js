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

const størrelse =

//localhost:4000/
app.get('/',(req, res) =>{
    connection.query('SELECT * FROM cafeer',(error, results) =>{
        res.send(results);
    } )
})

//localhost:3000/new
app.post('/new',(req,res)=>{
    const name = req.body.name;
    const primary = req.body.primary;
    const q = `insert into pokemon (name, primary_type) values("${name}", "${primary}");`;
    connection.query(q, (error, results)=>{
        res.send(results);
    })
});

app.listen(port, () =>{
    console.log(`Application is now running on port ${port}`);
});
