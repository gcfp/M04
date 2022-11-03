INSERT INTO GENERO (genero) VALUES 
	('Terror'), 
	('Comedia'), 
	('Aventura');

INSERT INTO VOTO (media_votos, cantidad) VALUES 
	(6.53, 104),
	(5.92, 86),
	(7.12, 97);

INSERT INTO PELICULA (titulo, nota, fecha, ID_voto) VALUES 
	('Titanic', 6.8, '1998-01-08', 1), 
	('Avatar', 7.2,'2009-12-18', 2),
	('Star Wars Ep. IV', 7.9, '1977-11-07', 3),
	('Star Wars Ep. V', 9,'1980-05-06', NULL),
	('Star Wars Ep. VI', 8.4,'1983-05-25', NULL);

INSERT INTO GENERO_PELICULA (ID_pelicula, ID_genero) VALUES
	(1, 1), (1, 2), (1, 3), (2, 2), (2, 3), (3,1), (4,2), (5,3);

INSERT INTO GASTO (gastos, ingresos, ID_pelicula) VALUES
	(200000000, 2207986545, 1),
	(237000000, 2910370239, 2),
	(11000000, 77539800, 3);

UPDATE GASTO SET ingresos = 775398007 WHERE ID_gasto = 3;

INSERT INTO SECUELAS (ID_pelicula) VALUES (4), (5);