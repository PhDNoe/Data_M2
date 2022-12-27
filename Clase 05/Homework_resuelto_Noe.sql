-- Copiar y ejecutar en mysql workbench

-- Creamos la base de datos
CREATE DATABASE henry_05;

-- Utilizamos la base de datos
USE henry_05;


-- Creamos la tabla Carrera
CREATE TABLE Carrera (
    id_carrera int not null auto_increment,
    nombre varchar(30),
    primary key (id_carrera)
);

-- Creamos la tabla de instructores AAAA-MM-DD
CREATE TABLE Instructor (
    id_instructor int not null auto_increment,
    cedula varchar(20),
    nombre varchar(30),
    apellido varchar(30),
    fecha_nac Date,
    fecha_incorporacion Date,
    primary key (id_instructor)
)

-- Creamos la tabla de Cohorte
CREATE TABLE Cohorte (
    id_cohorte int not null auto_increment,
    codigo varchar(10),
    fecha_inicio Date,
    fecha_fin Date,
    id_instructor int,
    id_carrera int,
    primary key (id_cohorte),
    FOREIGN key (id_instructor) REFERENCES Instructor(id_instructor),
    FOREIGN key (id_carrera) REFERENCES Carrera(id_carrera)
)


-- Creamos la tabla de alumnos
CREATE TABLE Alumno (
    id_alumno int not null auto_increment,
    cedula varchar(20),
    nombre varchar(30),
    apellido varchar(30),
    fecha_nac Date,
    fecha_ingreso Date,
    id_cohorte int,
    primary key (id_alumno), 
    FOREIGN key (id_cohorte) REFERENCES Cohorte(id_cohorte)

)



-- Me habia olvidado una columna en cohorte --> Se puede agregar de esta manera
alter table cohorte add id_carrera int, add foreign key id_carrera(id_carrera) references carrera(id_carrera);
