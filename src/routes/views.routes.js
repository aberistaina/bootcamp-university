import { Router } from "express";
import { viewHome, viewAlumnos, viewMiCuenta, viewManejador } from "../controllers/views.controllers.js";
import { verificarToken } from "../middlewares/login.middlewares.js";
import { verificarAdmin } from "../middlewares/admin.middlewares.js";

const router = Router()

//Vista Home con todos los cursos
router.get(["/", "home"], viewHome)

//Vista alumnos con todos los alumnos y sus respectivos cursos (Ruta Protegida)
router.get(["/alumnos"], verificarToken, verificarAdmin, viewAlumnos)

//Vista Manejador
router.get(["/manejador"], viewManejador)

//Vista mi cuenta con un alumno en especifico 
router.get(["/micuenta"], verificarToken, viewMiCuenta)

export default router