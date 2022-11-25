DROP DATABASE IF EXISTS bdLibreriaOnline;
CREATE DATABASE bdLibreriaOnline CHARACTER SET utf8mb4;
USE bdLibreriaOnline;

CREATE TABLE tema (
  idTema INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreTema VARCHAR(150) NOT NULL
 
);
CREATE TABLE autor (
  idAutor INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreAutor VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL
 
);

CREATE TABLE editorial (
  idEditorial INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreEditoral VARCHAR(200) NOT NULL,
  pais VARCHAR(100) NOT NULL
 
);
DROP table libro;
CREATE TABLE libro (
  idLibro INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  titulo  VARCHAR(200) NOT NULL, 
  idAutor INT UNSIGNED NOT NULL, 
  idEditorial INT UNSIGNED NOT NULL,
  anioPublicacion INT UNSIGNED NOT NULL,
  idTema INT UNSIGNED NOT NULL,
  existencia INT UNSIGNED NOT NULL,
  precio decimal(8,2)  NOT NULL,
  
   FOREIGN KEY (idAutor) REFERENCES autor(idAutor),
   FOREIGN KEY (idEditorial) REFERENCES editorial(idEditorial),
   FOREIGN KEY (idTema) REFERENCES tema(idTema)
   
);

-- DATOS TEMA
INSERT INTO tema  VALUES(1, 'Literatura');
INSERT INTO tema  VALUES(2, 'Arte');
INSERT INTO tema  VALUES(3, 'Biograrfía');
INSERT INTO tema  VALUES(4, 'Cocina');
INSERT INTO tema  VALUES(5, 'Ciencia');
INSERT INTO tema  VALUES(6, 'Filosofía');
INSERT INTO tema  VALUES(7, 'Infantil');
INSERT INTO tema  VALUES(8, 'Idiomas');
INSERT INTO tema  VALUES(9, 'Tecnología');
INSERT INTO tema  VALUES(10,'Historia');
INSERT INTO tema  VALUES(11,'Superación Personal');



