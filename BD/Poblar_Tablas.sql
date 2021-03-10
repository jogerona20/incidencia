-------POBLAR TABLAS-------
use Control_Incidensia
GO

INSERT INTO Departamento (nombre) VALUES
	('Sistemas'),
	('Gestion'),
	('Industrial'),
	('TICS'),
	('Mecatronica'),
	('Mecanica'),
	('Renovables'),
	('Electricidad'),
	('Control Escolar'),
	('Bioquimica'),
	('Ambiental')
GO
INSERT INTO Edificio Values
('A',5),
('B',7),
('C',1),
('D',6),
('E',2),
('J',4),
('N',1),
('O',10),
('P',9),
('UP',8)
GO


SELECT * FROM Departamento
SELECT * FROM Edificio
SELECT * FROM usuarios
SELECT * FROM Tecnico
SELECT * FROM Equipo
SELECT * FROM incidensias
SELECT * FROM Bitacora