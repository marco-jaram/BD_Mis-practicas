DROP DATABASE IF EXISTS bdAutomotriz;

CREATE DATABASE bdAutomotriz;
USE bdAutomotriz;

-- Tabla Clientes --
CREATE TABLE IF NOT EXISTS bdAutomotriz.cliente (
    idCliente INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreCliente VARCHAR(50) UNIQUE,
    apellidoPaterno VARCHAR(40),
    Telefono VARCHAR(30)
);

insert into cliente  values (0, 'Marco',  'Jaramillo',    '6643111567');
insert into cliente  values (0, 'Andrea', 'Gonzalez ',    '6644987500');
insert into cliente  values (0, 'Martha', 'Castro ',      '6648762555');
insert into cliente  values (0, 'Dulce',  'Rodriguez',    '6648869583');
insert into cliente  values (0, 'Pedro',  'Perez',        '6645998834');

-- Tabla Empleados --

CREATE TABLE IF NOT EXISTS bdAutomotriz.empleado (
idEmpleado INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreEmpleado VARCHAR(20) UNIQUE,
    apellidoEmpleado VARCHAR(20) UNIQUE,
    numeroEmpleado VARCHAR(10)
);

insert into empleado values (0, 'Sandra','Gomez', '1123');
insert into empleado values (0, 'Laura', 'Valdes', '1145');
insert into empleado values (0, 'Magdalena', 'Martinez', '1167');
insert into empleado values (0, 'Ricardo', 'Cervantes', '1112');
insert into empleado values (0, 'Lorena', 'Diaz', '1178');

-- Tabla Autos --
DROP table auto;
CREATE TABLE IF NOT EXISTS bdAutomotriz.auto (
idAuto INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    marcaAuto VARCHAR(20) UNIQUE,
    idCliente INT NOT NULL,
    modelo VARCHAR(10),
    fechaVenta DATE,
    numeroEmpleadoVenta VARCHAR(10),
     FOREIGN KEY (idCliente)
REFERENCES cliente (idCliente)
);

insert into auto values (0, 'Jetta',           1,      '2020', '2022-09-10', '1145');
insert into auto values (0, 'GTI',             2,      '2021', '2022-09-11', '1167');
insert into auto values (0, 'MINI COOPER',      3,     '2020', '2022-09-08', '1112');
insert into auto values (0, 'F150',             4,       '2018',  '2022-08-05', '1145');
insert into auto values (0, 'CIVIC',            5,       '2019',   '2022-08-15', '1145');

SET FOREIGN_KEY_CHECKS=0;
 select * from cliente;
 select * from empleado;
 select * from auto;
 
SELECT idAuto, fechaVenta
FROM auto
WHERE fechaVenta IN ('2022-09-10');

SELECT idCliente, nombreCliente
FROM cliente
WHERE idCliente = (SELECT MAX(idCliente)from cliente);

SELECT idCliente, nombreCliente
FROM cliente
WHERE idCliente = (SELECT MIN(idCliente)from cliente);

