import Alumnos from "./Alumnos.models.js";
import Cursos from "./Cursos.models.js"
import CursosAlumnos from "./CursosAlumnos.models.js";

//Asociación de Muchos A Muchos entre tabla Alumnos y Tabla Cursos

Alumnos.belongsToMany(Cursos, { 
    through: CursosAlumnos, 
    foreignKey: "idAlumno",
    onDelete: "CASCADE",
    onUpdate: "CASCADE",
    as: "cursos"
});

Cursos.belongsToMany(Alumnos, { 
    through: CursosAlumnos, 
    foreignKey: "idCurso",
    onDelete: "CASCADE",
    onUpdate: "CASCADE",
    as: "alumnos" });
