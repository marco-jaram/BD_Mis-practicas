CREATE database IF NO exists bdLavanderia;
DROP database bdLavanderia;
use bdLavanderia;
CREATE TABLE IF NOT EXISTS bdLavanderia.cliente (
    idCliente INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreCliente VARCHAR(50) UNIQUE,
    apellidoPaterno VARCHAR(40),
    Telefono VARCHAR(30)
);


insert into cliente  values (0, 'Marco',  'Jaramillo',    '6643111567' );
insert into cliente  values (0, 'Andrea', 'Gonzalez',    '6644987500' );
insert into cliente  values (0, 'Martha', 'Castro',      '6648762555' );
insert into cliente  values (0, 'Dulce',  'Rodriguez',    '6648869583' );
insert into cliente  values (0, 'Pedro',  'Perez',        '6645998834' );
insert into cliente  values (0, 'Natali', 'Garcia ',      '6645987677' );
insert into cliente  values (0, 'Alejandro', 'Hernandez', '6649084766' );

SELECT * FROM bdLavanderia.cliente;

CREATE TABLE IF NOT EXISTS bdLavanderia.servicio (
    idProducto INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreServicio VARCHAR(50) UNIQUE,
     descripcion VARCHAR(50),
     precio double
);
insert into servicio  values(0, 'Correa', 'Correa grande para perro', 385.00);
insert into servicio   values(0, 'Royal Canin', 'Alimento Seco para Perro Adulto Raza Pequeña ', 1042.50);
insert into servicio   values(0, 'Casa de Exterior', 'Casa de Exterior para Perro, Grande ',  4999.00);
insert into servicio   values(0, 'Mueble Tipo Árbol', 'Árbol de 5 Niveles con Juguete y Arco para Gato ', 2999.00);
insert into servicio   values(0, 'Cama', 'Harmony Cama Ovalada Ultra Suave para Gato Color', 169 );
insert into servicio   values(0, 'Tazon de Ceramica', 'Tazón de Cerámica Good Kitty Blanco para Gato', 189 );
insert into servicio   values(0, 'Ratoncitos', 'Ratoncitos con Plumas Colores para Gato, 2 Piezas', 47 );
insert into servicio   values(0, 'Pista con Pluma', 'Pluma y Pelota con Luz Juguete para Gato, Rosa', 175);
insert into servicio   values(0, 'Rascador', 'Rascador Interactivo Con Aves Mediano ',135.20 );