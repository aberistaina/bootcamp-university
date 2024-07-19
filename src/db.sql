--Todos los cursos de la base de datos--

SELECT * FROM "Alumnos"
SELECT * FROM "Cursos"
SELECT * FROM "CursosAlumnos"

INSERT INTO "Cursos"  VALUES 
(default, 'Introduciendo El Bootcamp De React', 15,'React es la librería más usada en JavaScript para el desarrollo de interfaces.', 'https://kinsta.com/es/wp-content/uploads/sites/8/2022/07/que-es-react-js.png',  now(), now()),
(default, 'Bootcamp Desarrollo Web Full Stack', 12,'Crearás aplicaciones web utilizando las tecnologías y lenguajes más actuales y populares, como: JavaScript, nodeJS, Angular, MongoDB, ExpressJS.', 'https://www.dongee.com/tutoriales/content/images/2022/10/image-83.png',  now(), now()),
(default, 'Bootcamp Big Data, Inteligencia Artificial & Machine Learning', 18,'Domina Data Science, y todo el ecosistema de lenguajes y herramientas de Big Data, e intégralos con modelos avanzados.', 'https://niuoffice.com/wp-content/uploads/2022/10/Machine-learning.jpg',  now(), now()),
(default, 'Fundamentos de Desarrollo Web con HTML y CSS', 12, 'Aprende los fundamentos del desarrollo web utilizando HTML y CSS.', 'https://sinergiaformacion.es/wp-content/uploads/2014/10/programacion-html-css.jpg', now(), now()),
(default, 'Introducción a la Programación en Python', 10, 'Aprende los conceptos básicos de la programación utilizando Python.', 'https://i.blogs.es/1d8a5b/python1/1366_2000.jpg', now(), now()),
(default, 'Desarrollo de Aplicaciones Móviles con Flutter', 14, 'Construye aplicaciones móviles multiplataforma utilizando el framework Flutter.', 'https://minimo.io/wp-content/uploads/2021/05/flutter-dev-future.jpeg', now(), now()),
(default, 'Seguridad Informática: Fundamentos y Prácticas', 18, 'Explora los fundamentos de la seguridad informática y aprende prácticas recomendadas.', 'https://conceptoabc.com/wp-content/uploads/2020/03/Tecnolopedia-seguridad-informC3A1tica-portada.jpg', now(), now()),
(default, 'Desarrollo de Aplicaciones con Vue.js', 12, 'Aprende a construir aplicaciones web interactivas utilizando el framework Vue js.', 'https://camo.githubusercontent.com/23d0afe80e3449560be5119f0c3fbfe6773a040d5af01d2a52cde2c7462664df/687474703a2f2f7475746f7269616c6573656e7064662e636f6d2f77702d636f6e74656e742f75706c6f6164732f323031382f30352f7675656a732d7475746f7269616c2d7064662e6a7067', now(), now()),
(default, 'Desarrollo de Aplicaciones Web con Node.js', 15, 'Aprende a construir aplicaciones web utilizando el entorno de ejecución Node.js.', 'https://images.ctfassets.net/aq13lwl6616q/7cS8gBoWulxkWNWEm0FspJ/c7eb42dd82e27279307f8b9fc9b136fa/nodejs_cover_photo_smaller_size.png', now(), now()),
(default, 'Introducción a la Inteligencia Artificial', 14, 'Explora los conceptos fundamentales de la Inteligencia Artificial y sus aplicaciones.', 'https://www.tworeality.com/wp-content/uploads/2023/04/las-preguntas-mas-frecuentes-sobre-la-realidad-virtual-y-la-inteligencia-artificial.jpg', now(), now()),
(default, 'Introducción a Docker y Contenedores', 10, 'Aprende los conceptos básicos de Docker y cómo utilizar contenedores para implementar y administrar aplicaciones.', 'https://fs.buttercms.com/resize=width:885/x3KGHadAQV2oPzNJINOp', now(), now()),
(default, 'Programación en C++ desde cero', 12, 'Aprende a programar en C++ desde cero y desarrolla aplicaciones de software de alto rendimiento.', 'https://i.blogs.es/a3cfaa/taras-shypka-5vm5shrs_e8-unsplash/1366_2000.jpg', now(), now());
