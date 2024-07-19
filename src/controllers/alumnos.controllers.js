import Alumnos from "../models/Alumnos.models.js";
import Cursos from "../models/Cursos.models.js";
import CursosAlumnos from "../models/CursosAlumnos.models.js";
import { v4 as uuid } from 'uuid'
import { Op } from "sequelize";
import bcrypt from "bcrypt"

// Controlador para buscar todos los alumnos
export const findAll = async(req, res) =>{
    try {
        let alumnos = await Alumnos.findAll({
            attributes: ["id", "nombre", "apellido", "email", "admin"],
            order:[["apellido", "ASC"]],
            include:[{
                model: Cursos,
                attributes: ["nombre", "cue", "descripcion"],
                as: "cursos",
                through:{
                model: CursosAlumnos,
                attributes: []
                }
            }],
        })
        alumnos.map((alumno) => {
            const cursos = alumno.cursos.map((curso) => curso);
            return { ...alumno, cursos };
        });

        res.json({code: 200, message: "Alumnos Encontrados Con Éxito", data: alumnos})
    } catch (error) {
        res.status(500).json({code: 500, message: "Ha ocurrido un error"})
    }
}

//Controlador para los filtros
export const findUsers = async(req, res) =>{

    try {
        let {nombre, email, admin} = req.query
        console.log(req.query)

        
        let filtros = {}

        if(nombre){
            filtros.nombre = {
                [Op.iLike]: `%${nombre}%`
            }
        }else if(email){
            filtros.email = {
                [Op.substring]: email
            }
        }else if(admin == "true"){
            filtros.admin =  true
        }

    let { count, rows: alumnos } = await Alumnos.findAndCountAll({
            order: [["id", "ASC"]],
            attributes: {
                exclude: ["password"],
            },
            where: filtros
        }); 


        res.json({code: 200, data: alumnos, registros: count })

    } catch (error) {
        res.status(500).json({code: 500, message: "Ha ocurrido un error"})
    }
}

//Controlador para Inscribirse en un curso
export const registerCurso = async(req, res) =>{
    try {
        let email = req.params.emailAlumno
        let idCurso = req.params.idCurso
        console.log(email)
        console.log(idCurso)

        let cursos = await Cursos.findByPk(idCurso, {
            attributes: ["nombre"],
            raw:true,
        })

        let findAlumno = await Alumnos.findOne( { where: { email } } );

        let cursoRepetido = await CursosAlumnos.findOne({
            where:{
                idAlumno: findAlumno.id,
                idCurso
            }
        })
        if(cursoRepetido){
            res.json({code:409, message: `Ya estás registrado en el curso ${cursos.nombre}, no puedes registrarte más de una vez al mismo curso. Intenta con otro`})    
        }else{

            await CursosAlumnos.create({
            idAlumno: findAlumno.id,
            idCurso
            })
            res.json({code:201, message: `Fuiste registrado exitosamente en el curso ${cursos.nombre}`})
        }
    } catch (error) {
        console.log(error)
        res.status(500).json({code: 500, message: "Ha ocurrido un error"})
    }
}

//Registrar Usuario

export const crearUsuario = async(req, res) =>{
    try {

            let { nombre, apellido, email, password} = req.body
            const hash = bcrypt.hashSync(password, 10)
            let alumno = await Alumnos.findOne({
                where:{
                    email
                }
            })
            if(alumno){
                return res.json({code:409, message: `Ya existe una cuenta vinculada al mail: ${email}, intenta iniciar sesión`})
            }
            await Alumnos.create({
            id: uuid().slice(0, 5),
            nombre,
            apellido,
            email,
            password: hash
            })
            res.json({code:201, message: `Bienvenido ${nombre} ${apellido} tu cuenta se encuentra Creada`})

    } catch (error) {
        res.json({code:500, message: "Ha ocurrido un error"})
    }
}


