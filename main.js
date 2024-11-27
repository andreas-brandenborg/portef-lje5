console.log("SkyNet initiated")

const cafesArray= cafes.Sheet1;
const latlng = [];


var map = L.map('map').setView([55.67,12.58], 12);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

cafesArray.forEach(function(sighting) {
    const lat = sighting.lat;
    const lng = sighting.lng;
    console.log(sighting, lat, lng);

    L.marker([lat, lng]).addTo(map).bindPopup(`<b>${sighting.name}</b> <br> Størrelse: <br> Pris: <br> Wifi: <br> Studierabat: <br> Musik:`);
});

console.log("Map initialized");

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
    database:"pokemon"
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