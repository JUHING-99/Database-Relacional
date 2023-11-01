-- Crear tabla promocion
CREATE TABLE promocion (
  id_promocion varchar NOT NULL PRIMARY KEY, 
  name varchar(45) NOT NULL, 
  fecha_inicio date NOT NULL
);

ALTER TABLE alumnos
ADD FOREIGN KEY (id_promocion)
REFERENCES promocion (id_promocion);

ALTER TABLE profesores
ADD COLUMN id_promocion varchar REFERENCES promocion (id_promocion);


ALTER TABLE vertical
ADD COLUMN id_vertical varchar NOT NULL PRIMARY KEY;

ALTER TABLE alumnos
ADD COLUMN id_vertical varchar REFERENCES vertical (id_vertical);

ALTER TABLE profesores
ADD COLUMN id_vertical varchar REFERENCES vertical (id_vertical);

-- Insertar datos en tabla promocion
INSERT INTO promocion(id_promocion,name,fecha_inicio)
VALUES
('DS2309','Sep23','2023/09/18');

-- Insertar datos en tabla promocion
INSERT INTO promocion(id_promocion,name,fecha_inicio)
VALUES
('FS2309','Sep23','2023/09/18'),
('FS2402','Feb24','2024/02/12'),
('DS2402','Feb24','2024/02/12')
;

-- Insertar datos en tabla vertical
INSERT INTO vertical(id_vertical,name)
VALUES
('FS','Full Stack'),
('DS','Data Science')
;



-- Insertar datos en tabla alumnos
INSERT INTO alumnos(name,email,campus,id_promocion,id_vertical)
VALUES
('Jafet Casals','Jafet_Casals@gmail.com','Madrid','DS2309','DS'),
('Jorge Manzanares','Jorge_Manzanares@gmail.com','Madrid','DS2309','DS'),
('Onofre Adadia','Onofre_Adadia@gmail.com','Madrid','DS2309','DS'),
('Merche Prada','Merche_Prada@gmail.com','Madrid','DS2309','DS'),
('Pilar Abella','Pilar_Abella@gmail.com','Madrid','DS2309','DS'),
('Leoncio Tena','Leoncio_Tena@gmail.com','Madrid','DS2309','DS'),
('Odalys Torrijos','Odalys_Torrijos@gmail.com','Madrid','DS2309','DS'),
('Eduardo Caparrós','Eduardo_Caparrós@gmail.com','Madrid','DS2309','DS'),
('Ignacio Goicoechea','Ignacio_Goicoechea@gmail.com','Madrid','DS2309','DS'),
('Clementina Santos', 'Clementina_Santos@gmail.com','Madrid','DS2309','DS'),
('Abraham Vélez', 'Abraham_Vélez@gmail.com','Madrid','DS2309','DS'),
('Maximiliano Menéndez', 'Maximiliano_Menéndez@gmail.com','Madrid','DS2309','DS'),
('Eli Casas', 'Eli_Casas@gmail.com','Madrid','DS2309','DS')
;