-- DATOS AUTORES id, nombres, apellidos
INSERT INTO autor  VALUES(1, 'Juan','Rulfo');
INSERT INTO autor  VALUES(2, 'Daniel','Habif');
INSERT INTO autor  VALUES(3, 'Joge','Bucary');
INSERT INTO autor  VALUES(4, 'Julio','Cortazar');
INSERT INTO autor  VALUES(5, 'G.Luis','Borges');
INSERT INTO autor  VALUES(6, 'Roberto','Bolaño');
INSERT INTO autor  VALUES(7, 'Miguel','De Cervantes Saavedra');
INSERT INTO autor  VALUES(8, 'Mario','Benedetti');
INSERT INTO autor  VALUES(9, 'Luis','spota');
INSERT INTO autor  VALUES(10, 'Jorge','Volpi');
INSERT INTO autor  VALUES(11, 'José','Saramago');
INSERT INTO autor  VALUES(12, 'Fiodor','Dostoievski');
INSERT INTO autor  VALUES(13, 'Taschen','Taschen');
INSERT INTO autor  VALUES(14, 'Taschen','Wildenstein');
INSERT INTO autor  VALUES(15, 'Eduardo','Subirats');
INSERT INTO autor  VALUES(16, 'Varios','Tachen');
INSERT INTO autor  VALUES(17, 'DK','DK Publishing');
INSERT INTO autor  VALUES(18, 'Tom','Sheehan');
INSERT INTO autor  VALUES(19, 'Mario','De Michel');
INSERT INTO autor  VALUES(20, 'Walter','Isaacson');
INSERT INTO autor  VALUES(21, 'Barack','Obama');
INSERT INTO autor  VALUES(22, 'José Ernesto','Infante Quintanilla');
INSERT INTO autor  VALUES(23, 'Iván','Millán Rojas');
INSERT INTO autor  VALUES(24, 'Mario','Fortunato');
INSERT INTO autor  VALUES(25, 'Irving','Quiroz');
INSERT INTO autor  VALUES(26, 'Karla','Hernández');
INSERT INTO autor  VALUES(27, '','Le Cordon Bleu International Bv');
INSERT INTO autor  VALUES(28, 'Héctor','Pérez Montiel');
INSERT INTO autor  VALUES(30, 'Raymond','Serway');
INSERT INTO autor  VALUES(31, '','Brown');
INSERT INTO autor  VALUES(32, 'Ron','Larson');
INSERT INTO autor  VALUES(33, 'Immanuel','Kant');
INSERT INTO autor  VALUES(34, 'Gustavo','Bueno');
INSERT INTO autor  VALUES(35, '','Aristoteles');
INSERT INTO autor  VALUES(36, '','Platon');
INSERT INTO autor  VALUES(37, 'J. Paul','Sartre');
INSERT INTO autor  VALUES(38, 'G.F','Hegel');
INSERT INTO autor  VALUES(39, 'Markus','Gabriel');
INSERT INTO autor  VALUES(40, 'Alain','Badiou');
INSERT INTO autor  VALUES(41, 'Edmund','Husserl');
INSERT INTO autor  VALUES(42, 'Roland','Barthes');
INSERT INTO autor  VALUES(43, 'Matin','Heidegger');
INSERT INTO autor  VALUES(44, 'Arthur','Schopenhauer');
INSERT INTO autor  VALUES(45, 'Bertrand','Russell');
INSERT INTO autor  VALUES(46, '','Assimil');
INSERT INTO autor  VALUES(47, 'Ane','Fox');
INSERT INTO autor  VALUES(48, 'Eich','Philipp');
INSERT INTO autor  VALUES(49, '','DK');
INSERT INTO autor  VALUES(51, '','Editorial Larousse');
INSERT INTO autor  VALUES(52, 'Enrique Jose','Reinosa');
INSERT INTO autor  VALUES(53, 'Dolores','Cuadra');
INSERT INTO autor  VALUES(54, 'Carlos','Azaustre');
INSERT INTO autor  VALUES(55, '','Deitel');
INSERT INTO autor  VALUES(56, 'LUIS','JOYANES AGUILAR');
INSERT INTO autor  VALUES(57, 'Marc','Loy started');
INSERT INTO autor  VALUES(58, 'Ian F.','Darwin');
INSERT INTO autor  VALUES(59, 'Olaf','Musch');
INSERT INTO autor  VALUES(61, '','Sommerville');
INSERT INTO autor  VALUES(62, 'Roger S.','Pressman');
INSERT INTO autor  VALUES(63, 'Neil','Wilkin');
INSERT INTO autor  VALUES(64, 'Donald K','Burleson');
INSERT INTO autor  VALUES(65, 'Wes','Mckinney');
INSERT INTO autor  VALUES(66, 'Joseph','Albahari');
INSERT INTO autor  VALUES(67, 'Robin','Nixon');
INSERT INTO autor  VALUES(68, 'Javier','Martín Juan');
INSERT INTO autor  VALUES(69, 'Daniel','Cosío Villegas');
INSERT INTO autor  VALUES(70, 'Orlando','Figes');
INSERT INTO autor  VALUES(71, 'Ernst H.','Gombrich');
INSERT INTO autor  VALUES(72, 'Paco','Moreno');
INSERT INTO autor  VALUES(73, 'Paulo','Coelho');
INSERT INTO autor  VALUES(74, 'John','Gray');
INSERT INTO autor  VALUES(75, 'Johnson','Spencer');
INSERT INTO autor  VALUES(76, 'W. Dyer','Wayne');



