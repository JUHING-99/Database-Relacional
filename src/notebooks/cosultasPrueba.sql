
--Todos los nombres e id de los alumnos de la promoción de septiembre de data 
SELECT name,id_alumno
FROM alumnos
WHERE id_promocion = 'DS2309';



--Todos los nombres de los alumnos que han aprobado el Proyecto_Deployment de data
SELECT a.name
FROM alumnos AS a
INNER JOIN proyectos AS p ON a.id_alumno = p.id_alumno
WHERE p.name='Proyecto_Deployment' AND nota ='Apto';

--Todos los profes de la vertical FullStack
SELECT name
FROM profesores
WHERE id_vertical ='FS';


--Todos los alumnos y profes de Valencia
SELECT a.name, p.name, profesores.name, profesores.rol_id
FROM alumnos a
INNER JOIN promocion p ON a.id_promocion = p.id_promocion
INNER JOIN profesores ON profesores.id_promocion = p.id_promocion
WHERE profesores.campus = 'Valencia' AND a.campus = 'Valencia';






