CREATE TABLE duenisa (
    cedula VARCHAR(15) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(150)
);

CREATE TABLE mascotasasasa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    especie VARCHAR(30),
    raza VARCHAR(50),
    edad INT,
    sexo VARCHAR(10),
    vacunada BOOLEAN,
    cedula_duenio VARCHAR(15),
    FOREIGN KEY (cedula_duenio) REFERENCES duenios(cedula)
);

CREATE TABLE serviciososasa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    descripcion TEXT,
    precio_base DECIMAL(10,2)
);

CREATE TABLE visitasosasa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_mascota INT,
    id_servicio INT,
    fecha DATE,
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id),
    FOREIGN KEY (id_servicio) REFERENCES servicios(id)
);

CREATE TABLE tratamientososasa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    observaciones TEXT,
    id_visita INT,
    FOREIGN KEY (id_visita) REFERENCES visitas(id)
);


-- ----

CREATE DATABASE IF NOT EXISTS veterinaria;
USE veterinaria;

CREATE TABLE Dueñoso (
    cedula VARCHAR(20) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(150)
);

CREATE TABLE Mascotaso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(30),
    raza VARCHAR(50),
    edad INT,
    sexo CHAR(1),
    vacunada BOOLEAN,
    cedula_dueño VARCHAR(20),
    FOREIGN KEY (cedula_dueño) REFERENCES Dueño(cedula)
);