-- DATOS EDITORIAL id, nombre, pais
INSERT INTO editorial  VALUES(1, 'Editorial RM', 'España');
INSERT INTO editorial  VALUES(2, 'Harper Collins', 'México');
INSERT INTO editorial  VALUES(3, 'Océano', 'España');
INSERT INTO editorial  VALUES(4, 'Alfaguara', 'España');
INSERT INTO editorial  VALUES(5, 'Alianza Editorial', 'España');
INSERT INTO editorial  VALUES(6, 'Anagrama', 'España');
INSERT INTO editorial  VALUES(7, 'DEBOLSILLO', 'España');
INSERT INTO editorial  VALUES(8, 'Planeta', 'México');
INSERT INTO editorial  VALUES(9, 'Porrua', 'México');
INSERT INTO editorial  VALUES(10, 'TASCHEN', 'España');
INSERT INTO editorial  VALUES(11, 'Fonde de Cultura Económica', 'México');
INSERT INTO editorial  VALUES(12, 'DK Publishing', 'Inglaterra');
INSERT INTO editorial  VALUES(13, 'Penguin Random House Grupo Editorial', 'España');
INSERT INTO editorial  VALUES(14, 'Crown Publishing Group', 'Estados Unidos');
INSERT INTO editorial  VALUES(15, 'DEBATE Editorial', 'España');
INSERT INTO editorial  VALUES(16, 'Larousse México', 'México');
INSERT INTO editorial  VALUES(17, 'Le Cordon Bleu International Bv', 'España');
INSERT INTO editorial  VALUES(18, 'Editorial PATRIA', ' México');
INSERT INTO editorial  VALUES(19, 'Cengage Learning', 'Estados Unidos');
INSERT INTO editorial  VALUES(21, 'Editorial PEARSO ', 'México');
INSERT INTO editorial  VALUES(22, 'Editorial Assimil', 'España');
INSERT INTO editorial  VALUES(23, 'Para Dummies', 'España');
INSERT INTO editorial  VALUES(24, 'Editorial ALFAOMEGA', 'Argentina');
INSERT INTO editorial  VALUES(25, 'Editorial MARCOMBO', 'México');
INSERT INTO editorial  VALUES(26, 'Editorial MCGRAW HILL', 'México');
INSERT INTO editorial  VALUES(27, 'OReilly', 'Estados Unidos');
INSERT INTO editorial  VALUES(28, 'Springer', 'Estados Unidos');
INSERT INTO editorial  VALUES(29, 'Bravex Publications', 'México');
INSERT INTO editorial  VALUES(30, 'Rampant Techpres', 'Estados Unidos');
INSERT INTO editorial  VALUES(31, 'Wiley', 'Estados Unidos');
INSERT INTO editorial  VALUES(32, 'Editorial TAURUS', 'España');
INSERT INTO editorial  VALUES(33, 'Editorial Paidós', 'España');
INSERT INTO editorial  VALUES(34, 'Editorial GRIJALBO', 'España');
INSERT INTO editorial  VALUES(35, 'Editorial GREDOS', 'España');
INSERT INTO editorial  VALUES(36, 'Editorial ALTAYA', 'España');
INSERT INTO editorial  VALUES(37, 'AKAL EDITORIAL', 'Argentina');



  SELECT * FROM libro;
 
 
  
-- DATOS LIBROL id, titulo,  1 idAutor, 2 idEditorial,  3 anioPublicacion,  4 idTema, existencia, precio
-- INSERT INTO tema  VALUES(1 idLibro, 'titulo', 1 idAutor, 2 idEditorial,  3 anioPublicacion,  4 idTema, int existencia, double precio);
 --        LITERATURA     id         titulo                      Au,edi,anio,tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'El gallo de oro y otros relatos', 1, 1 , 2005,  1, 5,   130);
 INSERT INTO libro  VALUES(0 , 'Pedro Páramo',                    1, 1 , 2021,  1, 20,  102);
 INSERT INTO libro  VALUES(0 , 'El llano en llamas',              1, 1 , 2017,  1, 35,  107);
 INSERT INTO libro  VALUES(0 , 'Las trampas del miedo',           2, 2 , 2004,  1, 18,  149);
 INSERT INTO libro  VALUES(0 , 'Un cuento triste no tan trsite',  3, 3 , 2022,  1, 20,  190);
 INSERT INTO libro  VALUES(0 , 'Rayuela',                         4, 4 , 1993,  1, 7,   326);
 INSERT INTO libro  VALUES(0 , 'Aleph',                           5, 5 , 2005,  1, 3,   162);
 INSERT INTO libro  VALUES(0 , 'Inquisisiones',                   5, 5 , 2014,  1, 9,   175);
 INSERT INTO libro  VALUES(0 , 'Ficciones',                       5, 5 , 2015,  1, 5,   189);
 INSERT INTO libro  VALUES(0 , 'Detectives salvajes',             6, 6 , 2020,  1, 16,  574);
 INSERT INTO libro  VALUES(0 , 'Estrella distante',               6, 6 , 2022,  1, 5,   247);
 INSERT INTO libro  VALUES(0 , 'Don Quijote de la Mancha',        7, 4 , 2015,  1, 39,  385);
 INSERT INTO libro  VALUES(0 , 'La tregua',                       8, 7 , 2019,  1, 9,   308.78);
 INSERT INTO libro  VALUES(0 , 'QUIEN DE NOSOTROS',               8, 7 , 2020,  1, 8,   137);
 INSERT INTO libro  VALUES(0 , 'La sangre enemiga',               9, 8 , 2015,  1, 45,  99);
 INSERT INTO libro  VALUES(0 , 'Casi el paraíso',                 9, 8 , 2014,  1, 2,   199);
 INSERT INTO libro  VALUES(0 , 'Memorial del engaño',             10, 4 ,2023,  1, 4,   179);
 INSERT INTO libro  VALUES(0 , 'Las intermitencias de la muerte', 11, 7 ,2015,  1, 15,  226);
 INSERT INTO libro  VALUES(0 , 'El evangelio según Jesucristo',   11, 7 ,2016,  1, 13,  306.27);
 INSERT INTO libro  VALUES(0 , 'Crimen y castigo',                12, 9 ,2014,  1, 3,   153);
