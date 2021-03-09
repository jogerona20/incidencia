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
	id_Equipo INT IDENTITY(1,1) NOT NULL,
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
	id_Tecnico INT IDENTITY(1,1) NOT NULL,
	Especializacion varchar(30) NOT NULL,
	Id_usuario int Foreign key (Id_usuario) references usuarios (id_usuario)
)
GO
CREATE TABLE incidensias(
	
)
