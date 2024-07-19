import { Router } from "express";
import { findAll, deleteCurso, findById, updateUser, deleteAlumno, crearUsuario, loginAlumno, registerCurso, findUsers } from "../controllers/alumnos.controllers.js";
import { emitirToken } from "../middlewares/login.middlewares.js";
import { verificarToken } from "../middlewares/login.middlewares.js";
import { verificarAdmin } from "../middlewares/admin.middlewares.js";

const router = Router()

//Ruta Consulta Todos los Usuarios y Sus Cursos Tomados
router.get("/", verificarToken, verificarAdmin, findAll)

//Ruta Consulta Todos los Usuarios
router.get("/manejador", verificarToken, verificarAdmin, findUsers)

//consultar usuario por ID 
router.get("/:idAlumno/", verificarToken, verificarAdmin, findById)

//Ruta para registrar a un alumno 
router.post("/",  crearUsuario)

//Ruta para eliminar el curso de un alumno
router.delete("/cursos/:idAlumno/:idCurso", verificarToken, deleteCurso)

//Ruta para modificar usuario
router.put("/:id", verificarToken, updateUser)

//Ruta para un Alumno
router.delete("/:id", verificarToken, deleteAlumno)

//Ruta para Login Alumno
router.post("/login", emitirToken, loginAlumno)

//ruta para registrarse en un curso
router.post("/registerCurso/:emailAlumno/:idCurso", verificarToken, registerCurso)

export default router