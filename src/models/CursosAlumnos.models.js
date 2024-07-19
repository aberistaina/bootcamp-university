import { DataTypes } from "sequelize";
import sequelize from "../database/database.js";


//Tabla Pivote entre Alumnos y Cursos

const CursosAlumnos = sequelize.define(
    "CursosAlumnos", {
        idAlumno:{
            type: DataTypes.STRING(5),
            allowNull: false,
            validate:{
                notEmpty: true
            }
        },
        idCurso:{
            type: DataTypes.INTEGER,
            allowNull: false,
            validate:{
                notEmpty: true
            }
        }
    }
)

export default CursosAlumnos