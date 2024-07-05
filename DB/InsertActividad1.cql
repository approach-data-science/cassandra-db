USE bibliotecaXYZ;

-- Insertar datos de autores
INSERT INTO Tabla3_Autor (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD) VALUES ('AUT1', 'Juan Rulfo', {'Premio1', 'Premio2'}, 2);
INSERT INTO Tabla3_Autor (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD) VALUES ('AUT2', 'Rafael Pombo', {'Premio1'}, 1);
INSERT INTO Tabla3_Autor (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD) VALUES ('AUT3', 'Gabriel Garcia', {'Premio Planeta','Gaviota de Oro', 'Premio2', 'Nobel'}, 1);
INSERT INTO Tabla3_Autor (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD) VALUES ('AUT4', 'Plinio Apuleyo', {'Premio1'}, 1);
INSERT INTO Tabla3_Autor (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD) VALUES ('AUT5', 'Ramon Illan', {'Premio Planeta'}, 1);


INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre) VALUES('AUT1', 'Juan Rulfo', 'Premio1', 2, 'Mexico');
INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre) VALUES('AUT1', 'Juan Rulfo', 'Premio2', 2, 'Mexico');
INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre) VALUES('AUT2', 'Rafael Pombo', 'Premio1', 1, 'Colombia');
INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre) VALUES('AUT3', 'Gabriel Garcia', 'Premio Planeta', 1, 'Colombia');
INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre) VALUES('AUT3', 'Gabriel Garcia', 'Gaviota de Oro', 1, 'Colombia');
INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre) VALUES('AUT3', 'Gabriel Garcia', 'Premio2', 1, 'Colombia');
INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre) VALUES('AUT3', 'Gabriel Garcia', 'Nobel', 1, 'Colombia');
INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre) VALUES('AUT4', 'Plinio Apuleyo', 'Premio1', 1, 'Colombia');
INSERT INTO Tabla7_Autor_Premios(Autor_COD, Autor_Nombre, Premio, Pais_COD, Pais_Nombre) VALUES('AUT5', 'Ramon Illan', 'Premio Planeta', 1, 'Colombia');


