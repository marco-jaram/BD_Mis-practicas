DROP DATABASE IF EXISTS bdLavanderia2;

CREATE DATABASE bdLavanderia2;
USE bdLavanderia2;

-- Tabla Clientes --
CREATE TABLE IF NOT EXISTS bdLavanderia2.cliente (
    idCliente INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreCliente VARCHAR(50) UNIQUE,
    apellidoPaterno VARCHAR(40),
    Telefono VARCHAR(30),
    clienteFrecuente VARCHAR(5)
);

insert into cliente  values (0, 'Marco',  'Jaramillo',    '6643111567', 'si');
insert into cliente  values (0, 'Andrea', 'Gonzalez ',    '6644987500', 'si');
insert into cliente  values (0, 'Martha', 'Castro ',      '6648762555', 'si');
insert into cliente  values (0, 'Dulce',  'Rodriguez',    '6648869583', 'no');
insert into cliente  values (0, 'Pedro',  'Perez',        '6645998834', 'no');

-- Tabla Empleados --

CREATE TABLE IF NOT EXISTS bdLavanderia2.empleado (
idEmpleado INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreEmpleado VARCHAR(20) UNIQUE,
    apellidoEmpleado VARCHAR(20) UNIQUE,
    departamento VARCHAR(60),
    puesto VARCHAR(20),
    numeroEmpleado VARCHAR(10)
);

insert into empleado values (0, 'Sandra','Gomez', 'limpieza', 'ayudante general', '1123');
insert into empleado values (0, 'Laura', 'Valdes', 'lavado en seco', 'encargado', '1145');
insert into empleado values (0, 'Magdalena', 'Martinez', 'servicio de lavanderia', 'operador', '1167');
insert into empleado values (0, 'Ricardo', 'Cervantes', 'servicio de lavanderia', 'operador', '1112');
insert into empleado values (0, 'Lorena', 'Diaz', 'mostrador', 'servicio al cliente', '1178');
-- Tabla Facturas --
DROP table factura;
CREATE TABLE IF NOT EXISTS bdLavanderia2.factura (
    idFactura INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    idCliente INT  NOT NULL,
    numeroFactura VARCHAR(20) UNIQUE,
    fecha DATE,
    servicio VARCHAR(60),
    numEmpleadoAsignado VARCHAR(10),
    nombreCliente VARCHAR(60),
    apellidoPaterno VARCHAR(60),
FOREIGN KEY (idCliente)
REFERENCES bdLavanderia2.cliente (idCliente));

insert into factura values (0, 1,'A3435', '2022-09-02', 'lavado en seco', '1145', 'Marco',  'Jaramillo' );
insert into factura values (0, 2, 'A3436', '2022-09-11', 'servicio de lavanderia', '1167', 'Andrea', 'Gonzalez ' );
insert into factura values (0, 3, 'A3437', '2022-09-08', 'servicio de lavanderia', '1112', 'Martha', 'Castro ' );
insert into factura values (0, 4, 'A3438', '2022-08-05', 'lavado en seco', '1145', 'Dulce',  'Rodriguez' );
insert into factura values (0, 5, 'A3439', '2022-08-15', 'lavado en seco', '1145', 'Pedro',  'Perez');

SET FOREIGN_KEY_CHECKS=0;
 select * from cliente;
 select * from empleado;
 select * from factura;


-- Escalares

SELECT idCliente, nombreCliente
from cliente 
WHERE idCliente = (SELECT MAX(idCliente)from cliente);

SELECT idCliente, nombreCliente
from cliente 
WHERE idCliente = (SELECT MIN(idCliente)from cliente);

SELECT idFactura, nombreCliente, numEmpleadoAsignado  
from factura 
WHERE servicio  IN ('lavado en seco')

-- Una fila
SELECT idCliente
from cliente
WHERE nombreCliente  IN ('Marco', 'Andrea');

SELECT idEmpleado
from empleado
WHERE nombreEmpleado  IN ('Laura', 'Ricardo');

SELECT idCliente
from cliente
WHERE nombreCliente = 'Martha' or 'Dulce';

-- Multiple fila

SELECT idFactura 
from
( SELECT factura.idFactura , factura.numeroFactura  
from factura 
WHERE factura.servicio  IN 
(SELECT idCliente  from cliente WHERE apellidoPaterno = 'Perez' )AND (SELECT idCliente from factura  WHERE idCliente = 'Pedro')
     ) AS miTablita;



