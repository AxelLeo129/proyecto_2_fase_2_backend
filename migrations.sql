CREATE DATABASE graph_music;
GO

USE graph_music;
GO

CREATE TABLE Persona (
	ID INTEGER PRIMARY KEY,
	nombre VARCHAR(100)
) AS NODE;

CREATE TABLE Autor (
	ID INTEGER PRIMARY KEY,
	nombre VARCHAR(100)
) AS NODE;

CREATE TABLE Cancion (
	ID INTEGER NOT NULL,
	nombre VARCHAR(100),
	autor VARCHAR(100),
	pais VARCHAR(100)
) AS NODE;

CREATE TABLE Pais (
	ID INTEGER PRIMARY KEY,
	nombre VARCHAR(100),
	region VARCHAR(100)
) AS NODE;

CREATE TABLE likes (
	rating INTEGER
) AS EDGE;
CREATE TABLE amigo_de AS EDGE;
CREATE TABLE vive_en AS EDGE;
CREATE TABLE localizado_en AS EDGE;

INSERT INTO Persona VALUES (1, 'Oscar');
INSERT INTO Persona VALUES (2, 'María');
INSERT INTO Persona VALUES (3, 'Luis');
INSERT INTO Persona VALUES (4, 'Axel');
INSERT INTO Persona VALUES (5, 'Giovanni');

SELECT * FROM Persona;

INSERT INTO Cancion VALUES (1, 'More Than a Woman', 'Bee Gees', 'USA');
INSERT INTO Cancion VALUES (2, 'El Cielo a Mi Favor', 'Ricardo Arjona', 'Guatemala');
INSERT INTO Cancion VALUES (3, 'Mr.Perfectly Fine', 'Taylor Swift', 'USA');

INSERT INTO Pais VALUES (1, 'USA', 'Norteamérica');
INSERT INTO Pais VALUES (2, 'Guatemala', 'Centroamérica');

INSERT INTO likes VALUES ((SELECT $node_id FROM Persona WHERE ID = 1), (SELECT $node_id FROM Cancion WHERE ID = 1), 4);
INSERT INTO likes VALUES ((SELECT $node_id FROM Persona WHERE ID = 2), (SELECT $node_id FROM Cancion WHERE ID = 2), 3);
INSERT INTO likes VALUES ((SELECT $node_id FROM Persona WHERE ID = 2), (SELECT $node_id FROM Cancion WHERE ID = 1), 4);
INSERT INTO likes VALUES ((SELECT $node_id FROM Persona WHERE ID = 3), (SELECT $node_id FROM Cancion WHERE ID = 3), 5);
INSERT INTO likes VALUES ((SELECT $node_id FROM Persona WHERE ID = 4), (SELECT $node_id FROM Cancion WHERE ID = 1), 5);
INSERT INTO likes VALUES ((SELECT $node_id FROM Persona WHERE ID = 5), (SELECT $node_id FROM Cancion WHERE ID = 2), 4);

SELECT * FROM likes;

INSERT INTO vive_en VALUES ((SELECT $node_id FROM Persona WHERE ID = 1), (SELECT $node_id FROM Pais WHERE ID = 1));
INSERT INTO vive_en VALUES ((SELECT $node_id FROM Persona WHERE ID = 2), (SELECT $node_id FROM Pais WHERE ID = 2));
INSERT INTO vive_en VALUES ((SELECT $node_id FROM Persona WHERE ID = 3), (SELECT $node_id FROM Pais WHERE ID = 1));
INSERT INTO vive_en VALUES ((SELECT $node_id FROM Persona WHERE ID = 4), (SELECT $node_id FROM Pais WHERE ID = 1));
INSERT INTO vive_en VALUES ((SELECT $node_id FROM Persona WHERE ID = 5), (SELECT $node_id FROM Pais WHERE ID = 2));

INSERT INTO localizado_en VALUES ((SELECT $node_id FROM Cancion WHERE ID = 1), (SELECT $node_id FROM Pais WHERE ID = 1));
INSERT INTO localizado_en VALUES ((SELECT $node_id FROM Cancion WHERE ID = 2), (SELECT $node_id FROM Pais WHERE ID = 2));
INSERT INTO localizado_en VALUES ((SELECT $node_id FROM Cancion WHERE ID = 3), (SELECT $node_id FROM Pais WHERE ID = 1));

INSERT INTO amigo_de VALUES ((SELECT $node_id FROM Persona WHERE ID = 1), (SELECT $node_id FROM Persona WHERE ID = 2));
INSERT INTO amigo_de VALUES ((SELECT $node_id FROM Persona WHERE ID = 3), (SELECT $node_id FROM Persona WHERE ID = 4));
INSERT INTO amigo_de VALUES ((SELECT $node_id FROM Persona WHERE ID = 5), (SELECT $node_id FROM Pais WHERE ID = 1));

SELECT Cancion.nombre FROM Persona, likes, Cancion WHERE MATCH(Persona-(likes)->Cancion) AND Persona.nombre = 'Oscar';

SELECT Cancion.nombre FROM Persona persona1, Persona persona2, likes, amigo_de, Cancion WHERE MATCH(persona1-(amigo_de)->persona2-(likes)->Cancion) AND persona1.nombre = 'Oscar';

SELECT Cancion.nombre FROM Cancion, localizado_en, Pais WHERE MATCH(Cancion-(localizado_en)->Pais) AND Pais.nombre = 'USA';