-- Insertar datos de libros
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN1', 'Pedro Paramo', 1955, {'Novela'});
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN2', 'El Gallo de Oro', 1980, {'Novela'});
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN3', 'Fabulas y Moralejas de Rafael Pombo', 1854, {'Fabula', 'Cuento'});
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN4', 'Rin rin renacuajo', 1916, {'Fabula', 'Cuento'});
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN5', 'Cien años de soledad', 1984, {'Novela', 'Realismo Magico'});
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN6', 'La Hojarasca', 1979, {'Novela', 'Realismo Magico'});
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN7', 'El Coronel No Tiene quien le escriba', 1988, {'Novela', 'Realismo Magico'});
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN8', 'El Amor en los Tiempos del Colera', 1987, {'Novela', 'Realismo Magico'});
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN9', 'Postales de una vida', 1980, {'Novela', 'Politica'});
INSERT INTO Libro (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN10', 'Maracas en la Opera', 2010, {'Cuento'});

INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN1', 'Pedro Paramo', 1955, {'Novela'});
INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN2', 'El Gallo de Oro', 1980, {'Novela'});
INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN3', 'Fabulas y Moralejas de Rafael Pombo', 1854, {'Fabula', 'Cuento'});
INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN4', 'Rin rin renacuajo', 1916, {'Fabula', 'Cuento'});
INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN5', 'Cien años de soledad', 1984, {'Novela', 'Realismo Magico'});
INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN6', 'La Hojarasca', 1979, {'Novela', 'Realismo Magico'});
INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN7', 'El Coronel No Tiene quien le escriba', 1988, {'Novela', 'Realismo Magico'});
INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN8', 'El Amor en los Tiempos del Colera', 1987, {'Novela', 'Realismo Magico'});
INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN9', 'Postales de una vida', 1980, {'Novela', 'Politica'});
INSERT INTO Tabla1_Libro_Por_Annio (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('ISBN10', 'Maracas en la Opera', 2010, {'Cuento'});




-- Insertar datos de autores y libros escritos por ellos
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT1', 'ISBN1', 'Pedro Paramo', 1955, {'Novela'});
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT1', 'ISBN2', 'El Gallo de Oro', 1980, {'Novela'});
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT2', 'ISBN3', 'Fabulas y Moralejas de Rafael Pombo', 1854, {'Fabula', 'Cuento'});
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT2', 'ISBN4', 'Rin rin renacuajo', 1916, {'Fabula', 'Cuento'});
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT3', 'ISBN5', 'Cien años de soledad', 1984, {'Novela', 'Realismo Magico'});
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT3', 'ISBN6', 'La Hojarasca', 1979, {'Novela', 'Realismo Magico'});
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT3', 'ISBN7', 'El Coronel No Tiene quien le escriba', 1988, {'Novela', 'Realismo Magico'});
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT3', 'ISBN8', 'El Amor en los Tiempos del Colera', 1987, {'Novela', 'Realismo Magico'});
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT4', 'ISBN9', 'Postales de una vida', 1980, {'Novela', 'Politica'});
INSERT INTO Tabla3_Escrito_Por (Autor_COD, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas) VALUES ('AUT5', 'ISBN10', 'Maracas en la Opera', 2010, {'Cuento'});

-- Insertar datos de usuarios
INSERT INTO Tabla5_Usuario (Usuario_DNI, Usuario_Nombre, Usuario_Calle, Usuario_Ciudad) VALUES ('1', 'Jhon', 'Calle1', 'Miami');
INSERT INTO Tabla5_Usuario (Usuario_DNI, Usuario_Nombre, Usuario_Calle, Usuario_Ciudad) VALUES ('2', 'Andrea', 'Calle2', 'New York');
INSERT INTO Tabla5_Usuario (Usuario_DNI, Usuario_Nombre, Usuario_Calle, Usuario_Ciudad) VALUES ('3', 'Mariana', 'Calle1', 'New York');


-- Insertar datos de ejemplares
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(1, 'ISBN1', '2024-04-01', 'PRESTADO');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(2, 'ISBN2', '2024-04-02', 'DISPONIBLE');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(3, 'ISBN3', '2024-04-03', 'PRESTADO');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(4, 'ISBN4', '2024-04-04', 'DISPONIBLE');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(5, 'ISBN5', '2024-04-05', 'PRESTADO');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(6, 'ISBN5', '2024-04-05', 'PRESTADO');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(7, 'ISBN5', '2024-04-05', 'DISPONIBLE');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(8, 'ISBN5', '2024-04-05', 'DISPONIBLE');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(9, 'ISBN6', '2024-04-06', 'DISPONIBLE');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(10, 'ISBN7', '2024-04-07', 'DISPONIBLE');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(11, 'ISBN7', '2024-04-07', 'DISPONIBLE');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(12, 'ISBN8', '2024-04-08', 'PRESTADO');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(13, 'ISBN9', '2024-04-09', 'DISPONIBLE');
INSERT INTO Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(14, 'ISBN10', '2024-04-10', 'DISPONIBLE');



-- Insertar datos de libro_por_ejemplares
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(1, 'ISBN1', '2024-04-01', 'PRESTADO');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(2, 'ISBN2', '2024-04-02', 'DISPONIBLE');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(3, 'ISBN3', '2024-04-03', 'PRESTADO');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(4, 'ISBN4', '2024-04-04', 'DISPONIBLE');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(5, 'ISBN5', '2024-04-05', 'PRESTADO');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(6, 'ISBN5', '2024-04-05', 'PRESTADO');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(7, 'ISBN5', '2024-04-05', 'DISPONIBLE');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(8, 'ISBN5', '2024-04-05', 'DISPONIBLE');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(9, 'ISBN6', '2024-04-06', 'DISPONIBLE');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(10, 'ISBN7', '2024-04-07', 'DISPONIBLE');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(11, 'ISBN7', '2024-04-07', 'DISPONIBLE');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(12, 'ISBN8', '2024-04-08', 'PRESTADO');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(13, 'ISBN9', '2024-04-09', 'DISPONIBLE');
INSERT INTO Tabla2_Libro_Por_Ejemplar (Ejemplar_Numero, Libro_ISBN, Ejemplar_Fecha, Ejemplar_Status) VALUES(14, 'ISBN10', '2024-04-10', 'DISPONIBLE');




-- Insertar datos de préstamos de libros
INSERT INTO Tabla4_Prestamo (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES (uuid(), '2', 'Andrea', 1, 'ISBN1', '2024-02-08');
INSERT INTO Tabla4_Prestamo (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES (uuid(), '1', 'Jhon', 1, 'ISBN1', '2024-05-01');
INSERT INTO Tabla4_Prestamo (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES (uuid(), '2', 'Andrea', 3, 'ISBN3', '2024-05-02');
INSERT INTO Tabla4_Prestamo (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES (uuid(), '3', 'Mariana', 5, 'ISBN5', '2024-05-02');
INSERT INTO Tabla4_Prestamo (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES (uuid(), '1', 'Jhon', 6, 'ISBN5', '2024-05-02');
INSERT INTO Tabla4_Prestamo (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES (uuid(), '2', 'Andrea', 12, 'ISBN8', '2024-05-02');


INSERT INTO Tabla6_Prestamo_Por_Ejemplar ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '2', 'Andrea', 1, 'ISBN1', '2024-02-08');
INSERT INTO Tabla6_Prestamo_Por_Ejemplar ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '1', 'Jhon', 1, 'ISBN1', '2024-05-01');
INSERT INTO Tabla6_Prestamo_Por_Ejemplar ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '2', 'Andrea', 3, 'ISBN3', '2024-05-02');
INSERT INTO Tabla6_Prestamo_Por_Ejemplar ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '3', 'Mariana', 5, 'ISBN5', '2024-05-02');
INSERT INTO Tabla6_Prestamo_Por_Ejemplar ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '1', 'Jhon', 6, 'ISBN5', '2024-05-02');
INSERT INTO Tabla6_Prestamo_Por_Ejemplar ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '2', 'Andrea', 12, 'ISBN8', '2024-05-02');

INSERT INTO Tabla8_Prestamo_Por_Fecha_Usuario ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '2', 'Andrea', 1, 'ISBN1', '2024-02-08');
INSERT INTO Tabla8_Prestamo_Por_Fecha_Usuario ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '1', 'Jhon', 1, 'ISBN1', '2024-05-01');
INSERT INTO Tabla8_Prestamo_Por_Fecha_Usuario ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '2', 'Andrea', 3, 'ISBN3', '2024-05-02');
INSERT INTO Tabla8_Prestamo_Por_Fecha_Usuario ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '3', 'Mariana', 5, 'ISBN5', '2024-05-02');
INSERT INTO Tabla8_Prestamo_Por_Fecha_Usuario ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '1', 'Jhon', 6, 'ISBN5', '2024-05-02');
INSERT INTO Tabla8_Prestamo_Por_Fecha_Usuario ( Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) VALUES ( '2', 'Andrea', 12, 'ISBN8', '2024-05-02');



