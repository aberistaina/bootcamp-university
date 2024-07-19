const cargarTabla = (alumnos = []) =>{

    let tablaManejador = document.getElementById("tablaManejador")
    tablaManejador.innerHTML = ""
    alumnos.forEach(alumno => {
        if(alumno.admin == true){
            alumno.admin = '<i class="bi bi-check-circle fs-4 text-success"></i>'
        }else{
            alumno.admin = '<i class="bi bi-x-circle fs-4 text-danger"></i>'
        }
        tablaManejador.innerHTML += `
            <tr>
            <th scope="row">${alumno.id}</th>
            <td>${alumno.nombre}</td>
            <td>${alumno.apellido}</td>
            <td>${alumno.email}</td>
            <td>${alumno.admin}</td>
            <td><button class="btn btn-success modificar" data-bs-toggle="modal" data-bs-target="#updateModal" data-nombre="${alumno.nombre}" data-apellido="${alumno.apellido}" data-email= "${alumno.email}" data-id="${alumno.id}"><i class="bi bi-pencil-square"></i> Modificar</button></td>
            <td><button class="btn btn-danger botonEliminar" data-id="${alumno.id}"><i class="bi bi-trash-fill"></i> Eliminar</button></td>
            </tr>
    `    
    });
}

const obtenerDatos = async () => {
    try {
        let response = await fetch(`/api/v1/alumnos?token=${token}`)
        let data = await response.json()
        let alumnos = data.data
        if(data.code == 200){
            cargarTabla(alumnos)
        } 
    } catch (error) {
        alert("Error al obtener la data de usuarios."); 
    }
}

obtenerDatos()

let filtrosForm = document.getElementById("filtrosForm")

filtrosForm.addEventListener("submit", async(event) =>{
    event.preventDefault()
    try{
        
        let data = new FormData(filtrosForm)

        const myHeaders = new Headers()
        myHeaders.append(
            "Authorization",
            `Bearer ${token}`
        )

        let administrador

        if(data.get("admin") != "on"){
            administrador = false
        }else{
            administrador = true
        }
    
        let pathUrl = `/api/v1/alumnos/manejador?nombre=${data.get("nombre")}&email=${data.get("email")}&admin=${administrador}& `

        let response = await fetch(pathUrl, {method: "GET", headers: myHeaders})
        let result = await response.json()

        if(result.code == 200){
            cargarTabla(result.data)
        }else{
            alert(result.message)
        }
    }
    catch(error){
        alert("Error al obtener la data de usuarios.");  

    }
})

//Petición Fetch para eliminar a un alumno de la base de datos

let tbody = document.querySelector("tbody")

tbody.addEventListener("click", async(event)=>{
    let elemento = event.target

    try {
        if(elemento.classList.contains("botonEliminar")){
            let id = elemento.dataset.id
            let confirmacion = confirm("¿Deseas eliminar a este usuario?")
            if(confirmacion){

                var myHeaders = new Headers()
                myHeaders.append(
                    "Authorization",
                    `Bearer ${token}`
                )
                let response = await fetch(`http://localhost:3000/api/v1/alumnos/${id}`, {method: "delete", headers: myHeaders})
                let data = await response.json()
                if (data.code === 200) {
                    alert(data.message)
                    location.reload()
                }
                else{
                    alert(data.message)
                }
            }
        }        
    } catch (error) {
        alert("Ha Ocurrido Un Error, Inténtelo Nuevamente")
    }

})

//Logica para  cargar datos del alumno en el modal para modificar al alumno

tbody.addEventListener("click", async(event)=>{
    
    let elemento = event.target

    try {
        if(elemento.classList.contains("modificar")){
            let idModal = document.getElementById("updateId")
            let nombreModal = document.getElementById("updateNombre")
            let apellidoModal = document.getElementById("updateApellido")
            let emailModal = document.getElementById("updateEmail")

            let id = elemento.dataset.id
            let nombre = elemento.dataset.nombre
            let apellido = elemento.dataset.apellido
            let email = elemento.dataset.email

            idModal.value = id
            nombreModal.value = nombre
            apellidoModal.value = apellido
            emailModal.value = email

        }      
    } catch (error) {
        alert("Ha Ocurrido Un Error, Inténtelo Nuevamente")
    }

})

//Petición fetch para hacer un update del alumno
let updateForm = document.getElementById("updateForm")

