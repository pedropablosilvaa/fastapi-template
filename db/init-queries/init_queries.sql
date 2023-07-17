CREATE TABLE IF NOT EXISTS senderos (
    id_sendero SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT,
    longitud FLOAT,
    dificultad VARCHAR(50),
    detalles_tecnicos TEXT,
    detalles_cientificos TEXT,
    imagen TEXT,
    articulo TEXT,
    tipo_sendero VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS actividades (
    id_actividad SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT,
    ubicacion VARCHAR(255),
    fecha_hora TIMESTAMP,
    imagen TEXT,
    tipo_actividad VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS articulos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255),
    contenido TEXT,
    fecha_publicacion DATE,
    autor VARCHAR(255),
    imagen TEXT,
    tipo_articulo VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS emprendimientos (
    id_emprendimiento SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT,
    producto VARCHAR(255),
    contacto VARCHAR(255),
    imagen TEXT
);

CREATE TABLE IF NOT EXISTS alojamientos (
    id_alojamiento SERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT,
    servicios TEXT,
    ubicacion VARCHAR(255),
    contacto VARCHAR(255),
    imagen TEXT,
    tipo VARCHAR(255)
);
