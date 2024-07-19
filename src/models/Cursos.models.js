import { DataTypes } from "sequelize";
import sequelize from "../database/database.js";
import { v4 as uuid } from 'uuid'



//Tabla Cursos

const Cursos = sequelize.define(
    "Cursos",
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        nombre:{
            type: DataTypes.STRING(200),
            allowNull: false,
            validate:{
                notEmpty: true
            }
        },
        cue: {
            type: DataTypes.INTEGER,
            allowNull: false,
            validate:{
                notEmpty: true,
                isNumeric: true,
                min:5,
                max: 20
            }
        },

        descripcion: {
            type:  DataTypes.STRING(200),
            allowNull: false,
            validate: {
                notEmpty: true,
                len: [2,200]
            }
        },
        imagen: {
            type:  DataTypes.STRING(500),
            allowNull: false,
            validate: {
                notEmpty: true,
            }
        }

    }
)

export default Cursos