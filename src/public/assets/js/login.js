//Lógica para login 

let formRegistradoLogin = document.getElementById("formRegistradoLogin")

formRegistradoLogin.addEventListener("submit", async(event) =>{
    event.preventDefault(event)

    let raw = new FormData(formRegistradoLogin)

    var requestOptions = {
    method: 'POST',
    body: raw,
    };

    let response = await fetch("http://localhost:3000/api/v1/alumnos/login", requestOptions)
    let data = await response.json()
    if (data.code === 200) {
        alert(data.message)
        location.href = "/"
        localStorage.setItem("token", data.token)
        localStorage.setItem("alumno", JSON.stringify(data.alumno))
        
    } else{
        alert(data.message)
    }

})




//Crear Alumno

let formCreateLogin = document.getElementById("formCreateLogin")

formCreateLogin.addEventListener("submit", async(event)=>{
    event.preventDefault()

    let raw = new FormData(formCreateLogin)

    var requestOptions = {
    method: 'POST',
    body: raw,
    };

    if(raw.get("password") != raw.get("confirmPassword")){
        document.getElementById("passwordLogin2").innerHTML = `Contraseña <p style="color: red;">Las contraseñas no coinciden</p>`
        return 
    }

    let response = await fetch("http://localhost:3000/api/v1/alumnos", requestOptions)
    let data = await response.json()
    if (data.code === 201) {
        alert(data.message)
        location.reload()
        formCreate.reset()
    }
    else if(data.code === 409){
        alert(data.message)
    }
    else{
        alert(data.message)
    }
})



