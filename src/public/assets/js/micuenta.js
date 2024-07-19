// Petición fetch para eliminar un usuario
let body = document.querySelector("body")

body.addEventListener("click", async(event)=>{
    let elemento = event.target

    try {
        if(elemento.classList.contains("eliminar")){
            let idAlumno = elemento.dataset.id
            let idCurso = elemento.dataset.idcurso       
            let confirmacion = confirm("¿Deseas eliminar este curso de tu cuenta?")
            if(confirmacion){

                var myHeaders = new Headers()
                myHeaders.append(
                    "Authorization",
                    `Bearer ${token}`
                )
                let response = await fetch(`http://localhost:3000/api/v1/alumnos/cursos/${idAlumno}/${idCurso}`, { method: "delete", headers: myHeaders })
                let data = await response.json()
                if(data.code === 200){
                    alert(data.message)
                    location.reload()
                }else{
                    alert(data.message)
                }
        }
            }

            
    } catch (error) {
        alert("Ha Ocurrido Un Error, Inténtelo Nuevamente")
    }


})


//Logica para  cargar datos del alumno en el modal para modificar al alumno
let boton = document.querySelector("#botonUpdate")

boton.addEventListener("click", async(event)=>{
    
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

            console.log(id, nombre, apellido, email)


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
        method: 'PUT',
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

//Petición Fetch para eliminar a un alumno de la base de datos
let botonDelete = document.querySelector("#botonDelete")

botonDelete.addEventListener("click", async(event)=>{
    
    let elemento = event.target
    let id = elemento.dataset.id

    try {
        let confirmacion = confirm("¿Seguro que desea eliminar su cuenta?, Esta acción no se puede deshacer")
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
                location.href = "/"
                localStorage.clear()
            }
            else{
                alert(data.message)
            }
        }
    } catch (error) {
        alert("Ha Ocurrido Un Error, Inténtelo Nuevamente")
    }

})