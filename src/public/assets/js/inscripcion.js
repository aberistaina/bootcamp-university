
//Crear Alumno

let formCreate = document.getElementById("formCreate")


formCreate.addEventListener("submit", async(event)=>{
    event.preventDefault()



    let raw = new FormData(formCreate)

    var requestOptions = {
    method: 'POST',
    body: raw,
    };

    if(raw.get("password") != raw.get("confirmPassword")){
        document.getElementById("password2").innerHTML = `Contraseña <p style="color: red;">Las contraseñas no coinciden</p>`
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

//Login
let formRegistrado = document.getElementById("formRegistrado")

formRegistrado.addEventListener("submit", async(event) =>{
    event.preventDefault(event)

    let raw = new FormData(formRegistrado)

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
        
    }else if(data.code === 201){
        alert(data.message)
        location.href = "/"
        localStorage.setItem("token", data.token)
        localStorage.setItem("alumno", JSON.stringify(data.alumno))
    }else{
        alert(data.message)
    }

})


// Lógica para que al hacer click en un curso, este aparezca ya seleccionado en el Modal de inscripción
let card = document.querySelector("#card")
let options = document.querySelectorAll("option")

card.addEventListener("click", (event) =>{
    let elemento = event.target
    let id = elemento.dataset.id
    options.forEach(option => {
        if (option.value === id) {
            option.selected = true;
        } 
    })
} )


//Abrir el modal al hacer click si no existe token

document.addEventListener('DOMContentLoaded', function() {

    let token = localStorage.getItem("token");
    if (!token) {
        let botones = document.getElementsByClassName("botonesModal")
        let botonesModal = [...botones]
        botonesModal.forEach(boton => {
            boton.setAttribute("data-bs-toggle", "modal");
            boton.setAttribute("data-bs-target", "#createUser");
        });
        
    }

})

//Inscribirse en el curso si hay token
let botones = document.getElementsByClassName("botonesModal")
let botonesModal = [...botones]

if(token){
    botonesModal.forEach(boton => {
        boton.addEventListener("click", async(event) =>{
            event.preventDefault()
            let elemento = event.target
            let id = elemento.dataset.id
            let nombreCurso = elemento.dataset.nombre
            let alumno = JSON.parse(localStorage.getItem("alumno"))
            let confirmacion = confirm(`Estás seguro que deseas inscribirte en el curso de ${nombreCurso}`)

            var myHeaders = new Headers()
            myHeaders.append(
                "Authorization",
                `Bearer ${token}`
            )

            if(confirmacion){
                let response = await fetch(`http://localhost:3000/api/v1/alumnos/registerCurso/${alumno.email}/${id}`, {method: "post", headers: myHeaders})
                let data = await response.json()
                if (data.code === 201) {
                    alert(data.message)
                    location.reload()
                    formCreate.reset()
                }
                else{
                    alert(data.message)
                }
            }
        })
    
}); 
}

