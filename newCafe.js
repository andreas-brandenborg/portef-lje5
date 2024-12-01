const selectCafeName = document.querySelector("#cafeName")
const selectCafePrice = document.querySelector("#pris")
const selectCafeSize = document.querySelector("#cafeStørrelse")
const selectCafeMusic = document.querySelector("#cafeMusic")
const selectCafeWifi = document.querySelector("#cafeWifi")
const selectCafeDiscount = document.querySelector("#cafeDiscountCreate")
const selectCreateCafe = document.querySelector("#createCafé")


selectCreateCafe.addEventListener("click", () => {
    console.log("hej hej hej")
    const cafeName = selectCafeName.value
    const cafePrice = selectCafePrice.value
    const cafeSize = selectCafeSize.value
    const cafeWifi = selectCafeWifi.value
    const cafeMusic = selectCafeMusic.value
    const cafeDiscount = selectCafeDiscount.value

    fetch(`http://localhost:3000/newCafe`, {
        method: "post",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            name: cafeName,
            price: cafePrice,
            size: cafeSize,
            music: cafeMusic,
            wifi: cafeWifi,
            student_discount: cafeDiscount
        })
    })
        .then(response => response.json())
        .then(data => {
            console.log("Cafe created successfully:", data);
            alert("Cafe created successfully!");
        })
        .catch(error => {
            console.error("Error:", error);
            alert("Failed to create cafe. Please try again.");
        })
})


