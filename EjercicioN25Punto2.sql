 drop table if exists peliculas;
 
 CREATE TABLE peliculas(
  codigo serial,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion smallint,
  primary key (codigo)
 );
--datos de todas las peliculas
INSERT INTO peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
INSERT INTO peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
INSERT INTO peliculas (titulo,actor,duracion)
  values('Harry Potter y la camara secreta','Daniel R.',190);
INSERT INTO peliculas (titulo,actor,duracion)
  values('Mision imposible 2','Tom Cruise',120);
INSERT INTO peliculas (titulo,actor,duracion)
  values('Mujer bonita','Richard Gere',120);
INSERT INTO peliculas (titulo,actor,duracion)
  values('Tootsie','D. Hoffman',90);
INSERT INTO peliculas (titulo,actor,duracion)
  values('Un oso rojo','Julio Chavez',100);
INSERT INTO peliculas (titulo,actor,duracion)
  values('Elsa y Fred','China Zorrilla',110);

 select * from peliculas
  where actor='Tom Cruise' or
  actor='Richard Gere';

 select * from peliculas
  where actor='Tom Cruise' and
  duracion<100;

 update peliculas set duracion=200
  where actor='Daniel R.' and
  duracion=180;

 delete from peliculas
  where not actor='Tom Cruise' and
  duracion>=100;
select * from peliculas;  