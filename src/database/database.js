import Sequelize from "sequelize";


//Conexión a la Base de Datos
const sequelize = new Sequelize("consolidacion_m7", "postgres", "6108", {
    host: "localhost",
    dialect: "postgres",
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 3000,
    }
});

export default sequelize;