updateForm.addEventListener("submit", async(event) =>{
    event.preventDefault()

    try {
        let idModal = document.getElementById("updateId").value

        var myHeaders = new Headers()
        myHeaders.append(
            "Authorization",
            `Bearer ${token}`
        )
    
        let raw = new FormData(updateForm)
    
        var requestOptions = {
        method: "PUT",
        body: raw,
        headers: myHeaders
        };
    
        let response = await fetch(`http://localhost:3000/api/v1/alumnos/${idModal}`, requestOptions)
        let data = await response.json()
        if (data.code === 200) {
            alert(data.message)
            location.reload()
        }
        else{
            alert(data.message)
        }
    } catch (error) {
        alert("Ha Ocurrido Un Error, Inténtelo Nuevamente")
    }


})

//Petición fetch para Crear un Nuevo Curso
let createCursoForm = document.getElementById("createCursoForm")

createCursoForm.addEventListener("submit", async(event) =>{
    event.preventDefault()

    try {
        let idModal = document.getElementById("updateId").value

        var myHeaders = new Headers()
        myHeaders.append(
            "Authorization",
            `Bearer ${token}`
        )
    
        let data = new FormData(createCursoForm)
    
        let response = await fetch(`http://localhost:3000/api/v1/cursos`, {method: "post", headers: myHeaders, body: data})
        let result = await response.json()
        if (result.code === 201) {
            alert(result.message)
            location.reload()
        }
        else{
            alert(result.message)
        }
    } catch (error) {
        alert("Ha Ocurrido Un Error, Inténtelo Nuevamente")
    }

})



//Logica para  cargar datos del Curso en el modal para modificar el Curso

let botonesUpdate = document.getElementsByClassName("modificarCurso")
let arrayBotones = [...botonesUpdate]

arrayBotones.forEach(boton => {
    boton.addEventListener("click", async(event)=>{
    
        let elemento = event.target
        
        try {
            if(elemento.classList.contains("modificarCurso")){
                let idModalCurso = document.getElementById("updateCursoId")
                let nombreModalCurso = document.getElementById("updateCursoNombre")
                let cueModalCurso = document.getElementById("updateCursoCue")
                let descripcionModalCurso = document.getElementById("updateCursoDescripcion")
                let imagenModalCurso = document.getElementById("updateCursoImagen")
    
                let id = elemento.dataset.id
                let nombre = elemento.dataset.nombre
                let apellido = elemento.dataset.cue
                let email = elemento.dataset.descripcion
                let imagen = elemento.dataset.imagen
    
                console.log(id, nombre, apellido, email)
    
    
                idModalCurso.value = id
                nombreModalCurso.value = nombre
                cueModalCurso.value = apellido
                descripcionModalCurso.value = email
                imagenModalCurso.value = imagen
    
            }      
        } catch (error) {
            alert("Ha Ocurrido Un Error, Inténtelo Nuevamente")
        }
    
    })
    
});



//Petición fetch para hacer un update del alumno
let updateCursoForm = document.getElementById("updateCursoForm")

updateCursoForm.addEventListener("submit", async(event) =>{
    event.preventDefault()

    try {
        let idModal = document.getElementById("updateCursoId").value

        var myHeaders = new Headers()
        myHeaders.append(
            "Authorization",
            `Bearer ${token}`
        )
    
        let raw = new FormData(updateCursoForm)
    
        var requestOptions = {
        method: 'PUT',
        body: raw,
        headers: myHeaders
        };
    
        let response = await fetch(`http://localhost:3000/api/v1/cursos/${idModal}`, requestOptions)
        let data = await response.json()
        if (data.code === 200) {
            alert(data.message)
            location.reload()
        }
        else{
            alert(data.message)
        }
    } catch (error) {
        alert("Ha Ocurrido Un Error, Inténtelo Nuevamente")
    }


})

//Petición fetch para eliminar un curso de la base de datos

let botonesDelete = document.getElementsByClassName("eliminarCurso")
let arrayBotonesDelete = [...botonesDelete]

arrayBotonesDelete.forEach(boton => {
    boton.addEventListener("click", async(event)=>{
    
        let elemento = event.target
        
        try {
            if(elemento.classList.contains("eliminarCurso")){
                let id = elemento.dataset.id
                let confirmacion = confirm("¿Estás seguro que quieres eliminar este curso?")
                if(confirmacion){
                    var myHeaders = new Headers()
                    myHeaders.append(
                        "Authorization",
                        `Bearer ${token}`
                    )
                    let response = await fetch(`http://localhost:3000/api/v1/cursos/${id}`, {method: "delete", headers: myHeaders})
                    let data = await response.json()
                    if (data.code === 200) {
                        alert(data.message)
                        location.reload()
                    }
                    else{
                        alert(data.message)
                    }
                }
            }      
        } catch (error) {
            alert("Ha Ocurrido Un Error, Inténtelo Nuevamente")
        }
    
    })
    
});

