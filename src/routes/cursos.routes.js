import { Router } from "express";
import { createCurso, findAll, findCursoById, deleteCurso, updateCurso } from "../controllers/cursos.controllers.js";
import { verificarToken } from "../middlewares/login.middlewares.js";
import { verificarAdmin } from "../middlewares/admin.middlewares.js";

const router = Router()

//Ruta para consultar todos los cursos
router.get("/", findAll)

//Ruta para consultar cursos por ID
router.get("/id/:id", findCursoById)

//Ruta para Crear un Curso
router.post("/", createCurso)

//Ruta para Eliminar un Curso
router.delete("/:id", deleteCurso)

//Ruta para Modificar un Curso
router.put("/:id", updateCurso)





export default router