-- Insertar datos de países
INSERT INTO Pais (Pais_COD, Pais_Nombre) VALUES (1, 'Colombia');
INSERT INTO Pais (Pais_COD, Pais_Nombre) VALUES (2, 'Mexico');
INSERT INTO Pais (Pais_COD, Pais_Nombre) VALUES (3, 'España');

-- Insertar datos de editoriales
INSERT INTO Editorial (Editorial_COD, Editorial_Nombre, Editorial_Direccion, Pais_COD) VALUES ('EDT1', 'Editorial1', 'Direccion1', 1);
INSERT INTO Editorial (Editorial_COD, Editorial_Nombre, Editorial_Direccion, Pais_COD) VALUES ('EDT2', 'Editorial2', 'Direccion2', 2);
INSERT INTO Editorial (Editorial_COD, Editorial_Nombre, Editorial_Direccion, Pais_COD) VALUES ('EDT3', 'Editorial3', 'Direccion1', 3);

INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(1, 'ED2', 'ISBN1', 'Mexico');
INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(2, 'ED2', 'ISBN2', 'Mexico');
INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(3, 'ED3', 'ISBN3', 'Madrid');
INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(4, 'ED3', 'ISBN4', 'Madrid');
INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(5, 'ED1', 'ISBN5', 'Bogota');
INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(6, 'ED1', 'ISBN6', 'Bogota');
INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(7, 'ED1', 'ISBN7', 'Bogota');
INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(8, 'ED1', 'ISBN8', 'Bogota');
INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(9, 'ED1', 'ISBN9', 'Bogota');
INSERT INTO Publicado_En (Publicado_En_Id, Editorial_COD, Libro_ISBN, Publicado_En_Ciudad) VALUES(10, 'ED1', 'ISBN10', 'Bogota');



