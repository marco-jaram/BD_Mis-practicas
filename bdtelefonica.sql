DROP DATABASE IF EXISTS bdTelefonia;
CREATE DATABASE bdTelefonia CHARACTER SET utf8mb4;
USE bdTelefonia;

CREATE TABLE cliente (

  idCliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreCliente VARCHAR(150) NOT NULL,
  correo VARCHAR(150) NOT NULL,
  domicilio VARCHAR(150) NOT NULL,
  telefonoCliente VARCHAR(150) NOT NULL,
  tarjeta INT
 
);

CREATE TABLE tipoLlamada (
  idTipoLlamada INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  tipoLlamada INT UNSIGNED NOT NULL
);


CREATE TABLE llamadas(
  idLlamadas INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  inicio date,
  fin date,
 idTipoLlamada INT UNSIGNED NOT NULL,
  costo float,
   FOREIGN KEY (idTipoLlamada) REFERENCES tipoLlamada(idTipoLlamada)
);


CREATE TABLE  factura(
  idFactura INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  numeroFactura INT NOT NULL,
  mesFacturado date,
  idCliente INT UNSIGNED NOT NULL,
  idTipoLlamada INT UNSIGNED NOT NULL,
  costo float,
 FOREIGN KEY (idCliente) REFERENCES cliente(idCliente),
 FOREIGN KEY (idTipoLlamada) REFERENCES tipoLlamada(idTipoLlamada)
 );

 
SELECT * FROM cliente;
SELECT * FROM tipoLlamada;
SELECT * FROM llamadas;
SELECT * FROM factura;
