import Cursos from "../models/Cursos.models.js";

//Controlador para buscar todos los cursos
export const findAll = async(req, res) =>{
    try {
        let cursos = await Cursos.findAll({
            attributes: ["id", "nombre", "cue", "descripcion"],
            raw:true,
            order:[["id", "ASC"]],
        })
        res.json({code: 200, message: "Cursos Encontrados Con Éxito", data: cursos})
    } catch (error) {
        res.status(500).json({code: 500, message: "Ha ocurrido un error"})
    }
}


//Controlador para crear un curso
export const createCurso = async (req, res) => {
    try {
        let { nombre, cue, descripcion, imagen } = req.body;
        let nuevoCurso = await Cursos.create({
            nombre,
            cue,
            descripcion,
            imagen
        });
        res.status(201).json({code: 201, message: "Curso creado con éxito", data: nuevoCurso})
    } catch (error) {
        res.status(500).json({code: 500, message: "Error al crear un Curso."})
    }
};

//Constrolador para buscar un curso por ID
export const findCursoById = async (req, res) =>{
    try {
        let id = req.params.id
        let cursoEncontrado = await Cursos.findByPk(id,{
            attributes: ["id", "nombre", "cue", "descripcion"],
            raw:true,
            order:[["id", "ASC"]],
        })
        res.status(200).json({code: 200, message: "Curso encontrado con éxito", data: cursoEncontrado})
    } catch (error) {
        res.status(500).json({code: 500, message: "Error al encontrar el Curso."})
    }

}

//Controlador para eliminar un curso
export const deleteCurso = async (req, res) =>{
    try {
        let id = req.params.id
        let curso = await Cursos.findByPk(id,{
            raw:true,
        });
        if(!curso){
            return res.json({code:400, message: "curso no encontrado"})
        }
        await Cursos.destroy({
            where: {
                id,
            }
        })
        
        res.status(200).json({code: 200, message: "Curso eliminado con éxito", data: curso})
    } catch (error) {
        console.log(error)
        res.status(500).json({code: 500, message: "Error al eliminar el Curso."})
    }

}

//Controlador para Modificar cursos
export const updateCurso = async (req, res) =>{
    try {
        let id = req.params.id
        let { nombre, cue, descripcion, imagen } = req.body;
        let curso = await Cursos.findByPk(id,{
            raw:true,
        });
        console.log(curso)

        if(!curso){
            return res.json({code:400, message: "curso no encontrado"})
        }

        let nuevosDatos = {
            nombre: nombre,
            cue: cue,
            descripcion: descripcion,
            imagen: imagen
        }

        await Cursos.update(nuevosDatos, {
            where: {
                id
            }
        })
        let cursoModificado = await Cursos.findByPk(id,{
            raw:true,
        });

        res.status(200).json({code: 200, message: "Curso modificado con éxito", data: cursoModificado})
    } catch (error) {
        res.status(500).json({code: 500, message: "Error al modificar el Curso."})
    }

}