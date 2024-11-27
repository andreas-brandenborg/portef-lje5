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