//Desvincular a un alumnos de un curso
export const deleteCurso = async(req, res) =>{
    try {
        let {idAlumno, idCurso} = req.params
        idCurso = Number(idCurso)
        let curso = await Cursos.findByPk(idCurso)
        let cursoELiminado = await CursosAlumnos.destroy({
            where: {
              idAlumno,
              idCurso
            }
          });
          res.json({code:200, message: `Fue eliminado correctamente el curso ${curso.nombre} de tu lista de cursos`})
    } catch (error) {
        res.status(500).json({code: 500, message: "Ha ocurrido un error"})
        console.log(error)
    }

}


//Buscar alumnos por ID
export const findById = async(req, res) =>{
    try {
        
        let {idAlumno} = req.params
        let alumnoEncontrado = await Alumnos.findByPk(idAlumno,{
            attributes: ["id", "nombre", "apellido", "email"],
            raw: true,
            order: [["apellido", "ASC"]],
        });
    if(!alumnoEncontrado){
        return res.json({code:400, message: "usuario no encotnrado"})
    }
    res.json({code:200, message: "usuario encontrado con éxito", data: alumnoEncontrado})
    } catch (error) {
        
        res.status(500).json({code: 500, message: "Ha ocurrido un error al intentrar buscar al alumno"})
    }
    
}

//Controlador para modificar a un Alumno

export const updateUser = async(req, res) =>{
    try {
        let id = req.params.id
        let { nombre, apellido, password,  email } = req.body
        const hash = bcrypt.hashSync(password, 10)

        let alumno = await Alumnos.findByPk(id, {
            attributes: ["id", "nombre", "apellido", "email", "password"],
        });

        if(!alumno){
            return res.json({code:400, message: "usuario no encontrado"})
        }

        let nuevosDatos = {
            nombre: nombre,
            apellido: apellido,
            email: email,
            password: hash
        };

        if(!req.body.password){
            nuevosDatos.password = alumno.password
        }

        let alumnoModificado = await Alumnos.update(nuevosDatos, {
            where: {
                id: id
            }
        })
        delete alumno.password
        res.json({code:200, message: "usuario modificado con éxito", data: alumnoModificado})
    } catch (error) {
        res.status(500).json({code: 500, message: "Ha ocurrido un error al intentrar modificar al alumno"})
    }
}


//Controlador para eliminar alumnos
export const deleteAlumno = async (req, res)=>{

    try {
        let id = req.params.id
        let alumnoEncontrado = await Alumnos.findByPk(id)
        if(!alumnoEncontrado){
            return res.json({code:400, message: "Alumno no encontrado"})
        }
    
        await Alumnos.destroy({
            where:{
                id
            }
        })
        res.status(200).json({code: 200, message: "Alumno eliminado con éxito", data: alumnoEncontrado})
    } catch (error) {
        res.status(500).json({code: 500, message: "Ha ocurrido un error al intentrar eliminar al alumno"})
    }
}


//Login Alumno

export const loginAlumno = async (req, res) =>{
    try {
        let alumno = await Alumnos.findOne({
            attributes: ["id", "nombre", "apellido", "email"],
            raw:true,
            where:{
                email: req.alumno.email
            }
        })
        if(req.body.curso){
            let curso = await Cursos.findByPk(req.body.curso, {
                attributes: ["id", "nombre"],
                raw:true,
            })
            
            let cursoRepetido = await CursosAlumnos.findOne({
                where:{
                    idAlumno: alumno.id,
                    idCurso: curso.id
                }
            })
            if(cursoRepetido){
                res.json({code:409, message: `Ya estás registrado en el curso ${curso.nombre}, no puedes registrarte más de una vez al mismo curso. Intenta con otro`})    
            }else{

                await CursosAlumnos.create({
                idAlumno: alumno.id,
                idCurso: curso.id
                })
                res.json({code:201, message: `Fuiste registrado exitosamente en el curso ${curso.nombre}`})
            }
            }
            else{
            res.status(200).json({code: 200, message: "Login éxitoso", alumno: req.alumno, token: req.token}) 
        }
        
    } catch (error) {
        
        res.status(500).json({code: 500, message: "Ha ocurrido un error en el proceso de autenticación"})
    }
}