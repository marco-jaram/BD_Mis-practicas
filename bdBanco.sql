-- Aspecto 2:
-- Crea por lo menos dos tablas que permitan administrar la información de un
--- banco. Incluye el número de campos que consideres pertinentes. Ingresa 5
--- registros y realiza los siguientes ejercicios:
--- 3  transacciones que utilicen la instrucción update
--  3  transacciones que utilicen la instrucción delete
--  3  transacciones que utilicen la instrucción truncate

DROP DATABASE IF EXISTS bdBanco;
CREATE DATABASE bdBanco CHARACTER SET utf8mb4;
USE bdBanco;

CREATE TABLE cliente (
  idCliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreCliente VARCHAR(150) NOT NULL,
  curpCliente VARCHAR(150) NOT NULL,
  telefonoCliente VARCHAR(150) NOT NULL
);
CREATE TABLE cuenta (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  numeroCuenta  INT UNSIGNED NOT NULL,
  saldo decimal(8,2)  NOT NULL,
  idCliente INT UNSIGNED NOT NULL,
  FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

CREATE TABLE  prestamo (
  idPrestamo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  plazoEnMeses INT UNSIGNED NOT NULL,
  idCliente INT UNSIGNED NOT NULL,
  fechaInicio date,
FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);
--                          id, nombre , curp, telefono
INSERT  INTO cliente  VALUES(0, 'Marco',     'JSKORUJFGH',  '6643818572');
INSERT  INTO cliente  VALUES(0, 'Dulce',     'OSRORUJQTW',  '6686274582');
INSERT  INTO cliente  VALUES(0, 'Celene',    'LJSTQLKUUEN', '6692313592');
INSERT  INTO cliente  VALUES(0, 'Pedro',     'POLORGIFGH',  '6628147532');
INSERT  INTO cliente  VALUES(0, 'Cristian',  'BVXTEUOITN',  '6633667572');
INSERT  INTO cliente  VALUES(0, 'Mario',     'EWDSRPKMHU',  '6673978582');

--  id num cuenta int, saldo decimal, id cliente int
INSERT INTO cuenta  VALUES(0, 803854, 4598.68, 1);
INSERT INTO cuenta  VALUES(0, 803854, 20875.45, 2);
INSERT INTO cuenta  VALUES(0, 803854, 78921.50, 3);
INSERT INTO cuenta  VALUES(0, 803854, 43848.32, 4);
INSERT INTO cuenta  VALUES(0, 803854, 347.40, 5);
INSERT INTO cuenta  VALUES(0, 803854, 238.89, 6);


INSERT INTO prestamo  VALUES(0, 30,1, '2021-01-01');
INSERT INTO prestamo  VALUES(0, 60,2, '1998-06-01');
INSERT INTO prestamo  VALUES(0, 30,3, '2022-03-01');
INSERT INTO prestamo  VALUES(0, 90,4, '2014-12-01');
INSERT INTO prestamo  VALUES(0, 25,5, '2017-04-01');
INSERT INTO prestamo  VALUES(0, 60,6, '2022-06-01');


--  ::::::::  C O N S U T A S  :::::::::
SELECT * FROM cliente;
SELECT * FROM cuenta;
SELECT * FROM prestamo;

TRUNCATE table cuenta ; 
TRUNCATE table cliente ; 
TRUNCATE table prestamo ; 

UPDATE cuenta set saldo = 30000.50
WHERE  idCliente = 3;

UPDATE cliente  set curpCliente = 'DUMLOGIFGH'
WHERE  nombreCliente  = 'Pedro';

UPDATE prestamo  set saldo = 500.40
WHERE  fechaInicio  = '2022-10-02';

DELETE FROM cuenta  
WHERE idCliente  = 6;
DELETE FROM cuenta  
WHERE idCliente  = 4;
DELETE FROM cuenta  
WHERE idCliente  = 7;



