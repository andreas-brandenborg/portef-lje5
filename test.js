
const createUserElement = document.querySelector("#createU")
const createEmailElement = document.querySelector("#uName")
const createPasswordElement = document.querySelector("#passW")
const createNameElement = document.querySelector("#realName")
const createSchoolElement = document.querySelector("#schoolName")



createUserElement.addEventListener("click", () => {
    console.log("hej hej hej")
    const email = createEmailElement.value
    const password = createPasswordElement.value
    const name = createNameElement.value
    const school = createSchoolElement.value

    console.log(email)


    fetch(`http://localhost:3000/newUser`, {
        method: "post",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            email: email,
            password: password,
            name: name,
            school: school
        })
    })
        .then(response => response.json())
        .then(data => {
            console.log("User created successfully:", data);
            alert("User created successfully!");
        })
        .catch(error => {
            console.error("Error:", error);
            alert("Failed to create user. Please try again.");
        })


})