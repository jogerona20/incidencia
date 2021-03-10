CREATE DATABASE Control_Incidensia
USE Control_Incidensia

GO
CREATE TABLE Departamento(
	id_Departamento INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	nombre VARCHAR(30) NOT NULL
)
GO 
CREATE TABLE Edificio(
	id_Edificio INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	Id_depto int FOREIGN KEY (Id_depto) REFERENCES Departamento (id_Departamento)
)

GO
CREATE TABLE usuarios(
	id_usuario int identity(1,1) primary key NOT NULL,
	Nombre VARCHAR(30) NOT NULL,
	P_Apellido VARCHAR(15) NOT NULL,
	s_Apellido VARCHAR(15),
	Correo VARCHAR(50) NOT NULL,
	Celular CHAR(10) NOT NULL,
	ESP VARCHAR(30) NOT NULL,
	Departamento INT FOREIGN KEY (Departamento) REFERENCES Departamento (id_Departamento)
)
GO
CREATE TABLE Equipo(
	id_Equipo INT IDENTITY(1,1) primary key NOT NULL,
	Tipo VARCHAR(25) NOT NULL,
	Marca Varchar(15) NOT NULL,
	Modelo Varchar(30) NOT NULL,
	Desc_P varchar(100) NOT NULL,
	Garantia int NOT NULL,
	Fec_Compra date NOT NULL,
	Usuario INT FOREIGN KEY (Usuario) REFERENCES usuarios(id_usuario),
	Departamento INT FOREIGN KEY (Departamento) REFERENCES Departamento (id_Departamento),
	Edificio INT FOREIGN KEY (Edificio) REFERENCES Edificio (id_Edificio)
)
GO
CREATE TABLE Tecnico(
	id_Tecnico INT IDENTITY(1,1) primary key NOT NULL,
	Especializacion varchar(30) NOT NULL,
	Id_usuario int Foreign key (Id_usuario) references usuarios (id_usuario)
)
GO
CREATE TABLE incidensias(
	Id_Incidencias int  identity (1,1) primary key NOT NULL,
	Descripcion varchar(300) NOT NULL,
	Tipo varchar(15) NULL,
	Prioridad varchar (20)  NULL,
	Fecha_Levantamiento datetime,
	Fecha_Inicio datetime ,
	Fecha_Terminacion datetime,
	Cambio varchar(5),
	Detalles_de_cambio varchar(160),
	Estatus_Cambio varchar(20)  ,
	Estatus varchar(20)  ,
	Calificacion [char](1),
	Id_usuario int Foreign key (Id_usuario) references usuarios (id_usuario),
	Id_Equipo INT Foreign key (Id_Equipo) references Equipo (id_Equipo),
	Id_Departamento int Foreign key (Id_Departamento) references Departamento (id_Departamento)
)
GO
CREATE TABLE Bitacora(
	Id_Bitacora INT IDENTITY(1,1) primary key NOT NULL,
	Id_Equipo INT FOREIGN KEY (Id_Equipo) REFERENCES Equipo (id_Equipo),
	Id_Tecnico INT FOREIGN KEY (Id_Tecnico) REFERENCES Tecnico (id_Tecnico),
	Id_Incidensias INT FOREIGN KEY (Id_Incidensias) REFERENCES incidensias (Id_Incidencias)
)
GO


SELECT * FROM Departamento
SELECT * FROM Edificio
SELECT * FROM usuarios
SELECT * FROM Tecnico
SELECT * FROM Equipo
SELECT * FROM incidensias
SELECT * FROM Bitacora