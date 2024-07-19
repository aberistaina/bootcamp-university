//Mostrar y ocultar menús del navbar según si hay o no token 
let alumno = JSON.parse(localStorage.getItem("alumno"))
let linkLogout = document.getElementById("linkLogout")
let linkLogin = document.getElementById("linkLogin")
let linkAlumno = document.getElementById("linkAlumno")
let linkMiCuenta = document.getElementById("linkMiCuenta")
let linkManejador = document.getElementById("linkManejador")
let token = localStorage.getItem("token") 

if(token){
    linkLogin.style.display = "none"
    linkMiCuenta.style.display = "block"
    if(alumno.admin){
        linkAlumno.style.display = "block"
        linkManejador.style.display = "block"
    }
}else{
    linkLogout.style.display = "none"
}

//Eliminar el local storage al hacer logout


linkLogout.addEventListener("click", (event) =>{
    event.preventDefault()
    localStorage.clear()
    location.href = "/"
})


linkAlumno.addEventListener("click", (event) =>{
    event.preventDefault()
    location.href = `/alumnos/?token=${token}`
    
})

linkMiCuenta.addEventListener("click", (event) =>{
    event.preventDefault()
    location.href = `/micuenta/?token=${token}`
})

linkManejador.addEventListener("click", (event) =>{
    event.preventDefault()
    location.href = `/manejador/?token=${token}`
})