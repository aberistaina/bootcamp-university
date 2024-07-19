import { DataTypes} from "sequelize";
import sequelize from "../database/database.js";


//Tabla Alumnos

const Alumnos = sequelize.define(
    "Alumnos",
    {
        id: {
            type: DataTypes.STRING(5),
            primaryKey: true
        },
        
        nombre:{
            type: DataTypes.STRING(20),
            allowNull: false,
            validate: {
                notEmpty: true
            }
        },
        apellido:{
            type: DataTypes.STRING(20),
            allowNull: false,
            validate: {
                notEmpty: true
            }
        },
        email:{
            type: DataTypes.STRING(50),
            allowNull: false,
            unique: true,
            validate: {
                notEmpty: true,
                isEmail: true
            }
        },
        password:{
            type:DataTypes.STRING,
            allowNull: false,
            validate: {
                notEmpty: true,
            }
        },
        admin:{
            type:DataTypes.BOOLEAN,
            allowNull: false,
            defaultValue: false,
            validate: {
                notEmpty: true,
            }
        }
    },
    {
        timestamps: true,
        tableName: "Alumnos"
    }
)

export default Alumnos