--Libro por titulos
-- Pedro Paramo
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status, Usuario_DNI, Usuario_Nombre, Prestamo_Fecha)
VALUES ('ISBN1', 'Pedro Paramo', 1955, {'Novela'}, 1, '2024-04-01', 'PRESTADO', '2', 'Andrea', '2024-02-08');

-- El Gallo de Oro
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status)
VALUES ('ISBN2', 'El Gallo de Oro', 1980, {'Novela'}, 2, '2024-04-02', 'DISPONIBLE');

-- Fabulas y Moralejas de Rafael Pombo
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status, Usuario_DNI, Usuario_Nombre, Prestamo_Fecha)
VALUES ('ISBN3', 'Fabulas y Moralejas de Rafael Pombo', 1854, {'Fabula', 'Cuento'}, 3, '2024-04-03', 'PRESTADO', '2', 'Andrea', '2024-05-02');

-- Rin rin renacuajo
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status)
VALUES ('ISBN4', 'Rin rin renacuajo', 1916, {'Fabula', 'Cuento'}, 4, '2024-04-04', 'DISPONIBLE');

-- Cien años de soledad
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status, Usuario_DNI, Usuario_Nombre, Prestamo_Fecha)
VALUES ('ISBN5', 'Cien años de soledad', 1984, {'Novela', 'Realismo Magico'}, 5, '2024-04-05', 'PRESTADO', '3', 'Mariana', '2024-05-02');

-- La Hojarasca
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status, Usuario_DNI, Usuario_Nombre, Prestamo_Fecha)
VALUES ('ISBN6', 'La Hojarasca', 1979, {'Novela', 'Realismo Magico'}, 6, '2024-04-05', 'PRESTADO', '1', 'Jhon', '2024-05-02');

-- El Coronel No Tiene quien le escriba
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status)
VALUES ('ISBN7', 'El Coronel No Tiene quien le escriba', 1988, {'Novela', 'Realismo Magico'}, 10, '2024-04-07', 'DISPONIBLE');

-- El Amor en los Tiempos del Colera
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status, Usuario_DNI, Usuario_Nombre, Prestamo_Fecha)
VALUES ('ISBN8', 'El Amor en los Tiempos del Colera', 1987, {'Novela', 'Realismo Magico'}, 12, '2024-04-08', 'PRESTADO', '2', 'Andrea', '2024-05-02');

-- Postales de una vida
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status)
VALUES ('ISBN9', 'Postales de una vida', 1980, {'Novela', 'Politica'}, 13, '2024-04-09', 'DISPONIBLE');

-- Maracas en la Opera
INSERT INTO Libro_Por_Titulo (Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas, Ejemplar_Numero, Ejemplar_Fecha, Ejemplar_Status)
VALUES ('ISBN10', 'Maracas en la Opera', 2010, {'Cuento'}, 14, '2024-04-10', 'DISPONIBLE');



-- Insertar datos en la tabla Autor_Por_Nombre