-- Insertar datos en tabla alumnos
INSERT INTO alumnos(name,email,campus,id_promocion,id_vertical)
VALUES
('Guillermo Borrego', 'Guillermo_Borrego@gmail.com','Madrid','DS2402','DS'),
('Sergio Aguirre', 'Sergio_Aguirre@gmail.com','Madrid','DS2402','DS'),
('Carlito Carrión', 'Carlito_Carrión@gmail.com','Madrid','DS2402','DS'),
('Chita Mancebo', 'Chita_Mancebo@gmail.com','Madrid','DS2402','DS'),
('Joaquina Asensio', 'Joaquina_Asensio@gmail.com','Madrid','DS2402','DS'),
('Cristian Sarabia', 'Cristian_Sarabia@gmail.com','Madrid','DS2402','DS'),
('Isabel Ibáñez', 'Isabel_Ibáñez@gmail.com','Madrid','DS2402','DS'),
('Desiderio Jordá', 'Desiderio_Jordá@gmail.com','Madrid','DS2402','DS'),
('Rosalina Llanos', 'Rosalina_Llanos@gmail.com','Madrid','DS2402','DS'),
('Amor Larrañaga', 'Amor_Larrañaga@gmail.com','Madrid','FS2309','FS'),
('Teodoro Alberola', 'Teodoro_Alberola@gmail.com','Madrid','FS2309','FS'),
('Cleto Plana', 'Cleto_Plana@gmail.com','Madrid','FS2309','FS'),
('Aitana Sebastián', 'Aitana_Sebastián@gmail.com','Madrid','FS2309','FS'),
('Dolores Valbuena', 'Dolores_Valbuena@gmail.com','Madrid','FS2309','FS'),
('Julie Ferrer', 'Julie_Ferrer@gmail.com','Madrid','FS2309','FS'),
('Mireia Cabañas', 'Mireia_Cabañas@gmail.com','Madrid','FS2309','FS'),
('Flavia Amador', 'Flavia_Amador@gmail.com','Madrid','FS2309','FS'),
('Albino Macias', 'Albino_Macias@gmail.com','Madrid','FS2309','FS'),
('Ester Sánchez', 'Ester_Sánchez@gmail.com','Madrid','FS2309','FS'),
('Luis Miguel Galvez', 'Luis_Miguel_Galvez@gmail.com','Madrid','FS2309','FS'),
('Loida Arellano', 'Loida_Arellano@gmail.com','Madrid','FS2309','FS'),
('Heraclio Duque', 'Heraclio_Duque@gmail.com','Madrid','FS2309','FS'),
('Herberto Figueras', 'Herberto_Figueras@gmail.com','Madrid','FS2309','FS')
;

-- Insertar datos en tabla alumnos
INSERT INTO alumnos(name,email,campus,id_promocion,id_vertical)
VALUES
('Teresa Laguna', 'Teresa_Laguna@gmail.com','Valencia','FS2402','FS'),
('Estrella Murillo', 'Estrella_Murillo@gmail.com','Valencia','FS2402','FS'),
('Ernesto Uriarte', 'Ernesto_Uriarte@gmail.com','Valencia','FS2402','FS'),
('Daniela Guitart', 'Daniela_Guitart@gmail.com','Valencia','FS2402','FS'),
('Timoteo Trillo', 'Timoteo_Trillo@gmail.com','Valencia','FS2402','FS'),
('Ricarda Tovar', 'Ricarda_Tovar@gmail.com','Valencia','FS2402','FS'),
('Alejandra Vilaplana', 'Alejandra_Vilaplana@gmail.com','Valencia','FS2402','FS'),
('Daniel Rosselló', 'Daniel_Rosselló@gmail.com','Valencia','FS2402','FS'),
('Rita Olivares', 'Rita_Olivares@gmail.com','Valencia','FS2402','FS'),
('Cleto Montes', 'Cleto_Montes@gmail.com','Valencia','FS2402','FS'),
('Marino Castilla', 'Marino_Castilla@gmail.com','Valencia','FS2402','FS'),
('Estefanía Valcárcel', 'Estefanía_Valcárcel@gmail.com','Valencia','FS2402','FS'),
('Noemí Vilanova', 'Noemí_Vilanova@gmail.com','Valencia','FS2402','FS')
;

-- Insertar datos en tabla profesores
INSERT INTO profesores(name,campus,rol_id,id_promocion,id_vertical)
VALUES
('Noa Yáñez', 'Madrid', 'TA', 'DS2309', 'DS'),
('Saturnina Benitez', 'Madrid', 'TA', 'DS2309', 'DS'),
('Anna Feliu', 'Madrid', 'TA', 'FS2309', 'FS'),
('Rosalva Ayuso', 'Valencia', 'TA', 'FS2309', 'FS'),
('Ana Sofía Ferrer', 'Valencia', 'TA', 'FS2402', 'FS'),
('Angélica Corral', 'Madrid', 'TA', 'FS2402', 'FS'),
('Ariel Lledó', 'Madrid', 'TA', 'DS2309', 'DS'),
('Mario Prats', 'Valencia', 'LI', 'FS2402', 'FS'),
('Luis Ángel Suárez', 'Madrid', 'LI', 'FS2309', 'FS'),
('María Dolores Diaz', 'Madrid', 'LI', 'DS2309', 'DS')
;

