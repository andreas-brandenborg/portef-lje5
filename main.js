console.log("SkyNet initiated");

let cafesArray = []; // Declare the array at the top
const latlng = [];

// Initialize the map
let map = L.map('map').setView([55.67, 12.58], 12);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

// Function to reset the map er chatGTP
function resetMap() {
    // Clear all layers from the map
    map.eachLayer(function (layer) {
        if (layer instanceof L.TileLayer) {
            return; // Keep the tile layer
        }
        map.removeLayer(layer);
    })
}

const sizeElement = document.querySelector("#størrelse");
const priceElement = document.querySelector("#pris");
const wifiElement = document.querySelector("#wifi");
const studentElement = document.querySelector("#studierabat");
const musicElement = document.querySelector("#musik");
const searchElement = document.querySelector("#search");





searchElement.addEventListener("click", () => {
    const size = sizeElement.value
    const price = priceElement.value
    const wifi = wifiElement.value
    const student = studentElement.value
    const music = musicElement.value

    fetch(`http://localhost:3000/filter/${size}/${price}/${wifi}/${student}/${music}`)
        .then(response => response.json())
        .then(Cafe_copenhagenData => {
            console.log(Cafe_copenhagenData)
            const outPutElement = document.querySelector("#output");

            //Resets OutputElement and Map
            outPutElement.textContent = "";
            resetMap()

            // Assign the fetched data to cafesArray
            cafesArray = Cafe_copenhagenData;

            // Loop through the cafesArray and add markers to the map
            cafesArray.forEach(function(sighting) {
                const lat = sighting.lat;
                const lng = sighting.lng;
                const size = sighting.size;
                const price = sighting.price;
                const wifi = sighting.wifi;
                const discount = sighting.student_discount;
                const music = sighting.music;

                // Creates li element for each cafe
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
})