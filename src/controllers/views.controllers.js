import Cursos from "../models/Cursos.models.js"
import Alumnos from "../models/Alumnos.models.js"
import CursosAlumnos from "../models/CursosAlumnos.models.js"
import { Op } from "sequelize"


//Controlador que renderiza todos los cursos en la vista Home
export const viewHome = async(req, res) =>{
    try {
        let cursos = await Cursos.findAll({
            attributes: ["id", "nombre", "descripcion", "cue", "imagen"],
            raw:true,
        })
        res.render("home", {
            cursos,
            homeView: true
        })
    } catch (error) {
        console.log(error)
    }
    
}


//Controlador que renderiza a todos los alumnos con sus respectivos cursos en la vista Alumnos (Renderizado con Data Tables)
export const viewAlumnos = async(req, res) =>{
    try {
        let alumnos = await Alumnos.findAll({
            attributes: ["id", "nombre", "apellido", "email"],
            order:[["apellido", "ASC"]],
            raw: true,
            include:[{
                model: Cursos,
                attributes: ["id", "nombre", "cue", "descripcion"],
                as: "cursos",
                through:{
                model: CursosAlumnos,
                attributes: []
                }
            }],
        })

        alumnos = alumnos.map(alumno =>{
            alumno.curso = alumno["cursos.nombre"]
            alumno.idCurso = alumno["cursos.id"]
            return alumno
        })

        let cursos = await Cursos.findAll({
            raw: true
        })

        let alumnoSinCurso = await Alumnos.findAll({
            raw: true
        })




        res.render("alumnos", {
            alumnos,
            cursos,
            alumnoSinCurso,
            alumnosView: true
        })
    } catch (error) {
        console.log(error)
    }
    
}

//Controlador que renderiza la vista mi cuenta, en donde el usuario puede ver todos los cursos a los que pertenece, puede modificar, eliminar su cuenta y desvincularse de los cursos
export const viewMiCuenta = async(req, res) =>{
    try { 
        console.log(req.usuario.email)
        let alumnoEncontrado = await Alumnos.findOne({
        attributes: ["id", "nombre", "apellido", "email"],
        where: {
            id: req.usuario.id
        },
            include:[{
                model: Cursos,
                attributes: ["id", "nombre", "cue", "descripcion"],
                as: "cursos",
                through:{
                model: CursosAlumnos,
                attributes: []
                }
            }],
        });
            if(alumnoEncontrado){

                alumnoEncontrado = alumnoEncontrado.toJSON()
                res.render("micuenta", {
                alumno: alumnoEncontrado, 
                loginView: true
                })
            }else{
                res.render("notFound", {
                    layout: "notFoundUser"
                })
            }      
    } catch (error) {
        console.log(error)
    }
    
}

//Controlador que la vista Manejador
export const viewManejador = async(req, res) =>{
    try {
        let cursos = await Cursos.findAll({
            order:[["id", "ASC"]],
            raw: true
        })
        res.render("manejador", {
            cursos,
            manejadorView: true
        })
    } catch (error) {
        console.log(error)
    }
    
}

