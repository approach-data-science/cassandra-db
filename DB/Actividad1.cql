CREATE KEYSPACE bibliotecaXYZ
WITH durable_writes = true AND replication = {'class' : 'SimpleStrategy', 'replication_factor' : 1};

USE bibliotecaXYZ;

CREATE TABLE Tabla5_Usuario (
    Usuario_DNI TEXT,
    Usuario_Nombre TEXT,
    Usuario_Calle TEXT,
    Usuario_Ciudad TEXT,
	PRIMARY KEY(Usuario_DNI)
);


CREATE TABLE Usuario_Por_Ciudad (
    Usuario_Por_Ciudad_DNI TEXT,
    Usuario_Por_Ciudad_Nombre TEXT,
    Usuario_Por_Ciudad_Calle TEXT,
    Usuario_Por_Ciudad_Ciudad TEXT,
	PRIMARY KEY(Usuario_Por_Ciudad_Ciudad)
);


CREATE TABLE Libro (
    Libro_ISBN TEXT,
    Libro_Titulo TEXT,
    Libro_Annio INT,
    Libro_Temas SET<TEXT>,
	PRIMARY KEY(Libro_ISBN)
);

CREATE TABLE Libro_Por_Titulo (
    Libro_ISBN TEXT,
    Libro_Titulo TEXT,
    Libro_Annio INT,
    Libro_Temas SET<TEXT>,
	Ejemplar_Numero INT,
	Ejemplar_Fecha DATE,
	Ejemplar_Status TEXT,
    Usuario_DNI TEXT,
	Usuario_Nombre TEXT,
    Prestamo_Fecha DATE,
	PRIMARY KEY(Libro_Titulo)
);

    
    



CREATE TABLE Tabla1_Libro_Por_Annio (
    Libro_ISBN TEXT,
    Libro_Titulo TEXT,
    Libro_Annio INT,
    Libro_Temas SET<TEXT>,
    PRIMARY KEY (Libro_Annio, Libro_ISBN)
) WITH CLUSTERING ORDER BY ( Libro_ISBN ASC );


CREATE TABLE Ejemplar (
    Ejemplar_Numero INT,
    Libro_ISBN TEXT,
    Ejemplar_Fecha DATE,
	Ejemplar_Status TEXT,
    PRIMARY KEY (Ejemplar_Numero, Libro_ISBN)
);

CREATE TABLE Tabla2_Libro_Por_Ejemplar (
    Ejemplar_Numero INT,
    Libro_ISBN TEXT,
    Ejemplar_Fecha DATE,
	Ejemplar_Status TEXT,
	PRIMARY KEY (Libro_ISBN, Ejemplar_Numero)
) WITH CLUSTERING ORDER BY ( Ejemplar_Numero ASC ); 


CREATE TABLE Tabla4_Prestamo (
	Prestamo_Codigo UUID, 
    Usuario_DNI TEXT,
	Usuario_Nombre TEXT,
    Ejemplar_Numero INT,
    Libro_ISBN TEXT,
    Prestamo_Fecha DATE,
    PRIMARY KEY (Libro_ISBN, Ejemplar_Numero, Usuario_DNI)
) WITH CLUSTERING ORDER BY ( Ejemplar_Numero ASC, Usuario_DNI ASC ); 

CREATE TABLE Prestamo_Por_Fecha (
	Prestamo_Codigo UUID, 
    Usuario_DNI TEXT,
	Usuario_Nombre TEXT,
    Ejemplar_Numero INT,
    Libro_ISBN TEXT,
    Prestamo_Fecha DATE,
    PRIMARY KEY (Prestamo_Fecha, Ejemplar_Numero, Usuario_DNI)
) WITH CLUSTERING ORDER BY ( Ejemplar_Numero ASC, Usuario_DNI ASC ); 


CREATE TABLE Tabla6_Prestamo_Por_Ejemplar ( 
    Usuario_DNI TEXT,
	Usuario_Nombre TEXT,
    Ejemplar_Numero INT,
    Libro_ISBN TEXT,
    Prestamo_Fecha DATE,
    PRIMARY KEY (Ejemplar_Numero, Libro_ISBN, Usuario_DNI)
) WITH CLUSTERING ORDER BY ( Libro_ISBN ASC, Usuario_DNI ASC ); 

CREATE TABLE Tabla8_Prestamo_Por_Fecha_Usuario (
    Usuario_DNI TEXT,
	Usuario_Nombre TEXT,
    Ejemplar_Numero INT,
    Libro_ISBN TEXT,
	Prestamo_Fecha DATE,
    PRIMARY KEY ((Prestamo_Fecha, Usuario_DNI), Libro_ISBN)
) WITH CLUSTERING ORDER BY ( Libro_ISBN ASC ); 


CREATE TABLE Tabla3_Autor (
	Autor_COD TEXT,
	Autor_Nombre TEXT,
	Autor_Premios SET<TEXT>,
	Pais_COD INT,
	PRIMARY KEY(Autor_COD, Pais_COD)
);

CREATE TABLE Autor_Por_Nombre (
	Autor_COD TEXT,
	Autor_Nombre TEXT,
	Autor_Premios SET<TEXT>,
	Pais_COD INT,
	Pais_Nombre TEXT,
	Libro_ISBN TEXT,
	Libro_Titulo TEXT,
    Libro_Annio INT,
    Libro_Temas SET<TEXT>,
	PRIMARY KEY(Autor_Nombre, Pais_COD)
);




CREATE TABLE Tabla7_Autor_Premios (
    Autor_COD TEXT,
    Autor_Nombre TEXT,
    Premio TEXT,
	Pais_COD INT,
	Pais_Nombre TEXT,
    PRIMARY KEY (Premio, Autor_COD)
) WITH CLUSTERING ORDER BY (Autor_COD ASC);


CREATE TABLE Tabla3_Escrito_Por (
	Autor_COD TEXT,
	Libro_ISBN TEXT,
	Libro_Titulo TEXT,
    Libro_Annio INT,
    Libro_Temas SET<TEXT>,
	PRIMARY KEY(Autor_COD, Libro_ISBN)
	
);


CREATE TABLE Escrito_Por_Autor (
	Autor_COD TEXT,
	Autor_Nombre TEXT,
	Libro_ISBN TEXT,
	Libro_Titulo TEXT,
    Libro_Annio INT,
    Libro_Temas SET<TEXT>,
	PRIMARY KEY(Autor_Nombre, Libro_ISBN)
	
);


CREATE TABLE Editorial (
    Editorial_COD TEXT,
    Editorial_Nombre TEXT,
    Editorial_Direccion TEXT,
	Pais_COD INT,
	PRIMARY KEY(Editorial_COD, Pais_COD)
);

CREATE TABLE Publicado_En (
    Publicado_En_Id INT,
    Editorial_COD TEXT,
    Libro_ISBN TEXT,
    Publicado_En_Ciudad TEXT,
	PRIMARY KEY(Publicado_En_Id, Editorial_COD, Libro_ISBN)
);

CREATE TABLE Pais (
	Pais_COD INT, 
	Pais_Nombre TEXT,
	PRIMARY KEY(Pais_COD)
);




CREATE TABLE aire (	estacion text,titulo text,latitud text,longitud text,fecha text,periodo text,so2 text,no text,no2 text,co text,pm10 text,o3 text,dd text,vv text,tmp text,hr text,prb text,rs text,ll text,ben text,tol text,mxil text,pm25 text,primary key (estacion, fecha, periodo));





