console.log("SkyNet initiated");

let cafesArray = []; // Declare the array at the top
const latlng = [];

// Initialize the map
var map = L.map('map').setView([55.67, 12.58], 12);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

// Fetch the data and populate the cafesArray
fetch("http://localhost:3000/")
    .then(response => response.json())
    .then(Cafe_copenhagenData => {
        const outPutElement = document.querySelector("#output");
        outPutElement.textContent = "";
        cafesArray = Cafe_copenhagenData; // Assign the fetched data to cafesArray

        // Loop through the cafesArray and add markers to the map
        cafesArray.forEach(function(sighting) {
            const lat = sighting.lat;
            const lng = sighting.lng;
            const size = sighting.size;
            const price = sighting.price;
            const wifi = sighting.wifi;
            const discount = sighting.student_discount;
            const music = sighting.music;

            // Create a list item for each cafe
            const li = document.createElement("li");
            li.textContent = `${sighting.name}, ${size}, ${price}`;
            outPutElement.appendChild(li);

            // Add a marker to the map
            L.marker([lat, lng]).addTo(map).bindPopup(`<b>${sighting.name}</b> <br> Størrelse: ${size} <br> Pris: ${price} <br> Wifi: ${wifi} <br> Studierabat: ${discount} <br> Musik: ${music}`);
        });

    })
    .catch(error => {
        console.error("Fetch error:", error);
    });

console.log("Map initialized");
