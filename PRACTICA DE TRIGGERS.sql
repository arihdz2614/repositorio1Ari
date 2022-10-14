CREATE DATABASE test;
USE test;
CREATE TABLE alumnos (id INT PRIMARY KEY, nombre VARCHAR (50) NOT NULL, 
apellido_paterno VARCHAR (30) NOT NULL, apellido_materno VARCHAR (30) NOT NULL, nota DOUBLE NOT NULL);

DESCRIBE alumnos;

DELIMITER $$
CREATE TRIGGER alumno_check_nota_BI BEFORE INSERT ON alumnos FOR EACH ROW 
BEGIN IF NEW.nota < 0 THEN SET NEW.nota = 0;
END IF;
IF NEW.nota > 10 THEN SET NEW.nota = 10;
END IF;
END;$$

INSERT INTO alumnos(id,nombre,apellido_paterno,apellido_materno,nota)
VALUES (1111,'LUIS','PEREZ','RECENDIZ',-3);


INSERT INTO alumnos(id,nombre,apellido_paterno,apellido_materno,nota)
VALUES (1112,'JORGE','GOMEZ','RODRIGUEZ',15);

INSERT INTO alumnos(id,nombre,apellido_paterno,apellido_materno,nota)
VALUES (1113,'ALMA','GONZALES','MENDEZ',6);

INSERT INTO alumnos(id,nombre,apellido_paterno,apellido_materno,nota)
VALUES (1114,'PEDRO','RAMIREZ','ALCANTARA',9);

SELECT * FROM alumnos;


DELIMITER $$
CREATE TRIGGER alumno_check_nota_BU BEFORE UPDATE ON alumnos FOR EACH ROW 
BEGIN IF NEW.nota < 0 THEN SET NEW.nota = 0;
END IF;
IF NEW.nota > 10 THEN SET NEW.nota = 10;
END IF;
END;$$

UPDATE alumnos SET nota = -1 WHERE id= 1113;

UPDATE alumnos SET nota = 18 WHERE id= 1114;

SELECT * FROM alumnos;





