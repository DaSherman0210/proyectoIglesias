-- Active: 1686834841351@@127.0.0.1@3306@iglesiaHeavensMysqlDB

CREATE DATABASE iglesiaHeavensMysqlDB;

USE iglesiaHeavensMysqlDB;

CREATE TABLE Creyente (
    idIdentificacion INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR (50) NOT NULL,
    email VARCHAR (100) NOT NULL,
    nroCelular BIGINT NOT NULL,
    direccion VARCHAR (100) NOT NULL,
    idBarrio INT NOT NULL,
    Foreign Key (idBarrio) REFERENCES Barrio (idBarrio)
);

INSERT INTO Creyente (idIdentificacion,nombres,email,nroCelular,direccion,idBarrio) 
VALUES 
( 1 , "Juan" , "Juan@gmail.com" , 6355050 , "casa 1" , 1 ),
( 2 , "Sofía" , "Sofía@gmail.com" , 3432424 , "casa 2" , 2 ),
( 3 , "Mateo" , "Mateo@gmail.com" , 6787868 , "casa 3" , 3 ),
( 4 , "Isabella" , "Isabella@gmail.com" , 1232143 , "casa 4" , 4 ),
( 5 , "Santiago" , "Santiago@gmail.com" , 43656467 , "casa 5" , 5 ),
( 6 , "Valentina" , "Valentina@gmail.com" , 2432186 , "casa 6" , 6 ),
( 7 , "Nicolás" , "Nicolás@gmail.com" , 23467879 , "casa 7" , 7 ),
( 8 , "Camila" , "Camila@gmail.com" , 09866576 , "casa 8" , 8 ),
( 9 , "Sebastián" , "Sebastián@gmail.com" , 867845642 , "casa 9" , 9 ),
( 10 , "Mariana" , "Mariana@gmail.com" , 466587632 , "casa 10" , 10 ),
( 11 , "Daniel" , "Daniel@gmail.com" , 43665765 , "casa 11" , 11 ),
( 12 , "Lucía" , "Lucía@gmail.com" , 43655464 , "casa 12" , 12 ),
( 13 , "Andrés" , "Andrés@gmail.com" , 142321 , "casa 13" , 13 ),
( 14 , "Natalia" , "Natalia@gmail.com" , 12432345 , "casa 14" , 14 ),
( 15 , "Leonardo" , "Leonardo@gmail.com" , 43665546 , "casa 15" , 15 ),
( 16 , "Valeria" , "Valeria@gmail.com" , 23543454 , "casa 16" , 16 ),
( 17 , "Alejandro" , "Alejandro@gmail.com" , 4325464 , "casa 17" , 17 ),
( 18 , "Catalina" , "Catalina@gmail.com" , 3255465 , "casa 18" , 18 ),
( 19 , "Diego" , "Diego@gmail.com" , 76876909 , "casa 19" , 19 ),
( 20 , "Gabriela" , "Gabriela@gmail.com" , 35285789 , "casa 20" , 20 )
;

CREATE TABLE Barrio (
    idBarrio INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombreBarrio VARCHAR (70) NOT NULL,
    idComuna INT NOT NULL,
    Foreign Key (idComuna) REFERENCES Comuna (idComuna)
);

INSERT INTO Barrio (idBarrio,nombreBarrio,idComuna) 
VALUES 
( 1 , "El Rosal" , 1 ),
( 2 , "Esperanza II" , 2 ),
( 3 , "Chapinero" , 3 ),
( 4 , "Granadas" , 4 ),
( 5 , "Campohermoso" , 5 ),
( 6 , "La Aldea" , 6 ),
( 7 , "El Bosque" , 7 ),
( 8 , "El Carmen" , 8 ),
( 9 , "La Inmaculada" , 9 ),
( 10 , "Ruitoque" , 10 ),
( 11 , "Limoncito" , 11 ),
( 12 , "La lomita" , 12 ),
( 13 , "Simon Bolivar" , 13 ),
( 14 , "El dorado" , 14 ),
( 15 , "Payador" , 15 ),
( 16 , "San Francisco" , 16 ),
( 17 , "Villa del Prado" , 17 ),
( 18 , "Los Alpes" , 18 ),
( 19 , "El Recreo" , 19 ),
( 20 , "El Bosque" , 20 )
;

CREATE TABLE Comuna (
    idComuna INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombreComuna VARCHAR (70) NOT NULL,
    idMunicipio INT NOT NULL,
    Foreign Key (idMunicipio) REFERENCES Municipio (idMunicipio) 
);

INSERT INTO Comuna (idComuna,nombreComuna,idMunicipio) 
VALUES 
( 1 , "Comuna 1 Norte" , 1 ),
( 2 , "Comuna 2 Nororiental" , 1 ),
( 3 , "Comuna 3 San Francisco" , 1 ),
( 4 , "Comuna 4 Occidental" , 1 ),
( 5 , "Comuna 5 García Rovira" , 1 ),
( 6 , "Centro Histórico" , 2 ),
( 7 , "El Bosque" , 2 ),
( 8 , "El Carmen" , 2 ),
( 9 , "La Inmaculada" , 2 ),
( 10 , "Ruitoque" , 2 ),
( 11 , "Altamira y Casco antiguo" , 3 ),
( 12 , "Cañaveral" , 3 ),
( 13 , "Bucarica" , 3 ),
( 14 , "Caldas - Reposo" , 3 ),
( 15 , "Bosque - Molinos" , 3 ),
( 16 , "Carrizal" , 4 ),
( 17 , "Rio frio" , 4 ),
( 18 , "Llanadas" , 4 ),
( 19 , "Barbosa" , 4 ),
( 20 , "Acapulco" , 4 )
;


CREATE TABLE Municipio (
    idMunicipio INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombreMunicipio VARCHAR (70) NOT NULL,
    idDepartamento INT NOT NULL,
    Foreign Key (idDepartamento) REFERENCES Departamento (idDepartamento)
);

INSERT INTO Municipio (idMunicipio,nombreMunicipio,idDepartamento) 
VALUES 
( 1 , "bucaramanga" , 1 ),
( 2 , "piedecuesta" , 1 ),
( 3 , "Floridablanca" , 1),
( 4 , "giron" , 1);

CREATE TABLE Departamento (
    idDepartamento INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombreDepartamento VARCHAR (70) NOT NULL
);

INSERT INTO Departamento (idDepartamento,nombreDepartamento) 
VALUES ( 1 , "santander" );

/* INNER JOINS */

SELECT * FROM Creyente INNER JOIN Barrio ON Creyente.idBarrio = Barrio.idBarrio WHERE Barrio.nombreBarrio = "La lomita";
SELECT * FROM Barrio INNER JOIN Comuna ON Barrio.idComuna = Comuna.idComuna WHERE Comuna.nombreComuna = "Comuna 2 Nororiental";
SELECT * FROM Comuna INNER JOIN Municipio ON Comuna.idMunicipio = Municipio.idMunicipio WHERE Municipio.nombreMunicipio = "Floridablanca";
SELECT * FROM Municipio INNER JOIN Departamento ON Municipio.idDepartamento = Departamento.idDepartamento WHERE Departamento.nombreDepartamento = "santander";