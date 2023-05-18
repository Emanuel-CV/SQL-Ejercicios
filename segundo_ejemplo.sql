create table products(
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key (id),
    -- añadir foreign key
    foreign key (created_by) references user(id)
);

-- cambiar nombre de una tabla
rename table products to product;

-- Insertar los datos solo con un insert
insert into product (name, created_by, marca)
values
	('iPad', 1, 'Apple'),
	('iPhone', 1, 'Apple'),
	('AppleWatch', 2, 'Apple'),
	('MacBook', 1, 'Apple'),
	('iMac', 3, 'Apple'),
	('iPad Mini', 2, 'Apple');
        
select * from product;
        
-- relacionar la tabla usuario con la tabla producto (left join)
select u.id, u.email, p.name from user u left join product p on u.id = p.created_by;

-- relacionar la tabla producto con la tabla usuario (right join)
select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;

insert into product (name, created_by, marca) values ('Apple TV', 4, 'Apple');

-- relacionar la tabla producto con la tabla usuario (right join)
select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;

-- inner join 
select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by;

-- cross join
select u.id, u.name, p.id, p.name from user u cross join product p;

-- group by, agrupa elementos en base a un criterio
select count(id), marca from product group by marca;
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;

-- condiciones de retorno de group by
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by
having count(p.id) >= 2;

-- eliminar una tabla
drop table product;
drop table user;