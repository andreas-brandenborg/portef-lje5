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
    const size=sighting.size;
    const price=sighting.price;
    const wifi=sighting.wifi;
    const discount=sighting.student_discount;
    const music=sighting.music
    L.marker([lat, lng]).addTo(map).bindPopup(`<b>${sighting.name}</b> <br> Størrelse:${sighting.size} <br> Pris:${sighting.price} <br> Wifi:${sighting.wifi} <br> Studierabat:${sighting.student_discount} <br> Musik:${sighting.music}`);
});

function pushCafeToArray (data) {
    Cafe_copenhagenData
}

fetch("http://localhost:3000/")
    .then(response => response.json())
    .then(Cafe_copenhagenData => {
        const outPutElement = document.querySelector("#output")
        outPutElement.innerHTML = ""
        for(let i=0; i < Cafe_copenhagenData.length; i++){
            const cafe = Cafe_copenhagenData[i];
            const li = document.createElement("li")
            li.innerText = `${cafe.name}, ${cafe.size}, ${cafe.price}`
            outPutElement.appendChild(li)
        }
    })

console.log("Map initialized");