ALTER TABLE proyectos
ADD COLUMN nota varchar(10);

-- Insertar datos en tabla proyectos
INSERT INTO proyectos(name,nota,id_alumno)
VALUES
('Proyecto_WebDev',	'Apto',49),
('Proyecto_FrontEnd',	'Apto',49),
('Proyecto_Backend',	'Apto',49),
('Proyecto_React',	'Apto',49),
('Proyecto_FullSatck',	'No Apto'	,49),
('Proyecto_WebDev',	'No Apto'	,50),
('Proyecto_FrontEnd',	'No Apto	',50),
('Proyecto_Backend',	'Apto'	,50),
('Proyecto_React',	'No Apto'	,50),
('Proyecto_FullSatck',	'Apto'	,50),
('Proyecto_WebDev',	'Apto'	,51),
('Proyecto_FrontEnd',	'No Apto'	,51),
('Proyecto_Backend',	'Apto'	,51),
('Proyecto_React',	'No Apto'	,51),
('Proyecto_FullSatck',	'Apto'	,51),
('Proyecto_WebDev',	'Apto'	,52),
('Proyecto_FrontEnd',	'No Apto'	,52),
('Proyecto_Backend',	'Apto'	,52),
('Proyecto_React',	'No Apto'	,52),
('Proyecto_FullSatck',	'Apto'	,52),
('Proyecto_WebDev',	'Apto'	,53),
('Proyecto_FrontEnd',	'Apto'	,53),
('Proyecto_Backend',	'Apto'	,53),
('Proyecto_React',	'Apto'	,53),
('Proyecto_FullSatck',	'No Apto'	,53),
('Proyecto_WebDev',	'No Apto'	,54),
('Proyecto_FrontEnd',	'No Apto'	,54),
('Proyecto_Backend',	'No Apto'	,54),
('Proyecto_React',	'Apto'	,54),
('Proyecto_FullSatck',	'No Apto'	,54),
('Proyecto_WebDev',	'No Apto'	,55),
('Proyecto_FrontEnd',	'Apto'	,55),
('Proyecto_Backend',	'Apto'	,55),
('Proyecto_React',	'Apto'	,55),
('Proyecto_FullSatck',	'Apto'	,55),
('Proyecto_WebDev',	'Apto'	,56),
('Proyecto_FrontEnd',	'Apto'	,56),
('Proyecto_Backend',	'No Apto'	,56),
('Proyecto_React',	'Apto'	,56),
('Proyecto_FullSatck',	'Apto'	,56),
('Proyecto_WebDev',	'No Apto'	,57),
('Proyecto_FrontEnd',	'Apto'	,57),
('Proyecto_Backend',	'Apto'	,57),
('Proyecto_React',	'Apto'	,57),
('Proyecto_FullSatck',	'Apto'	,57),
('Proyecto_WebDev',	'No Apto'	,58),
('Proyecto_FrontEnd',	'Apto'	,58),
('Proyecto_Backend',	'Apto'	,58),
('Proyecto_React',	'No Apto'	,58),
('Proyecto_FullSatck',	'Apto'	,58),
('Proyecto_WebDev',	'No Apto'	,59),
('Proyecto_FrontEnd',	'Apto'	,59),
('Proyecto_Backend',	'Apto'	,59),
('Proyecto_React',	'Apto'	,59),
('Proyecto_FullSatck',	'Apto'	,59),
('Proyecto_WebDev',	'Apto'	,60),
('Proyecto_FrontEnd',	'Apto'	,60),
('Proyecto_Backend',	'Apto'	,60),
('Proyecto_React',	'Apto'	,60),
('Proyecto_FullSatck',	'Apto'	,60),
('Proyecto_WebDev',	'Apto'	,61),
('Proyecto_FrontEnd',	'Apto'	,61),
('Proyecto_Backend',	'No Apto'	,61),
('Proyecto_React',	'No Apto'	,61),
('Proyecto_FullSatck',	'No Apto'	,61),
('Proyecto_WebDev',	'Apto'	,62),
('Proyecto_FrontEnd','Apto'	,62),
('Proyecto_Backend','Apto'	,62),
('Proyecto_React',	'Apto'	,62),
('Proyecto_FullSatck',	'Apto'	,62)
;

