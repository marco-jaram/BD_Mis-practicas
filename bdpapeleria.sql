DROP DATABASE IF EXISTS bdPapeleria;

CREATE DATABASE bdPapeleria CHARACTER SET utf8mb4;
USE bdPapeleria;

-- Primera tabla Clientes
CREATE TABLE IF NOT EXISTS bdPapeleria.cliente (
    idCliente INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreCliente VARCHAR(50) UNIQUE,
    apellidoPaterno VARCHAR(40),
    Telefono VARCHAR(30)
);
insert into cliente  values (1, 'Marco',  'Jaramillo',    '6643111567' );
insert into cliente  values (2, 'Andrea', 'Gonzalez ',    '6644987500' );
insert into cliente  values (3, 'Martha', 'Castro ',      '6648762555' );
insert into cliente  values (4, 'Dulce',  'Rodriguez',    '6648869583' );
insert into cliente  values (5, 'Pedro',  'Perez',        '6645998834' );
insert into cliente  values (6, 'Natali', 'Garcia ',      '6645987677' );
insert into cliente  values (7, 'Alejandro', 'Hernandez', '6649084766' );

CREATE TABLE IF NOT EXISTS bdPapeleria.producto (
    idProducto INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreProducto VARCHAR(150) UNIQUE,
     precio double
);
insert into producto  values(1, 'Libreta-Pato-Rayas-Azul-Marino-25-5x18-cm-40-Hojas', 47.92);
insert into producto  values(2, 'Libreta Eco Friendly Rosa 14.2x20.8 cm 100 Hojas', 103.00);
insert into producto  values(3, 'Paquete De Plumas Tinta Negra 0.2 mm, 0.5 mm, 1.0 mm 5 Piezas', 185.90);
insert into producto  values(4, 'Paquete De Marcatextos Punta Fina Brillantes 6 Piezas', 123.00);
insert into producto  values(5, 'Lapicera-Sint-tica-Negra-14-5x21-8x4-cm-3-Piezas-2-13519', 159.92);
insert into producto  values(6, 'Despachador De Cinta Adhesiva Rosa 10.3x4.4x5.6 cm', 89.00);
insert into producto  values(7, 'Lapicera-100-Algod-n-Verde-22x17-5-cm-2-13134', 271.00);
insert into producto  values(8, 'Corrector-Modelo-SC-7-Rojo-10M-2-8662', 39.00);
insert into producto  values(9, 'Bloc De Notas Toy Story Buzz Lightyear Disney 7.5x7.2 cm 80 Hojas', 35.00);
insert into producto  values(10, 'Ligas De Goma Candy Rainbow Series En Bola Multicolor', 57.00);
insert into producto  values(11, 'Tijeras Escolares Hierro Azules 13 cm', 82.00);
insert into producto  values(12, 'Calculadora-Fruit-Series-Aguacate-Mini-Verde-2-6123', 95.80);
insert into producto  values(13, 'Planilla-De-Stickers-Alfabeto-26-Piezas-2-7954', 38.60);
insert into producto  values(14, 'Plantilla-De-Stickers-Toy-Story-Lotso-Disney-18-Piezas-2-13546', 45.50);

CREATE TABLE IF NOT EXISTS bdPapeleria.vendedor (
    idVendedor INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreVendedor VARCHAR(50) UNIQUE,
    apellidoPaterno VARCHAR(40),
    Telefono VARCHAR(30)
);
insert into vendedor  values (1, 'Lizeth',  'Rodriguez',    '6647419917' );
insert into vendedor  values (2, 'Alicia',  'Galaviz',      '6642283292' );
insert into vendedor  values (3, 'Mario',   'Gonzalez ',    '6644627350' );
insert into vendedor  values (4, 'Edgar',   'Ruiz',         '6646574355' );
insert into vendedor  values (5, 'Karla',   'Perez',        '6649938683' );

CREATE TABLE IF NOT EXISTS bdPapeleria.factura (
    idFactura INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    idCliente INT,
    idVendedor INT,
     idProducto INT,
     total double,
     FOREIGN KEY (idCliente)
	   REFERENCES cliente (idCliente),
	 FOREIGN KEY (idProducto)
	   REFERENCES producto (idProducto),
	 FOREIGN KEY (idVendedor)
	   REFERENCES vendedor (idVendedor)
);

insert into factura  values(0, 1, 3, 14, 7.00);
insert into factura  values(0, 5, 2, 1,  793.00);
insert into factura  values(0, 3, 2, 7,  793.00);
insert into factura  values(0, 7, 3, 3,  793.00);
insert into factura  values(0, 3, 1, 12, 793.00);
insert into factura  values(0, 2, 1, 10, 793.00);

SELECT * FROM bdPapeleria.factura;
SELECT * FROM bdPapeleria.cliente c ;
SELECT * FROM bdPapeleria.producto p ;

DROP table cliente;
DROP table producto;
DROP table factura;

ALTER TABLE cliente add column  direccion varchar(50);
ALTER TABLE cliente add column   numeroEmpleado INT;
ALTER TABLE cliente add column  turno varchar(50);
ALTER TABLE producto  add column  descripcion varchar(150);
ALTER TABLE producto  add column  existencia varchar(50);