--          ARTE          id         titulo                                    Au, edi, anio, tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'El triunfo del impresionismo',                  13, 10 , 2022,  2,  17,  321);
 INSERT INTO libro  VALUES(0 , 'Cézanne',                                       13, 10 , 2007,  2,  21,  276);
 INSERT INTO libro  VALUES(0 , 'Van Gogh',                                      13, 10 , 1989,  2,  3,   423);
 INSERT INTO libro  VALUES(0 , 'Monet. The Triumph of Impressionism',           14, 10 , 2014,  2,  7,   503.14);
 INSERT INTO libro  VALUES(0 , 'El Muralismo Mexicano. Mito Y Esclarecimiento', 15, 11 , 2021,  2,  10,  146);
 INSERT INTO libro  VALUES(0 , 'Diego Rivera. Obra Mural Completa',             13, 10 , 2022,  2,  1,   1987.71);
 INSERT INTO libro  VALUES(0 , 'Pinta la Revolución. Arte moderno mexicano',    16, 10 , 2022,  2,  134, 1843);
 INSERT INTO libro  VALUES(0 , 'El Libro de la Música Clásica',                 17, 12 , 2019,  2,  3,   493.71);
 INSERT INTO libro  VALUES(0 , 'The Cure',                                      18, 10 , 2022,  2,  31,  1046.22);
 INSERT INTO libro  VALUES(0 , 'Las Vanguardias Artisticas Del Siglo 20',       19, 5 ,  2002,  2,  6,    607);

