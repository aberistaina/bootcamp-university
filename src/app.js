import express from "express";
import cors from "cors";
import morgan from "morgan";
import { create } from "express-handlebars";
import fileUpload from "express-fileupload";
import alumnosRoutes from "./routes/alumnos.routes.js"
import viewsRoutes from "./routes/views.routes.js"
import cursosRoutes from "./routes/cursos.routes.js"

import * as path from "path";
import { fileURLToPath } from "url";
const __dirname = path.dirname(fileURLToPath(import.meta.url));

const app = express();

//Configuración Handlebars
const hbs = create({partialsDir: [path.resolve(__dirname, "views/partials/")]});

//Motor Handlebars
app.engine("handlebars", hbs.engine);
app.set("view engine", "handlebars");
app.set("views", path.resolve(__dirname, "./views"));


//MIDDLEWARES
app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(cors());
app.use(morgan("tiny"));
app.use(fileUpload());

//Carpeta Publica
app.use("/public", express.static(__dirname + "/public"));

//Endpoints

app.use("/api/v1/alumnos", alumnosRoutes)
app.use("/api/v1/cursos", cursosRoutes)

//Vistas
app.use("/", viewsRoutes)


//Todos los demás endpoints
app.all("*",(req, res) => {
    res.render("error", {
        layout: "error404"
    })
})


export default app