-- Insertar datos en tabla alumnos
INSERT INTO alumnos(name,email,campus,id_promocion,id_vertical)
VALUES
('Daniela Falcó    ', 'Daniela_Falcó@gmail.com','Madrid','DS2309','DS'),
('Anita Heredia', 'Anita_Heredia@gmail.com','Madrid','DS2309','DS'),
('Haydée Figueroa', 'Haydée_Figueroa@gmail.com','Madrid','DS2309','DS')
;

-- Insertar datos en tabla proyectos
INSERT INTO proyectos(name,nota,id_alumno)
VALUES
('Proyecto_WebDev',	'Apto'	,63),
('Proyecto_FrontEnd',	'Apto'	,63),
('Proyecto_Backend',	'Apto'	,63),
('Proyecto_React',	'Apto'	,63),
('Proyecto_FullSatck',	'Apto'	,63),
('Proyecto_WebDev',	'Apto'	,64),
('Proyecto_FrontEnd',	'Apto'	,64),
('Proyecto_Backend',	'No Apto'	,64),
('Proyecto_React',	'Apto'	,64),
('Proyecto_FullSatck',	'Apto'	,64),
('Proyecto_WebDev',	'Apto'	,65),
('Proyecto_FrontEnd',	'Apto'	,65),
('Proyecto_Backend',	'Apto'	,65),
('Proyecto_React',	'Apto'	,65),
('Proyecto_FullSatck',	'Apto'	,65),
('Proyecto_WebDev',	'Apto'	,66),
('Proyecto_FrontEnd',	'No Apto'	,66),
('Proyecto_Backend',	'No Apto'	,66),
('Proyecto_React',	'Apto'	,66),
('Proyecto_FullSatck',	'Apto'	,66),
('Proyecto_WebDev',	'No Apto'	,67),
('Proyecto_FrontEnd',	'Apto'	,67),
('Proyecto_Backend',	'Apto'	,67),
('Proyecto_React',	'Apto'	,67),
('Proyecto_FullSatck',	'No Apto'	,67),
('Proyecto_WebDev',	'Apto'	,68),
('Proyecto_FrontEnd',	'Apto'	,68),
('Proyecto_Backend',	'Apto'	,68),
('Proyecto_React',	'Apto'	,68),
('Proyecto_FullSatck',	'Apto'	,68),
('Proyecto_WebDev',	'No Apto'	,69),
('Proyecto_FrontEnd',	'No Apto'	,69),
('Proyecto_Backend',	'No Apto'	,69),
('Proyecto_React',	'Apto'	,69),
('Proyecto_FullSatck',	'Apto'	,69),
('Proyecto_WebDev','No Apto'	,70),
('Proyecto_FrontEnd',	'No Apto'	,70),
('Proyecto_Backend',	'Apto'	,70),
('Proyecto_React',	'No Apto'	,70),
('Proyecto_FullSatck',	'No Apto'	,70),
('Proyecto_WebDev',	'No Apto'	,71),
('Proyecto_FrontEnd',	'No Apto'	,71),
('Proyecto_Backend',	'No Apto'	,71),
('Proyecto_React',	'Apto'	,71),
('Proyecto_FullSatck',	'Apto'	,71),
('Proyecto_WebDev',	'Apto'	,72),
('Proyecto_FrontEnd',	'Apto'	,72),
('Proyecto_Backend',	'No Apto'	,72),
('Proyecto_React',	'Apto'	,72),
('Proyecto_FullSatck',	'Apto'	,72),
('Proyecto_WebDev',	'No Apto'	,73),
('Proyecto_FrontEnd',	'No Apto'	,73),
('Proyecto_Backend',	'Apto'	,73),
('Proyecto_React',	'No Apto'	,73),
('Proyecto_FullSatck',	'No Apto'	,73),
('Proyecto_WebDev',	'Apto'	,74),
('Proyecto_FrontEnd',	'Apto'	,74),
('Proyecto_Backend',	'No Apto'	,74),
('Proyecto_React',	'No Apto'	,74),
('Proyecto_FullSatck',	'Apto'	,74),
('Proyecto_WebDev',	'Apto'	,75),
('Proyecto_FrontEnd',	'No Apto'	,75),
('Proyecto_Backend',	'No Apto'	,75),
('Proyecto_React',	'Apto'	,75),
('Proyecto_FullSatck',	'Apto'	,75)
;



