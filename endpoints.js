const cors = require("cors");
const mysql = require("mysql2");
const express = require("express");

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

const connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password: process.env.psw,
    database:"cafe_copenhagen"
});

//localhost:4000/
app.get('/all',(req,res)=>{
    const queryParameter = req.query.type;
    const q = "SELECT * FROM pokemon";
    connection.query(q, (error, results)=>{
        res.send(results);
    })
});

//localhost:3000/new
app.post('/new',(req,res)=>{
    const name = req.body.name;
    const primary = req.body.primary;
    const q = `insert into pokemon (name, primary_type) values("${name}", "${primary}");`;
    connection.query(q, (error, results)=>{
        res.send(results);
    })
});