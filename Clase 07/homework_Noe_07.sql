-- 1. ¿Cuantas carreras tiene Henry?  (RTA: 2)
SELECT count(*) as "Cantidad de Carreras"  FROM Carrera;

-- 2. ¿Cuantos alumnos hay en total? (RTA: 180)
SELECT count(*) as "Cantidad de Alumnos" FROM Alumno;

-- 3. ¿Cuantos alumnos tiene cada cohorte?  (RTA: 20 por Cohorte)
SELECT id_cohorte as Cohorte, count(*) as "Cantidad de Alumnos"  FROM Alumno group by id_cohorte;

-- 4. Confecciona un listado de los alumnos ordenado por los últimos alumnos que ingresaron, con nombre y apellido en un solo campo.
SELECT concat(nombre, ', ', apellido) as "Nombre y Apellido", fecha_ingreso FROM Alumno Order by fecha_ingreso DESC;

-- 5.  ¿Cual es el nombre del primer alumno que ingreso a Henry?
SELECT nombre, apellido FROM Alumno order by fecha_ingreso ASC LIMIT 1;  -- Forma 1
SELECT nombre, apellido FROM Alumno where fecha_ingreso = (SELECT MIN(fecha_ingreso) from Alumno);  -- Forma 2

-- 6. ¿En que fecha ingreso?
SELECT MIN(fecha_ingreso) "fecha del primer ingreso" FROM Alumno;

-- 7. ¿Cual es el nombre del ultimo alumno que ingreso a Henry?
SELECT nombre, apellido from Alumno order by fecha_ingreso DESC LIMIT 1; -- Forma 1
SELECT nombre, apellido from Alumno where fecha_ingreso = (SELECT MAX(fecha_ingreso) FROM Alumno);  -- Forma 2


-- 8. La función YEAR le permite extraer el año de un campo date, utilice esta función y especifique cuantos alumnos ingresarona a Henry por año.
SELECT YEAR(fecha_ingreso) as "Año de ingreso", COUNT(*) as cantidad FROM Alumno group  by YEAR(fecha_ingreso);

-- 9. ¿Cuantos alumnos ingresaron por semana a henry?, indique también el año. WEEKOFYEAR()
SELECT  YEAR(fecha_ingreso) as "Año de ingreso", WEEKOFYEAR(fecha_ingreso) as semana, COUNT(*) as Cantidad FROM Alumno
group by WEEKOFYEAR(fecha_ingreso) ORDER BY Cantidad DESC;

-- 10. ¿En que años ingresaron más de 20 alumnos?
SELECT YEAR(fecha_ingreso) as "Año de ingreso", COUNT(*) as Cantidad FROM Alumno group by YEAR(fecha_ingreso) having Cantidad>20;

-- 11. Investigue las funciones TIMESTAMPDIFF() y CURDATE(). ¿Podría utilizarlas para saber cual es la edad de los instructores?. ¿Como podrías verificar si la función cálcula años completos? Utiliza DATE_ADD().
SELECT nombre, apellido, fecha_nac, TIMESTAMPDIFF(YEAR, fecha_nac,curdate()) as Edad From Instructor;  -- Forma 1
SELECT nombre, apellido, fecha_nac, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), fecha_nac)), '%Y') + 0 as Edad From Instructor;  -- Forma 2


-- 12. Cálcula:
--            - La edad de cada alumno.
--            - La edad promedio de los alumnos de henry.
--            - La edad promedio de los alumnos de cada cohorte.

-- Edad de los alumnos
SELECT nombre, apellido, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), fecha_nac)), '%Y') + 0 as edad FROM Alumno;

--  La edad promedio de los alumnos de henry. (RTA: 31.94)
SELECT Avg(DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), fecha_nac)), '%Y') + 0) as "Edad promedio" FROM Alumno; -- Con todos los decimales
SELECT round(Avg(DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), fecha_nac)), '%Y') + 0),2) as "Edad promedio" FROM Alumno; -- Con 2 decimales

-- La edad promedio de los alumnos de cada cohorte.
SELECT id_cohorte, round(Avg(DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), fecha_nac)), '%Y') + 0),2) as "Edad promedio" FROM Alumno group by id_cohorte; -- Con 2 decimales


-- 13. Elabora un listado de los alumnos que superan la edad promedio de Henry.
SELECT nombre, apellido, (DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), fecha_nac)), '%Y') + 0) as Edad 
From Alumno Having Edad > (SELECT round(Avg(DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), fecha_nac)), '%Y') + 0),2) FROM ALumno);