--          BIOGRAFIA       id         titulo                                   Au, edi, anio, tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'Steve Jobs. La Biografía',                      20, 13 ,   2015, 3,   11, 291 );
 INSERT INTO libro  VALUES(0 , 'A Promised Land',                               21, 14 ,   2020, 3,   20, 617.12);
 INSERT INTO libro  VALUES(0 , 'Leonardo da Vinci: La biografía',               20, 15 ,   2011, 3,   5,  169);
 INSERT INTO libro  VALUES(0 , 'Biografía para encontrarme',                    8,  7 ,    2017, 3,   4,  139);
 INSERT INTO libro  VALUES(0 , 'Pedro Infante: El ídolo inmortal',              22, 3 ,    2015, 3,   3,  210);

 --          COCINA       id         titulo                                           Au, edi, anio, tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'RECETAS KETO para todos los días',                    23, 16 , 2022,  4, 4,196 );
 INSERT INTO libro  VALUES(0 , '50 Mejores Recetas de Ensaladas Para Bajar de Peso',  24, 16 , 2013,  4, 6, 386);
 INSERT INTO libro  VALUES(0 , 'Panes Mexicanos',                                     25, 16 , 2019,  4, 8, 319);
 INSERT INTO libro  VALUES(0 , 'Cocina Sana con Pizca de Sabor: La Guía Práctica Para Nutrir Tu Cuerpo', 26, 13 , 2019,  4, 2, 266);
 INSERT INTO libro  VALUES(0 , 'Escuela de Pastelería',                                27, 17 , 2022,  4, 3, 379);

 --          CIENCIA       id         titulo                                Au, edi, anio, tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'Física General',                            28, 18 , 2021,   5,  21,  390);
 INSERT INTO libro  VALUES(0 , 'Física Para Ciencias e Ingeniería. Vol. 1', 30, 19, 2022,    5,  5,   438);
 INSERT INTO libro  VALUES(0 , 'Cálculo. Trascendentes tempranas',          30, 19 , 2013,   5,  12,  587);
 INSERT INTO libro  VALUES(0 , 'Quimica La Ciencia Central',                31, 21 , 2023,   5,  5,   570);
 INSERT INTO libro  VALUES(0 , 'Matemáticas I: Cálculo diferencial',        32, 19 , 2018,   5,  7,   280);
 
  --        FILOSOFIA       id         titulo                                Au, edi, anio, tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'Critica de la razon pura',                   33,  32, 2001,  4,  16, 489);
 INSERT INTO libro  VALUES(0 , 'Ensayos Materialistas',                      34,  32, 1998,  4,  36, 633);
 INSERT INTO libro  VALUES(0 , 'Metafisica',                                 35,  35, 1999,  4,  16, 135);
 INSERT INTO libro  VALUES(0 , 'Ego trasendental',                           34,  32, 2022,  4,  8,  574);
 INSERT INTO libro  VALUES(0 , 'El banquete',                                36,  35, 2021,  4,  2,  268);
 INSERT INTO libro  VALUES(0 , 'El ser y la nada',                           37,  36, 2001,  4,  23, 622);
 INSERT INTO libro  VALUES(0 , 'Las moscas',                                 37,  36, 2012,  4,  3,  203);
 INSERT INTO libro  VALUES(0 , 'La nausea',                                  37,  36, 2015,  4,  5,  235);
 INSERT INTO libro  VALUES(0 , 'Fenomenologia del espiritu',                 38,  11, 1989,  4,  38, 374);
 INSERT INTO libro  VALUES(0 , 'Por que el mundo no existe',                 39,  37, 2022,  4,  93, 289);
 INSERT INTO libro  VALUES(0 , 'El ser y el acontecimiento',                 40,  37, 2001,  4,  28, 748);
 INSERT INTO libro  VALUES(0 , 'Ideas relativas a una fenomenologia',        41,  11, 1982,  4,  7,  389);
 INSERT INTO libro  VALUES(0 , 'El sussurro del lenguaje',                   42,  33, 1974,  4,  3,  326);
 INSERT INTO libro  VALUES(0 , 'El grado cero de la escritura',              42,  33, 2003,  4,  5,  162);
 INSERT INTO libro  VALUES(0 , 'La muerte del autror',                       42,  33, 2001,  4,  4,  189);
 INSERT INTO libro  VALUES(0 , 'EL ser y el tiempo',                         43,  11, 1998,  4,  3,  264);
 INSERT INTO libro  VALUES(0 , 'El mundo como voluntad y representacion',    44,  9,  2002,  4,  0,  129);
 INSERT INTO libro  VALUES(0 , 'El organon',                                 35,  35, 1989,  4,  1,  325);
 INSERT INTO libro  VALUES(0 , 'Los problemas de la filosofía',              45,  35, 2021,  4,  2,  254);
 INSERT INTO libro  VALUES(0 , 'Fundamentos de filosofía',                   45,  35, 2022,  4,  7,  231);


  --          IDIOMAS       id         titulo                                     Au, edi, anio, tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'El inglés americano',                              46, 22 , 2021,  8, 4,  1624);
 INSERT INTO libro  VALUES(0 , 'Alemán para Dummies',                              47, 23 , 2021,  8, 23,  483);
 INSERT INTO libro  VALUES(0 , 'Adquirir Fluidez en Alemán: 150 Historias Cortas', 48, 22 , 2020,  8, 6,   232);
 INSERT INTO libro  VALUES(0 , 'English for Everyone Gramàtica Inglesa',           49, 12 , 2017,  8, 5,   492);
 INSERT INTO libro  VALUES(0 , 'Diccionario School Inglés Español',                51, 16 , 1999,  8, 2,   115);
 
