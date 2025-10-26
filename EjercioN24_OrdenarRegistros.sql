drop table if exists visitas;

 create table visitas (
  numero serial,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fecha timestamp,
  primary key(numero)
);

INSERT INTO visitas (nombre,mail,pais,fecha)
	values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
INSERT INTO visitas (nombre,mail,pais,fecha)
	values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
INSERT INTO visitas (nombre,mail,pais,fecha)
 	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
INSERT INTO visitas (nombre,mail,pais,fecha)
 	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
INSERT INTO visitas (nombre,mail,pais,fecha)
 	values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
INSERT INTO visitas (nombre,mail,pais,fecha)
 	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
INSERT INTO visitas (nombre,mail,pais,fecha)
 	values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

 SELECT * from visitas
  order by fecha desc;

 SELECT nombre,pais,extract(month from fecha)
  from visitas
  order by pais,extract(month from fecha) desc;

SELECT nombre,mail,
	EXTRACT(month from fecha) as mes,
	EXTRACT(day from fecha) as dia,
	EXTRACT(hour from fecha) as hora
  from visitas
  order by 3,4,5;

 SELECT mail, pais
  from visitas
  where extract(month from fecha)=10
  order by 2;