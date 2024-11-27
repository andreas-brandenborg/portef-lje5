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
    console.log(sighting, lat, lng);

    L.marker([lat, lng]).addTo(map).bindPopup(`<b>${sighting.name}</b> <br> Størrelse:${sighting.size} <br> Pris:${sighting.price} <br> Wifi:${sighting.wifi} <br> Studierabat:${sighting.student_discount} <br> Musik:${sighting.music}`);
});

console.log("Map initialized");

