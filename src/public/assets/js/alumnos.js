//Inscribir a uhn alumno a un Curso

let formInscribirAlumno = document.getElementById("inscribirAlumno")
let alumnoSeleccionado = document.getElementById("alumnoEmail")
let cursoSeleccionado = document.getElementById("cursoId")
let alumnoEmail;
let cursoId;

alumnoSeleccionado.addEventListener("change", (event) => {
    let email = event.target.value;
    alumnoEmail = email
});

cursoSeleccionado.addEventListener("change", (event) => {
    let id = event.target.value;
    cursoId = id
});

formInscribirAlumno.addEventListener("submit", async(event)=>{
    event.preventDefault()
    if(!cursoId || !alumnoEmail){
        return alert("No pueden haber campos vacíos")
    }
    const myHeaders = new Headers()
        myHeaders.append(
            "Authorization",
            `Bearer ${token}`
        )
        let response = await fetch(`http://localhost:3000/api/v1/alumnos/registerCurso/${alumnoEmail}/${cursoId}`, {method: "post", headers: myHeaders})
        let data = await response.json()
        if (data.code === 201) {
            alert(data.message)
            location.reload()
            formInscribirAlumno.reset()
        }
        else{
            alert(data.message)
        }
})


//Eliminar a un alumno de un curso

// Petición fetch para eliminar un usuario
let tbody = document.querySelector("tbody")

tbody.addEventListener("click", async(event)=>{
    let elemento = event.target

    try {
        if(elemento.classList.contains("eliminar")){
            let idAlumno = elemento.dataset.id
            let idCurso = elemento.dataset.idcurso       
            let confirmacion = confirm("¿Deseas desvincular al alumno de este curso?")
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