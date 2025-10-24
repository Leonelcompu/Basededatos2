drop table if exists empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  sexo char(1),
  domicilio varchar(30),
  sueldobasico decimal(7,2),--máximo estimado 99999.99
  cantidadhijos smallint --no superará los 255 
 );

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  VALUES ('Juan Perez','22333444','m','Sarmiento 123',500,2);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  VALUES ('Ana Acosta','24555666','f','Colon 134',850,0);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  VALUES ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  VALUES ('Susana Molina','29000555','f','Salta 876',800.88,3); --

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  VALUES ('Marta Juarez','32444555','f','Sucre 1086',50000,2); --

select * from empleados
	Where sueldobasico>=900;

select * from empleados
	Where cantidadhijos>0;