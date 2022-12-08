drop database bdMascotaFeliz3;
CREATE DATABASE bdMascotaFeliz3;
USE bdMascotaFeliz3;
-- EJERCICIOS DE VISTAS / EXCERSICE VIEWS
-- Primera tabla Clientes
CREATE TABLE IF NOT EXISTS bdMascotaFeliz3.cliente (
    idCliente INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreCliente VARCHAR(50) UNIQUE,
    apellidoPaterno VARCHAR(40),
    
    paisCliente VARCHAR(40),
    sexoCliente VARCHAR(40),
    
    Telefono VARCHAR(30)
);
insert into cliente  values (1, 'Marco',  'Jaramillo', "Mexico","Hombre",   '6643111567' );
insert into cliente  values (2, 'Andrea', 'Gonzalez ',"Colombia","Mujer",    '6644987500' );
insert into cliente  values (3, 'Martha', 'Castro ', "Peru","Mujer",     '6648762555' );
insert into cliente  values (4, 'Dulce',  'Rodriguez', "Colombia","Mujer",   '6648869583' );
insert into cliente  values (5, 'Pedro',  'Perez',  "Colombia","Hombre",      '6645998834' );
insert into cliente  values (6, 'Natali', 'Garcia ',  "Colombia","Mujer",    '6645987677' );
insert into cliente  values (7, 'Alejandro', 'Hernandez',"Mexico","Hombre", '6649084766' );

CREATE TABLE IF NOT EXISTS bdMascotaFeliz3.productos (
    idProducto INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreProductos VARCHAR(50) UNIQUE,
     descripcion VARCHAR(50),
     
     marca VARCHAR(50),
     origenPais VARCHAR(50),
     
     precio double
);
insert into productos  values(0, 'Correa', 'Correa grande para perro',                                   "Canuto"  , "Mexico",          385.00);
insert into productos  values(0, 'Royal Canin', 'Alimento Seco para Perro Adulto Raza Pequeña ',         "Canuto"  , "Mexico",           1042.50);
insert into productos  values(0, 'Casa de Exterior', 'Casa de Exterior para Perro, Grande ',             "Pet Care", "USA",              4999.00);
insert into productos  values(0, 'Mueble Tipo Árbol', 'Árbol de 5 Niveles con Juguete y Arco para Gato ',     "Pet Care", "USA",         2999.00);
insert into productos  values(0, 'Cama', 'Harmony Cama Ovalada Ultra Suave para Gato Color',                  "Pet Care", "USA",         169 );
insert into productos  values(0, 'Tazon de Ceramica', 'Tazón de Cerámica Good Kitty Blanco para Gato',         "Canuto"  , "Mexico",     189 );
insert into productos  values(0, 'Ratoncitos', 'Ratoncitos con Plumas Colores para Gato, 2 Piezas',            "Pet Care", "USA",         47 );
insert into productos  values(0, 'Pista con Pluma', 'Pluma y Pelota con Luz Juguete para Gato, Rosa',         "Pet Care", "USA",          175);
insert into productos  values(0, 'Rascador', 'Rascador Interactivo Con Aves Mediano ',                        "Canuto"  , "Mexico",    135.20 );


 select * from cliente;
 select * from productos;




 
CREATE VIEW ClienteMujer_Colombiana
as
SELECT nombreCliente as Nombre, paisCliente as Pais,sexoCliente 
FROM cliente c 
WHERE paisCliente = 'Colombia' AND sexoCliente ="Mujer";
SELECT * FROM ClienteMujer_Colombiana

CREATE VIEW ClienteHombre_Mexico
as
SELECT nombreCliente as Nombre, paisCliente as Pais,sexoCliente 
FROM cliente c 
WHERE paisCliente = 'Mexico' AND sexoCliente ="Hombre";
SELECT * FROM ClienteHombre_Mexico

CREATE VIEW productoOrigen_Marca
as
SELECT nombreProductos,marca ,origenPais 
FROM productos p 
WHERE marca = "Canuto" AND origenPais  ="mexico";
SELECT * FROM productoOrigen_Marca

CREATE VIEW productoOrigen_Precio
as
SELECT nombreProductos as "Nombre",origenPais as Pais , precio as "Precio > 300"
FROM productos p 
WHERE origenPais  ="mexico" AND precio > 300;
SELECT * FROM productoOrigen_Precio



CREATE VIEW productoMarca_Precio
as
SELECT nombreProductos as "Nombre",marca as "Marca" , precio as "Precio < 200"
FROM productos p 
WHERE marca  ="Pet Care" AND precio < 200;
SELECT * FROM productoMarca_Precio





drop view productoOrigen_Precio;


