SELECT * FROM editorial e;
    --          TECNOLOGIA       id         titulo                                                                Au, edi, anio, tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'Base de datos',                                                                   52, 24, 2012,  9, 30,  495);
 INSERT INTO libro  VALUES(0 , 'Desarrollo de base de datos',                                                     53, 24,  2003,  9, 25,  374);
 INSERT INTO libro  VALUES(0 , 'Algoritmos y diagramas',                                                          53, 24,  2015,  9, 4,   322);
 INSERT INTO libro  VALUES(0 , 'JavaScript',                                                                      54, 24,  2020,  9, 9,   437);
 INSERT INTO libro  VALUES(0 , 'Aprender SQL Server',                                                             54, 25,  2013,  9, 87,  593);
 INSERT INTO libro  VALUES(0 , 'Como Programar En Java',                                                          55, 21,  2014,  9, 34,  856);
 INSERT INTO libro  VALUES(0 , 'Programacion En C/C++ Java Y Uml',                                                56, 26,  2017,  9, 56,  968);
 INSERT INTO libro  VALUES(0 , 'Learning Java: An Introduction to Real-World Programming with Java',              57, 27,  2021,  9, 22, 1384);
 INSERT INTO libro  VALUES(0 , 'Java Cookbook: Problems and Solutions for Java Developers',                       58, 27,  2020,  9, 4,  1235);
 INSERT INTO libro  VALUES(0 , 'Design Patterns with Java: An Introduction',                                      59, 28,  2023,  9, 8,  1235);
 INSERT INTO libro  VALUES(0 , 'Ingenieria De Software',                                                          61, 21,  2011,  9, 43,  640);
 INSERT INTO libro  VALUES(0 , 'Ingenieria De Software: un enfoque practico',                                     62, 26,  2001,  9, 3,   814);
 INSERT INTO libro  VALUES(0 , 'Inteligencia Artificial: Una Guía Completa',                                      63, 29,  2020,  9, 2,   645);
 INSERT INTO libro  VALUES(0 , 'Advanced Oracle SQL Tuning: The Definitive Reference',                            64, 30,  2014,  9, 7,  1149);
 INSERT INTO libro  VALUES(0 , 'Python for Data Analysis: Data Wrangling with Pandas',                            65, 27,  2022,  9, 15, 1072);
 INSERT INTO libro  VALUES(0 , 'Spring Boot: Up and Running: Building Cloud Native Java and Kotlin Applications', 66, 27,  2021,  9, 8,   413);
 INSERT INTO libro  VALUES(0 , 'C# 10 in a Nutshell: The Definitive Reference',                                   66, 27,  2022,  9, 14,  576);
 INSERT INTO libro  VALUES(0 , 'HTML and CSS: Design and Build Websites',                                         67, 31,  2017,  9, 3,  4378);
 INSERT INTO libro  VALUES(0 , 'Aprender PHP, MySQL y JavaScript',                                                67, 25,  2021,  9, 9,   253);
 INSERT INTO libro  VALUES(0 , 'UML Práctico: Aprende UML paso a paso',                                           68, 25,  2016,  9, 4,   388);
 
 --       HISTORIA          id         titulo                 Au, edi, anio, tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'Historia minima de México',   69, 5,  1996,  10,  3,  173);
 INSERT INTO libro  VALUES(0 , 'La historia de Rusia',        70, 32, 2022,  10,  2,  423);
 INSERT INTO libro  VALUES(0 , 'Breve historia del mundo',    71, 33, 2003,  10,  6,  499);
 INSERT INTO libro  VALUES(0 , 'Historias de una pandemia',   72, 13, 2019,  10,  2,  219);
 INSERT INTO libro  VALUES(0 , 'El Libro de la Historia',     17, 12, 2022,  10,  7,  639);
 
 --  SUPERACION PERSOAL    id         titulo                   Au, edi, anio, tema,exis,precio 
 INSERT INTO libro  VALUES(0 , 'El alquimista',                 73, 34, 2017,  4, 5, 149);
 INSERT INTO libro  VALUES(0 , 'Los hombres son de marte',      74, 7,  2021,  4, 4, 253);
 INSERT INTO libro  VALUES(0 , 'Quien Se Ha Llevado Mi Queso',  75, 34, 2022,  4, 0, 283);
 INSERT INTO libro  VALUES(0 , '7 DÍAS PARA CAMBIAR TU VIDA',   76, 13, 2021,  4, 0, 431);
 INSERT INTO libro  VALUES(0 , 'Tus zonas erróneas',            76, 13, 2020,  4, 5, 279);
 -- EJEMPLO INSERT INTO libro  VALUES(1 , '', 1, 2 , 3,  4, , );


-- ::::::::::::::::::: C  O   N   S   U   L   T   A   S :::::::::::::::::::::::

SELECT * FROM editorial e ; 
SELECT * FROM tema t ;
SELECT * FROM autor a ;
SELECT * FROM  libro l ;
SELECT  * from autor WHERE nombreAutor  ='Juan';
SELECT  * from libro WHERE idAutor = 63; 
SELECT * FROM libro WHERE idAutor =1;


