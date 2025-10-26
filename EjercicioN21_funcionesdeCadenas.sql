drop table if exists clientes;

CREATE TABLE clientes(
  documento char(8),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar (11)
 );
--data de los clientes
INSERT INTO clientes(documento,apellido,nombre,domicilio,telefono)
	values('2233344','Perez','Juan','Sarmiento 980','4342345');
INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono)
	values('2333344','Perez','Ana','Colon 234','2345123');
INSERT INTO clientes(documento,apellido,nombre,domicilio,telefono)
	values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
INSERT INTO clientes (documento,apellido,nombre,domicilio,telefono)
	values('2533344','Juarez','Ana','Urquiza 444','4789900');
--upper para darle mayuscula a lo seleccionado  
select documento,upper(apellido),upper(nombre),domicilio,telefono from clientes;

select documento,apellido,substr(nombre,1,1),domicilio,telefono from clientes;
