DROP DATABASE IF EXISTS pruebota;
CREATE DATABASE pruebota CHARACTER SET utf8mb4;
USE pruebota;

CREATE TABLE cliente (
  idCliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL
 
);

CREATE TABLE comercial (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
 
);

DROP table pedido;
CREATE TABLE pedido (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  total DOUBLE NOT NULL,
   idCliente INT UNSIGNED NOT NULL,
   FOREIGN KEY (idCliente) REFERENCES cliente(idCliente) 
);

INSERT INTO  cliente  VALUES (1, 'Aarón', 'Rivero');

INSERT INTO comercial VALUES(1, 'Daniel');

INSERT INTO pedido VALUES(1, 150, 1);




SELECT * FROM pedido p  ;
SELECT * FROM comercial c  ;
SELECT * FROM cliente c  ;

SELECT id_cliente FROM pedido p  ;












