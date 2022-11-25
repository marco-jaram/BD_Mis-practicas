DROP DATABASE IF EXISTS bdFarmacia;

CREATE DATABASE bdFarmacia;
USE bdFarmacia;

-- Tabla medicina --
CREATE TABLE IF NOT EXISTS bdFarmacia.medicina (
idMedicina INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreMedicina VARCHAR(50) UNIQUE,
    nombreLaboratorio VARCHAR (50),
    precioMedicina double,
    cantidadExistencia FLOAT
    );
   
insert into medicina values (0, 'Floratil probióticos 200 mg', 'Pfizer', 120.00, 10);
insert into medicina values (0, 'Alin Nasal 20 ml ', 'Portugal', 890.00, 5);
insert into medicina values (0, 'ControLip 160 mg', 'Bayer', 85.00, 7);
insert into medicina values (0, 'Clexane 40 mg', 'Vitalis', 480.00, 3);
insert into medicina values (0, 'Salbutamol 100pg', 'BiosynTec', 97.00, 2);

-- Tabla ventas --
CREATE TABLE IF NOT EXISTS bdFarmacia.ventas (
idVentas INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    idMedicina INT NOT NULL,
    numeroFactura VARCHAR(10) UNIQUE,
    fechaVenta DATE,
    descripcionArticulo VARCHAR(60),
    precioArticulo double,
    cantidad FLOAT,
    totalVenta double,
FOREIGN KEY (idMedicina)
        REFERENCES bdFarmacia.medicina (idMedicina));

insert into ventas values (0, 1, 'C0020', '2022-01-11', 'ControLip 160 mg', 120.00, 2, 240.00);
insert into ventas values (0, 2, 'C00321', '2022-06-02', 'Floratil probióticos 200 mg', 480.00, 1, 480.00);
insert into ventas values (0, 3, 'C0022', '2022-06-18', 'Floratil probióticos 200 mg', 97.00, 4, 388.00);
insert into ventas values (0, 4, 'C0023', '022-06-11', 'Ibuprofeno 800mg', 890.00, 1, 890.00);
insert into ventas values (0, 5, 'C0024', '2022-10-26', 'Clexane 40 mg', 480.00, 2, 960.00);

SET FOREIGN_KEY_CHECKS=0;
select * from medicina;
select * from ventas;

-- función count --
SELECT COUNT(*) as NumProductos FROM medicina
WHERE precioMedicina > 200;

SELECT COUNT(*) as NumVentas FROM ventas
WHERE totalVenta < 500;

-- la funcion max --
SELECT MAX(precioMedicina) FROM medicina;

SELECT MAX(totalVenta) FROM ventas;

-- la funcion sum --
SELECT SUM(precioMedicina) FROM medicina;

SELECT SUM(totalVenta) FROM ventas;

-- la condición where --
SELECT precioMedicina FROM medicina
WHERE precioMedicina < 300;

SELECT
	totalVenta
FROM
	ventas
WHERE
	totalVenta > 480;

-- dos tablas --
SELECT
(
SELECT sum(precioMedicina)
FROM medicina
) as PRECIOMEDICINA,
(
SELECT sum(totalVenta)
FROM ventas
) as TOTALVENDIDO;

SELECT
(
SELECT sum(cantidadExistencia)
FROM medicina
) as EXISTENCIAENFARMACIA,
(
SELECT sum(cantidad)
FROM ventas
) as UNIDADESVENDIDAS;

