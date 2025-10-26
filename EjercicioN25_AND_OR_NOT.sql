 drop table if exists medicamentos;

 create table medicamentos(
  codigo serial,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad smallint,
  PRIMARY KEY(codigo)
 );
--Datos de los medicamentos solicitados
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  values('Sertal','Roche',5.2,100);
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  values('Paracetamol 500','Bago',1.90,200);
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  values('Bayaspirina','Bayer',2.10,150); 
INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad)
  values('Amoxidal jarabe','Bayer',5.10,250); 

SELECT codigo,nombre
  from medicamentos
  where laboratorio='Roche' and
  precio<5;

SELECT * from medicamentos
  where laboratorio='Roche' or
  precio<5;

SELECT * from medicamentos
  where not laboratorio='Bayer' and
  cantidad=100;

SELECT * from medicamentos
  where laboratorio='Bayer' and
  not cantidad=100;
delete from medicamentos
  where laboratorio='Bayer' and
  precio>10;

 update medicamentos set cantidad=200
  where laboratorio='Roche' and
  precio>5;

 delete from medicamentos
  where laboratorio='Bayer' or
  precio<3;
SELECT * FROM medicamentos;