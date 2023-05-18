
-- Crear base de datos
create database holamundo;

-- Mostrar todas las bases de datos existentes
show databases; 

-- usar base de datos que le expresemos.
use holamundo;

-- Crear tabla y columnas
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    estado varchar (255),
    PRIMARY KEY (id)
);

-- INSERT INTO animales(tipo, estado) VALUES('Chanchito','Feliz');
-- Esta linea no será ejecutada

-- modificar el atributo de una columna (id) para que sea auto incremental
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

-- ejemplo de crear base de datos desde un inicio sin modificar el id para que sea autoincremental
CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Insertar valores a las columnas de la tabla
INSERT INTO animales(tipo, estado) VALUES('Chanchito','Feliz');
INSERT INTO animales(tipo, estado) VALUES('Dragón','Feliz');
INSERT INTO animales(tipo, estado) VALUES('Felipe','Triste');


-- Listar el contenido de la ba base de datos según criterios.
SELECT * FROM animales;
SELECT * FROM animales WHERE id=1;
SELECT * FROM animales WHERE estado='feliz';
SELECT * FROM animales WHERE estado='feliz' OR tipo='Felipe';

-- Actualizar registros que ya se encuentran dentro de la base de datos

UPDATE animales SET estado='orgulloso' where id=3;
SELECT * from animales;

-- Eliminar registros de la base de datos

DELETE from animales where estado='feliz';

-- Error Code: 1175. You are using safe update mode and you tried to update a table without a 
-- WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL 
-- Editor and reconnect.

DELETE from animales where id=1;
SELECT * FROM animales;

UPDATE animales set estado='triste' where id=2;
-- Esto también arroja error 1175
SELECT * FROM animales;