-- Juan Rulfo
INSERT INTO Autor_Por_Nombre (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD, Pais_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT1', 'Juan Rulfo', {'Premio1', 'Premio2'}, 2, 'Mexico', 'ISBN1', 'Pedro Paramo', 1955, {'Novela'});

-- Rafael Pombo
INSERT INTO Autor_Por_Nombre (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD, Pais_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT2', 'Rafael Pombo', {'Premio1'}, 1, 'Colombia', 'ISBN3', 'Fabulas y Moralejas de Rafael Pombo', 1854, {'Fabula', 'Cuento'});

INSERT INTO Autor_Por_Nombre (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD, Pais_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT2', 'Rafael Pombo', {'Premio1'}, 1, 'Colombia', 'ISBN4', 'Rin rin renacuajo', 1916, {'Fabula', 'Cuento'});

-- Gabriel Garcia
INSERT INTO Autor_Por_Nombre (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD, Pais_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT3', 'Gabriel Garcia', {'Premio Planeta', 'Gaviota de Oro', 'Premio2', 'Nobel'}, 1, 'Colombia', 'ISBN5', 'Cien años de soledad', 1984, {'Novela', 'Realismo Magico'});

INSERT INTO Autor_Por_Nombre (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD, Pais_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT3', 'Gabriel Garcia', {'Premio Planeta', 'Gaviota de Oro', 'Premio2', 'Nobel'}, 1, 'Colombia', 'ISBN6', 'La Hojarasca', 1979, {'Novela', 'Realismo Magico'});

INSERT INTO Autor_Por_Nombre (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD, Pais_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT3', 'Gabriel Garcia', {'Premio Planeta', 'Gaviota de Oro', 'Premio2', 'Nobel'}, 1, 'Colombia', 'ISBN7', 'El Coronel No Tiene quien le escriba', 1988, {'Novela', 'Realismo Magico'});

INSERT INTO Autor_Por_Nombre (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD, Pais_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT3', 'Gabriel Garcia', {'Premio Planeta', 'Gaviota de Oro', 'Premio2', 'Nobel'}, 1, 'Colombia', 'ISBN8', 'El Amor en los Tiempos del Colera', 1987, {'Novela', 'Realismo Magico'});

-- Plinio Apuleyo
INSERT INTO Autor_Por_Nombre (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD, Pais_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT4', 'Plinio Apuleyo', {'Premio1'}, 1, 'Colombia', 'ISBN9', 'Postales de una vida', 1980, {'Novela', 'Politica'});

-- Ramon Illan
INSERT INTO Autor_Por_Nombre (Autor_COD, Autor_Nombre, Autor_Premios, Pais_COD, Pais_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT5', 'Ramon Illan', {'Premio Planeta'}, 1, 'Colombia', 'ISBN10', 'Maracas en la Opera', 2010, {'Cuento'});


-- Insertar datos en la tabla Prestamo_Por_Fecha

INSERT INTO Prestamo_Por_Fecha (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) 
VALUES (uuid(), '2', 'Andrea', 1, 'ISBN1', '2024-02-08');

INSERT INTO Prestamo_Por_Fecha (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) 
VALUES (uuid(), '1', 'Jhon', 1, 'ISBN1', '2024-05-01');

INSERT INTO Prestamo_Por_Fecha (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) 
VALUES (uuid(), '2', 'Andrea', 3, 'ISBN3', '2024-05-02');

INSERT INTO Prestamo_Por_Fecha (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) 
VALUES (uuid(), '3', 'Mariana', 5, 'ISBN5', '2024-05-02');

INSERT INTO Prestamo_Por_Fecha (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) 
VALUES (uuid(), '1', 'Jhon', 6, 'ISBN5', '2024-05-02');

INSERT INTO Prestamo_Por_Fecha (Prestamo_Codigo, Usuario_DNI, Usuario_Nombre, Ejemplar_Numero, Libro_ISBN, Prestamo_Fecha) 
VALUES (uuid(), '2', 'Andrea', 12, 'ISBN8', '2024-05-02');


-- Insertar datos en la tabla Escrito_Por_Autor

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT1', 'Juan Rulfo', 'ISBN1', 'Pedro Paramo', 1955, {'Novela'});

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT1', 'Juan Rulfo', 'ISBN2', 'El Gallo de Oro', 1980, {'Novela'});

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT2', 'Rafael Pombo', 'ISBN3', 'Fabulas y Moralejas de Rafael Pombo', 1854, {'Fabula', 'Cuento'});

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT2', 'Rafael Pombo', 'ISBN4', 'Rin rin renacuajo', 1916, {'Fabula', 'Cuento'});

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT3', 'Gabriel Garcia', 'ISBN5', 'Cien años de soledad', 1984, {'Novela', 'Realismo Magico'});

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT3', 'Gabriel Garcia', 'ISBN6', 'La Hojarasca', 1979, {'Novela', 'Realismo Magico'});

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT3', 'Gabriel Garcia', 'ISBN7', 'El Coronel No Tiene quien le escriba', 1988, {'Novela', 'Realismo Magico'});

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT3', 'Gabriel Garcia', 'ISBN8', 'El Amor en los Tiempos del Colera', 1987, {'Novela', 'Realismo Magico'});

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT4', 'Plinio Apuleyo', 'ISBN9', 'Postales de una vida', 1980, {'Novela', 'Politica'});

INSERT INTO Escrito_Por_Autor (Autor_COD, Autor_Nombre, Libro_ISBN, Libro_Titulo, Libro_Annio, Libro_Temas)
VALUES ('AUT5', 'Ramon Illan', 'ISBN10', 'Maracas en la Opera', 2010, {'Cuento'});








