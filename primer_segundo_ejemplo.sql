create database usuarios;
show databases;
use usuarios;

CREATE TABLE user(
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key(id)
);

INSERT INTO user(name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user(name, edad, email) values ('Layla', 15, 'layla@gmail.com');
INSERT INTO user(name, edad, email) values ('Nicolas', 36, 'nicolas@gmail.com');
INSERT INTO user(name, edad, email) values ('Chanchito', 7, 'chanchito@gmail.com');

select * from user;

-- Limita la cantidad de registros que se van a retornar
select * from user limit 1;

-- Agregar condiciones a las búsquedas en las bases de datos
select * from user where edad > 15;
select * from user where edad >= 15;
select * from user where edad > 20 and email='nicolas@gmail.com';
select * from user where edad > 20 or email= 'layla@gmail.com';

-- Negacion
select * from user where email != 'layla@gmail.com';

-- Valores entre
select * from user where edad between 15 and 30;

-- Buscar dentro de un campo la cadena email sin importarle el inicio o el final, lo que importa es que contenga
-- "gmail"
select * from user where email like '%gmail%';

-- Al eliminar el % del final indicamos que retornará valores que solo terminen en gmail, no en gmail(algo)
select * from user where email like '%gmail';

select * from user where email like 'oscar%';

-- Buscar una consulta de manera ascendente (menor a mayor)
select * from user order by edad asc;

-- Buscar por orden descedente
select * from user order by edad desc;

-- Buscar el registro con mayor número de la tabla
select max(edad) as mayor from user;

-- Buscar el registro con menor número de la tabla
select min(edad) as menor from user;

-- seleccionar solo columnas de interes para el desarrollador
select id, name from user;

-- cambiar nombre de una columna
select id, name as chanchito from user;