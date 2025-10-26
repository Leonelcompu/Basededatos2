drop table if exists alumnos;

 create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso date,
  fechanacimiento date
 );

 set datestyle to 'European';
--datos de los alumnos
 INSERT INTO alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
 INSERT INTO alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
 INSERT INTO alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

 select * from alumnos where fechanacimiento is null;

 select apellido,nombre,extract(year from fechanacimiento) from alumnos;