-- Insertar datos en tabla proyectos
INSERT INTO proyectos(name,nota,id_alumno)
VALUES
('Proyecto_HLF',	'Apto'	,3),
('Proyecto_EDA',	'No Apto'	,3),
('Proyecto_BBDD',	'Apto'	,3),
('Proyecto_ML',	'Apto'	,3),
('Proyecto_Deployment',	'Apto'	,3),
('Proyecto_HLF',	'Apto'	,4),
('Proyecto_EDA',	'No Apto'	,4),
('Proyecto_BBDD',	'Apto'	,4),
('Proyecto_ML',	'Apto'	,4),
('Proyecto_Deployment',	'Apto'	,4),
('Proyecto_HLF',	'Apto'	,5),
('Proyecto_EDA',	'Apto'	,5),
('Proyecto_BBDD',	'Apto'	,5),
('Proyecto_ML','	No Apto'	,5),
('Proyecto_Deployment',	'Apto'	,5),
('Proyecto_HLF',	'Apto'	,6),
('Proyecto_EDA',	'No Apto'	,6),
('Proyecto_BBDD',	'No Apto'	,6),
('Proyecto_ML',	'Apto'	,6),
('Proyecto_Deployment',	'No Apto'	,6),
('Proyecto_HLF',	'Apto'	,7),
('Proyecto_EDA',	'No Apto'	,7),
('Proyecto_BBDD',	'Apto'	,7),
('Proyecto_ML',	'Apto'	,7),
('Proyecto_Deployment',	'Apto'	,7),
('Proyecto_HLF',	'Apto'	,8),
('Proyecto_EDA',	'Apto'	,8),
('Proyecto_BBDD',	'Apto'	,8),
('Proyecto_ML',	'Apto'	,8),
('Proyecto_Deployment',	'Apto'	,8),
('Proyecto_HLF',	'No Apto'	,9),
('Proyecto_EDA',	'Apto'	,9),
('Proyecto_BBDD',	'Apto'	,9),
('Proyecto_ML',	'Apto'	,9),
('Proyecto_Deployment',	'Apto'	,9),
('Proyecto_HLF',	'No Apto'	,10),
('Proyecto_EDA',	'Apto'	,10),
('Proyecto_BBDD',	'Apto'	,10),
('Proyecto_ML',	'Apto'	,10),
('Proyecto_Deployment',	'Apto'	,10),
('Proyecto_HLF',	'Apto'	,11),
('Proyecto_EDA',	'Apto'	,11),
('Proyecto_BBDD',	'Apto'	,11),
('Proyecto_ML','No Apto'	,11),
('Proyecto_Deployment',	'Apto'	,11),
('Proyecto_HLF',	'Apto'	,12),
('Proyecto_EDA',	'No Apto'	,12),
('Proyecto_BBDD',	'Apto'	,12),
('Proyecto_ML',	'Apto'	,12),
('Proyecto_Deployment',	'Apto'	,12),
('Proyecto_HLF',	'Apto'	,76),
('Proyecto_EDA',	'Apto'	,76),
('Proyecto_BBDD',	'Apto'	,76),
('Proyecto_ML',	'Apto'	,76),
('Proyecto_Deployment',	'Apto'	,76),
('Proyecto_HLF',	'Apto'	,13),
('Proyecto_EDA',	'No Apto'	,13),
('Proyecto_BBDD',	'No Apto'	,13),
('Proyecto_ML',	'Apto'	,13),
('Proyecto_Deployment',	'Apto'	,13),
('Proyecto_HLF',	'Apto'	,14),
('Proyecto_EDA',	'No Apto'	,14),
('Proyecto_BBDD',	'Apto'	,14),
('Proyecto_ML',	'Apto'	,14),
('Proyecto_Deployment',	'Apto'	,14),
('Proyecto_HLF',	'Apto'	,77),
('Proyecto_EDA',	'Apto'	,77),
('Proyecto_BBDD',	'Apto'	,77),
('Proyecto_ML',	'Apto'	,77),
('Proyecto_Deployment',	'Apto'	,77),
('Proyecto_HLF',	'Apto'	,15),
('Proyecto_EDA',	'Apto'	,15),
('Proyecto_BBDD',	'Apto'	,15),
('Proyecto_ML',	'Apto'	,15),
('Proyecto_Deployment',	'Apto'	,15)
;



