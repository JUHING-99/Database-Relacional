-- Crear tabla alumnos
CREATE TABLE alumnos (
  id_alumno serial NOT NULL PRIMARY KEY, 
  name varchar(45) NOT NULL, 
  email varchar(45) NOT NULL UNIQUE, 
  id_vertical int,
  category varchar(15),
  FOREIGN KEY (id_vertical) REFERENCES vertical(id_vertical),
  campus varchar(10) NOT NULL,
  promocion varchar(10) NOT NULL,
  fecha_inicio varchar(10) NOT NULL
);

-- Crear tabla proyectos
CREATE TABLE proyectos (
  id_proyecto serial NOT NULL PRIMARY KEY, 
  name varchar(45) NOT NULL, 
  id_alumno int,
  category varchar(15),
  FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
  nota varchar(10) NOT NULL
);

-- Crear tabla profes
CREATE TABLE profesores (
  id_profe serial NOT NULL PRIMARY KEY, 
  name varchar(45) NOT NULL, 
  id_vertical int,
  category varchar(15),
  FOREIGN KEY (id_vertical) REFERENCES vertical(id_vertical),
  campus varchar(10) NOT NULL,
  rol_id varchar(10) NOT NULL
);

-- Crear tabla vertical
CREATE TABLE vertical (
  id_vertical serial NOT NULL PRIMARY KEY, 
  name varchar(45) NOT NULL
);



