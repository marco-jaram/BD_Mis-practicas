CREATE DATABASE bdMascotaFeliz;
USE bdMascotaFeliz;

-- Primera tabla Clientes
CREATE TABLE IF NOT EXISTS bdMascotaFeliz.cliente (
    idCliente INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreCliente VARCHAR(50) UNIQUE,
    apellidoPaterno VARCHAR(40),
    Telefono VARCHAR(30)
);
insert into cliente  values (0, 'Marco',  'Jaramillo',    '6643111567' );
insert into cliente  values (0, 'Andrea', 'Gonzalez ',    '6644987500' );
insert into cliente  values (0, 'Martha', 'Castro ',      '6648762555' );
insert into cliente  values (0, 'Dulce',  'Rodriguez',    '6648869583' );
insert into cliente  values (0, 'Pedro',  'Perez',        '6645998834' );
insert into cliente  values (0, 'Natali', 'Garcia ',      '6645987677' );
insert into cliente  values (0, 'Alejandro', 'Hernandez', '6649084766' );

CREATE TABLE IF NOT EXISTS bdMascotaFeliz.productos (
    idProducto INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreProductos VARCHAR(50) UNIQUE,
     descripcion VARCHAR(50),
     precio double
);
insert into productos  values(0, 'Correa', 'Correa grande para perro', 385.00);
insert into productos  values(0, 'Royal Canin', 'Alimento Seco para Perro Adulto Raza Pequeña ', 1042.50);
insert into productos  values(0, 'Casa de Exterior', 'Casa de Exterior para Perro, Grande ',  4999.00);
insert into productos  values(0, 'Mueble Tipo Árbol', 'Árbol de 5 Niveles con Juguete y Arco para Gato ', 2999.00);
insert into productos  values(0, 'Cama', 'Harmony Cama Ovalada Ultra Suave para Gato Color', 169 );
insert into productos  values(0, 'Tazon de Ceramica', 'Tazón de Cerámica Good Kitty Blanco para Gato', 189 );
insert into productos  values(0, 'Ratoncitos', 'Ratoncitos con Plumas Colores para Gato, 2 Piezas', 47 );
insert into productos  values(0, 'Pista con Pluma', 'Pluma y Pelota con Luz Juguete para Gato, Rosa', 175);
insert into productos  values(0, 'Rascador', 'Rascador Interactivo Con Aves Mediano ',135.20 );

CREATE TABLE IF NOT EXISTS bdMascotaFeliz.venta (
    idVenta INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    idCliente INT,
     nombreProducto VARCHAR(40),
     total double,
      FOREIGN KEY (idCliente)
	 REFERENCES cliente (idCliente),
	FOREIGN KEY (nombreProducto)
	REFERENCES productos (nombreProductos)
);

insert into venta  values(0, 3, 'Correa', 793.00);
insert into venta  values(0, 2, 'Casa de Exterior',471.00 );
insert into venta  values(0, 6, 'Tazon de Ceramica', 298.00 );
insert into venta  values(0, 5, 'Pista con Pluma', 678.00);
insert into venta  values(0, 4, 'Ratoncitos', 975.99);
insert into venta  values(0, 2, 'Correa', 793.00);
 -- drop table venta;

SET FOREIGN_KEY_CHECKS=0;
select * from cliente;
 select * from productos;
 select * from venta;
 select * from cliente;
 
 
 -- • Dos consultas empleando el comando natural join para dos tablas 
 select *from productos cross join venta;
 select * from cliente inner join venta on venta.idCliente;
-- • Dos consultas empleando el comando join y on para dos tablas
select * from venta inner join cliente on venta.idCliente=cliente.idCliente where nombreCliente= 'Andrea';
select venta.idCliente, venta.nombreProducto, venta.idVenta,  venta.total from venta 
inner join cliente on venta.idCliente=cliente.idCliente where nombreCliente= 'Dulce';

-- • Dos consultas empleando el comando join en tres tablas
select venta.nombreProducto, venta.idCliente, venta.total
from venta 
inner join productos on venta.idVenta
inner join cliente on venta.idCliente;

-- CONSULTAS USANDO VIEW

Create view ClienteMarco_correa 
as 
select cliente.idCliente as id cliente.nombreCliente as nombre Cliente.apellidoPaterno as apellido Venta.nombreProducto 
FROM cliente c inner join venta v on c.nombreCliente =v.nombreProducto 

WHERE venta.nombreProducto = "Correa" AND Cliente.nombreCliente = "Marco"


