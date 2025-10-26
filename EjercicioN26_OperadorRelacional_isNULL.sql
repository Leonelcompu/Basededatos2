 drop table if exists peliculas;

Create table peliculas(
  codigo serial,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion smallint,
  primary key (codigo)
 );

INSERT INTO peliculas(titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
INSERT INTO peliculas(titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',null);
INSERT INTO peliculas(titulo,actor,duracion)
  values('Harry Potter y la camara secreta','Daniel R.',190);
INSERT INTO peliculas(titulo,actor,duracion)
  values('Mision imposible 2','Tom Cruise',120);
INSERT INTO peliculas(titulo,actor,duracion)
  values('Mujer bonita',null,120);
INSERT INTO peliculas(titulo,actor,duracion)
  values('Tootsie','D. Hoffman',90);
INSERT INTO peliculas (titulo)
  values('Un oso rojo');

 select * from peliculas
  where actor is null;

 update peliculas set duracion=0
  where duracion is null;

 delete from peliculas
  where actor is null and
  duracion=0;

 select * from peliculas;