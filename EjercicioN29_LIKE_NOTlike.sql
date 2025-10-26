 drop table if exists empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso date,
  seccion varchar(20),
  sueldo decimal(6,2),
 primary KEY(documento)
 );

INSERT INTO empleados
  values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
INSERT INTO empleados
  values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
INSERT INTO empleados
  values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
INSERT INTO empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
INSERT INTO empleados
  values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
INSERT INTO empleados
  values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
INSERT INTO empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

SELECT * from empleados
  where nombre like '%Perez%';

SELECT * from empleados
  where domicilio like 'Co%8%';

SELECT nombre,sueldo from empleados
  where cast(sueldo as varchar) not like '%.00';

 select * from empleados
  where cast(fechaingreso as varchar) like '%1990%';