-- Insertar datos en tabla alumnos
INSERT INTO alumnos(name,email,campus,id_promocion,id_vertical)
VALUES
('Haydée Figueroa', 'Haydée_Figueroa@gmail.com','Madrid','DS2402','DS');


-- Insertar datos en tabla proyectos
INSERT INTO proyectos(name,nota,id_alumno)
VALUES
('Proyecto_HLF',	'Apto'	,40),
('Proyecto_EDA',	'No Apto'	,40),
('Proyecto_BBDD',	'No Apto'	,40),
('Proyecto_ML',	'Apto'	,40),
('Proyecto_Deployment',	'No Apto'	,40),
('Proyecto_HLF',	'Apto'	,41),
('Proyecto_EDA',	'No Apto'	,41),
('Proyecto_BBDD',	'Apto'	,41),
('Proyecto_ML',	'Apto'	,41),
('Proyecto_Deployment',	'No Apto'	,41),
('Proyecto_HLF',	'Apto'	,42),
('Proyecto_EDA',	'No Apto'	,42),
('Proyecto_BBDD',	'Apto'	,42),
('Proyecto_ML',	'Apto'	,42),
('Proyecto_Deployment',	'Apto'	,42),
('Proyecto_HLF',	'Apto'	,79),
('Proyecto_EDA',	'Apto'	,79),
('Proyecto_BBDD',	'Apto'	,79),
('Proyecto_ML',	'Apto'	,79),
('Proyecto_Deployment',	'Apto'	,79),
('Proyecto_HLF',	'No Apto'	,43),
('Proyecto_EDA',	'Apto'	,43),
('Proyecto_BBDD',	'No Apto'	,43),
('Proyecto_ML',	'Apto'	,43),
('Proyecto_Deployment',	'Apto'	,43),
('Proyecto_HLF',	'No Apto'	,44),
('Proyecto_EDA',	'No Apto'	,44),
('Proyecto_BBDD',	'Apto'	,44),
('Proyecto_ML',	'Apto'	,44),
('Proyecto_Deployment',	'Apto'	,44),
('Proyecto_HLF',	'Apto'	,45),
('Proyecto_EDA',	'Apto'	,45),
('Proyecto_BBDD',	'No Apto'	,45),
('Proyecto_ML',	'Apto'	,45),
('Proyecto_Deployment',	'Apto'	,45),
('Proyecto_HLF',	'No Apto'	,46),
('Proyecto_EDA',	'Apto'	,46),
('Proyecto_BBDD',	'No Apto'	,46),
('Proyecto_ML',	'Apto'	,46),
('Proyecto_Deployment',	'Apto'	,46),
('Proyecto_HLF',	'No Apto'	,47),
('Proyecto_EDA',	'Apto'	,47),
('Proyecto_BBDD',	'No Apto'	,47),
('Proyecto_ML',	'No Apto'	,47),
('Proyecto_Deployment',	'Apto'	,47),
('Proyecto_HLF',	'Apto'	,48),
('Proyecto_EDA',	'Apto'	,48),
('Proyecto_BBDD',	'Apto'	,48),
('Proyecto_ML',	'Apto'	,48),
('Proyecto_Deployment',	'Apto'	,48)
;
