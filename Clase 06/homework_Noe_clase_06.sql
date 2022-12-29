-- En la clase 05 se creo la base de datos Henry_05 y en ella se crearon las siguientes tablas
-- Tabla:  Carrera      Columnas: id_carrera, nombre
-- Tabla:  Instructor   Columnas: id_instructor, cedula varchar, nombre, apellido, fecha_nac, fecha_incorporacion
-- Tabla:  Cohorte      Columnas: id_cohorte, codigo, fecha_inicio, fecha_fin, id_instructor, id_carrera
-- Tabla:  Alumno       Columnas: id_alumno, cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte, 



-- *****************************************************************************************************************************************************
-- *****************************************************************************************************************************************************
-- *****************************************************************************************************************************************************
-- 1. Inserte los siguientes registros dentro de la base de datos creada en la clase anterior, corregir los errores que impidan la instrucción.


-- Inserto los datos de las carreras
insert into Carrera (nombre) values ('Full Stack Developer'),('Data Science');

-- Inserto los datos de los instructores 
insert into Instructor (cedula , nombre, apellido, fecha_nac, fecha_incorporacion)
values (25456879,'Antonio','Barrios','1981-7-9','2019-11-8'), 
(28456321,'Lucia','Fernandez','1992-5-25','2019-11-8'),
(27198354,'Leo','Paris','1985-6-20','2021-8-15'),
(36987520,'Agustín','Casagne','1988-8-17','2021-8-15'),
(33456215,'Franco','Caseros','1995-5-1','2021-8-15'),
(30521369,'Dario','Ramirez','1989-7-20','2021-12-1'),
(28856789,'Agustina','Medina','1991-3-8','2021-12-1'),
(33128987,'Jorge','Perez','1988-2-19','2021-12-1');

-- Inserto los datos de las cohortes - Primero seteo el autoincrement a partir del 1235
ALTER TABLE Cohorte AUTO_INCREMENT=1235;

INSERT INTO Cohorte (codigo, id_carrera, id_instructor, fecha_inicio, fecha_fin)
VALUES ('FT-1235',1,1,'2020-2-1','2020-6-30'),
('FT-1236',1,2,'2020-4-5','2020-8-31'),
('FT-1237',1,1,'2021-7-5','2021-11-30'),
('FT-1238',1,2,'2021-9-6','2022-1-31'),
('FT-1239',1,3,'2022-1-10',null),
('FT-1240',1,4,'2022-2-7',null),
('FT-1241',1,5,'2022-3-7',null),
('DS-1242',2,6,'2022-3-28',null),
('FT-1243',1,1,'2022-4-4',null),
('DS-1244',2,8,'2022-5-2',null),
('FT-1245',1,2,'2022-5-2',null),
('DS-1246',2,7,'2022-7-4',null);



-- Inserto los datos de los alumnos (id_alumno, cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)

INSERT INTO Alumno (cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)
VALUES ('274352477','Candice','Rojas','2000-12-10','2020-01-21',1235),
('313262855','Beverly','Gardner','2006-10-03','2019-12-04',1235),
('335199030','Carlos','Frank','2006-07-11','2019-12-13',1235),
('171722128','Callum','Velazquez','2005-11-18','2019-12-17',1235),
('14374907K','Kelly','Strickland','2005-11-26','2019-12-07',1235),
('49205318K','Drake','Pearson','2009-08-08','2019-12-30',1235),
('398182472','Aimee','Cline','2009-11-19','2020-01-26',1235),
('401797157','Julian','Copeland','2001-01-09','2019-12-05',1235),
('4257391','Cecilia','Roth','2004-12-01','2019-12-17',1235),
('19507661','Hillary','Holman','2001-04-07','2019-12-14',1235),
('106717451','Odysseus','Solomon','2009-07-01','2019-12-14',1235),
('289307281','Jemima','Carlson','2009-08-26','2019-12-09',1235),
('38156527','Boris','Lamb','2006-04-24','2020-01-13',1235),
('47873452','Sierra','Cook','2005-05-16','2020-01-25',1235),
('112197338','Michael','Norton','2007-07-01','2020-01-11',1235),
('84091987','Whilemina','Howard','2000-12-03','2020-01-07',1235),
('1114943K','Keegan','Mejia','2001-01-29','2019-12-29',1235),
('32392091','Dawn','Duke','2006-07-13','2020-01-30',1235),
('435719201','Lillith','Conley','2002-09-13','2019-12-11',1235),
('15903996','Marsden','Sparks','2004-04-16','2019-12-25',1235);


INSERT INTO Alumno (cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)
VALUES ('193744389','Belle','Cervantes','2001-02-03','2020-03-17',1236),
('43397060','Allegra','Dillon','2008-12-31','2020-02-12',1236),
('441149581','Reed','Goodwin','2002-02-21','2020-03-28',1236),
('88968476','Orla','Rocha','2007-07-25','2020-03-04',1236),
('211443618','Montana','Hunter','2003-08-26','2020-03-27',1236),
('86882779','Erich','Mcfarland','2000-07-04','2020-03-11',1236),
('407059433','Montana','Sykes','2006-12-15','2020-03-07',1236),
('223237649','Joshua','Mccoy','2006-11-19','2020-03-21',1236),
('292284624','Nicholas','Gibbs','2007-11-28','2020-02-04',1236),
('295743360','Felix','Avery','2005-03-16','2020-02-23',1236),
('444744855','Isabella','Edwards','2007-05-30','2020-03-17',1236),
('64776894','Zephr','Wright','1988-09-15','2020-03-22',1236),
('372278471','Caldwell','Mckenzie','1984-04-26','2020-03-18',1236),
('3026648K','Fiona','Gamble','1981-08-17','2020-03-05',1236),
('381918319','Margaret','Bentley','1981-07-25','2020-02-17',1236),
('29537372','Xena','Merrill','1985-12-05','2020-02-27',1236),
('343468598','Simone','Osborn','1988-08-27','2020-03-22',1236),
('465367539','Sonya','Conley','2009-03-06','2020-03-04',1236),
('171373085','Gannon','Villarreal','2001-12-25','2020-03-02',1236),
('3122182K','Elvis','Macdonald','2008-12-19','2020-04-12',1236);

INSERT INTO Alumno (cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)
VALUES ('492795224','Amir','Marks','1988-09-12','2021-01-04',1237),
('309139739','Virginia','Ingram','1988-01-20','2021-04-20',1237),
('162409522','Jelani','Schroeder','1995-03-11','2021-02-14',1237),
('194626479','Baker','Watson','2005-09-14','2021-03-30',1237),
('277992078','Gray','Willis','1993-02-08','2021-03-26',1237),
('345652302','Ivy','Gallagher','1993-03-11','2021-04-24',1237),
('154259589','Julian','Dillon','2003-09-20','2021-03-26',1237),
('26836594K','Whilemina','Carr','1997-10-31','2021-03-29',1237),
('396033852','Sydney','Hicks','2005-10-14','2021-04-01',1237),
('151675093','Graiden','Aguilar','1994-02-28','2021-02-17',1237),
('145331579','Mechelle','Cook','2005-01-01','2021-03-09',1237),
('349894343','Marvin','Chaney','1991-03-07','2021-01-01',1237),
('472701266','Vladimir','Leonard','2005-03-28','2021-01-17',1237),
('29213755','Alexander','Rush','1997-09-02','2021-01-12',1237),
('381629589','Kylynn','Kim','1985-07-16','2021-04-13',1237),
('48566189','Keaton','Morton','2001-02-12','2021-01-18',1237),
('402475935','Ian','Stephenson','1981-06-19','2021-03-30',1237),
('474328023','Cooper','Duncan','1980-09-18','2021-01-07',1237),
('26753295','Castor','Shepherd','1996-04-07','2021-02-13',1237),
('139799658','Miriam','Blake','2005-05-07','2021-03-09',1237);



INSERT INTO Alumno (cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)
VALUES ('16549215','Lewis','Burris','1992-04-23','2021-07-16',1238),
('135566489','Olivia','Booker','2001-07-01','2021-07-14',1238),
('79692581','Regan','Boyd','2003-08-08','2021-08-17',1238),
('49178719','Ross','Nunez','1986-07-16','2021-07-12',1238),
('474204693','Abbot','Mayer','1988-11-05','2021-07-17',1238),
('454819918','Conan','Hale','2002-08-12','2021-07-23',1238),
('504438988','Leila','Spence','1999-04-25','2021-07-03',1238),
('33294617K','Edward','Weiss','2002-11-04','2021-07-29',1238),
('118439724','Ashton','Buckner','2000-03-14','2021-07-08',1238),
('148755809','Chadwick','Mckee','2002-01-09','2021-08-29',1238),
('388551046','Fitzgerald','Frederick','2009-12-29','2021-08-02',1238),
('347702986','Keiko','Osborne','1995-02-28','2021-07-17',1238),
('255906518','Emily','Crawford','2001-02-13','2021-07-27',1238),
('65744120','Merritt','Potts','2005-02-28','2021-07-07',1238),
('502528238','Chaney','Nixon','2004-12-13','2021-08-16',1238),
('157009508','Wesley','Howe','2009-08-31','2021-08-18',1238),
('17617322K','Anastasia','Carpenter','1993-09-10','2021-08-21',1238),
('507966950','Hamilton','Owen','1992-06-25','2021-08-09',1238),
('181028726','Audrey','Perkins','2001-01-10','2021-08-28',1238),
('164311007','Sawyer','Holmes','2005-11-23','2021-07-08',1238);

INSERT INTO Alumno (cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)
VALUES ('243901227','Jillian','Santos','2000-01-16','2021-10-03',1239),
('306333267','Jerry','Mccullough','2008-07-29','2021-11-06',1239),
('179442116','Nerea','Douglas','2005-11-18','2021-11-23',1239),
('408178630','Abbot','Moss','2009-12-15','2021-10-24',1239),
('1991996K','Hedley','Weeks','2002-09-01','2021-11-07',1239),
('5585288K','Dillon','Rocha','2007-09-02','2021-12-24',1239),
('268473718','Malachi','Figueroa','2009-07-18','2021-10-15',1239),
('388007508','Lydia','Valencia','2002-03-27','2021-11-17',1239),
('203621523','Warren','Pearson','2001-05-25','2021-10-13',1239),
('234417932','Nicole','Norris','2001-03-26','2021-10-05',1239),
('351315148','Tiger','Jackson','2006-03-07','2021-11-22',1239),
('367828072','Fay','Ayala','2007-09-20','2021-12-15',1239),
('285762502','Dominique','Carr','2005-03-07','2021-09-13',1239),
('267225184','Justine','Jimenez','2002-01-27','2021-10-17',1239),
('433045602','Gary','Burt','2008-02-23','2021-09-10',1239),
('10779642','Evangeline','Hamilton','2001-02-01','2021-11-13',1239),
('455153174','Jeremy','Clark','2004-08-01','2021-10-28',1239),
('357121108','Venus','Campbell','2008-03-13','2021-11-29',1239),
('75106459','Denise','O''brien','2003-07-28','2021-11-25',1239),
('109594741','Macaulay','Miller','2005-07-05','2021-11-17',1239);

INSERT INTO Alumno (cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)
VALUES ('465763558','Gloria','Mcclure','1991-07-02','2022-01-29',1240),
('209243474','Palmer','Dennis','2002-07-18','2022-01-13',1240),
('38202200','Kasper','Ford','1984-08-28','2021-12-23',1240),
('265227600','Byron','Bruce','1982-05-25','2021-12-19',1240),
('185855619','Medge','Stark','1997-06-22','2021-12-13',1240),
('78311231','Xandra','Burch','2004-07-05','2022-01-11',1240),
('229594575','Cyrus','Morin','2008-05-13','2021-12-21',1240),
('141555774','Clinton','Sanders','2003-03-09','2022-01-29',1240),
('38872397','Ralph','Mayo','1985-11-21','2021-12-02',1240),
('24538','Lee','Vargas','2001-12-07','2022-01-20',1240),
('4454864K','Kim','Gardner','1990-08-20','2021-12-13',1240),
('131829809','Carolyn','Sellers','2008-11-05','2021-12-09',1240),
('344232601','Kylie','Walters','1990-11-04','2022-01-19',1240),
('46185611K','Molly','Bridges','1982-08-14','2022-01-07',1240),
('183508024','Hilary','Boyer','2005-02-12','2022-01-11',1240),
('332016830','Brianna','Dawson','2007-09-30','2022-01-07',1240),
('218656412','Cole','Vasquez','2006-05-27','2022-01-24',1240),
('438773339','Cairo','Walton','2003-09-21','2022-01-06',1240),
('486036354','Madeson','Reeves','2002-11-09','2022-01-30',1240),
('137896125','Virginia','Conrad','2006-12-26','2021-12-08',1240);

INSERT INTO Alumno (cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)
VALUES ('26157392K','Deanna','Wolf','1984-06-06','2022-01-25',1241),
('57652322','Edan','Ferguson','2002-05-29','2022-02-19',1241),
('3383903','Levi','Fisher','2002-05-09','2021-12-24',1241),
('383749255','Jason','Harmon','1990-08-17','2022-02-27',1241),
('366243968','Kirk','Randall','1988-05-28','2022-02-10',1241),
('283007197','Evelyn','Reilly','1997-05-08','2021-12-18',1241),
('152234708','Quinlan','Gordon','202-01-02','2022-01-19',1241),
('36248505','Drew','Elliott','2009-03-15','2022-02-07',1241),
('16622524','Joan','Nixon','2005-06-08','2022-01-18',1241),
('438939423','Francis','Garner','2005-10-27','2022-02-01',1241),
('41609182K','Griffith','Beck','2008-01-18','2022-01-28',1241),
('148585490','Kasimir','Peterson','2006-09-18','2021-12-31',1241),
('398662601','Zoe','Singleton','2008-07-30','2022-01-09',1241),
('286993443','Acton','Clements','1982-11-22','2022-01-24',1241),
('137499908','Brenna','Farley','1987-10-14','2022-02-09',1241),
('45903699','Shelby','Kinney','1998-04-16','2022-01-04',1241),
('3470290K','Juliet','Snider','2004-10-04','2022-01-28',1241),
('363891608','Jana','Reilly','2001-08-24','2022-02-10',1241),
('46150244','Darius','Schmidt','2009-12-19','2022-01-16',1241),
('24139204','Trevor','Giles','2001-06-21','2021-12-24',1241);



INSERT INTO Alumno (cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)
VALUES ('468707764','Hedda','Wells','1980-11-30','2022-01-18',1242),
('357253268','Odessa','Black','1985-04-22','2022-02-02',1242),
('171379849','Anjolie','Massey','2007-10-24','2022-01-18',1242),
('461744192','Valentine','Guzman','2006-02-09','2022-01-31',1242),
('345313052','Constance','Haley','2001-07-03','2022-02-01',1242),
('10235723','Grace','Crane','2007-11-27','2022-02-22',1242),
('112593543','Rhoda','Golden','2001-04-27','2022-02-23',1242),
('369224867','McKenzie','Silva','2008-12-28','2022-02-24',1242),
('37561135K','Thane','Carey','2005-08-23','2022-01-21',1242),
('2670216K','Upton','Collins','2009-10-24','2022-02-11',1242),
('285901006','Ainsley','Delgado','2001-11-08','2022-01-28',1242),
('106883831','Beau','Hubbard','1995-04-20','2022-01-31',1242),
('247172483','Zelda','Curtis','2009-10-10','2022-02-21',1242),
('213189034','Bethany','Hoover','1998-12-24','2022-01-02',1242),
('368514128','Duncan','Vasquez','1992-09-18','2022-02-25',1242),
('308557529','Conan','Macias','1986-09-15','2022-02-05',1242),
('37157163','Hannah','Solis','2005-05-02','2022-02-04',1242),
('319157859','Azalia','Weiss','2000-09-20','2022-02-25',1242),
('34304696','Paki','Mccarthy','2000-03-17','2022-01-15',1242),
('497603528','Rylee','Howard','2005-12-03','2022-01-21',1242);

INSERT INTO Alumno (cedula, nombre, apellido, fecha_nac, fecha_ingreso, id_cohorte)
VALUES ('41944781','Stephanie','Hurst','1986-11-23','2022-02-14',1243),
('31806976','Nathaniel','Duran','2005-12-02','2022-01-03',1243),
('9364994K','Shelley','Yang','1984-01-14','2022-01-18',1243),
('263549317','Donovan','Snow','2008-07-23','2022-02-09',1243),
('377028562','Regina','Joyce','2002-07-05','2022-02-08',1243),
('7332238','Hedley','Cameron','2002-06-05','2022-01-12',1243),
('448157210','Kiayada','Oneil','2009-03-26','2022-02-25',1243),
('123492919','Aristotle','Adams','2000-09-29','2022-01-18',1243),
('182865443','Harlan','Barnett','1997-10-19','2022-02-09',1243),
('389678961','Maya','Dotson','2003-11-28','2022-01-14',1243),
('152989121','Sean','Hancock','1997-09-21','2022-02-22',1243),
('507078060','Arthur','Leon','2006-12-01','2022-02-15',1243),
('72477197','Hakeem','Williams','1988-03-13','2022-01-21',1243),
('41643293','Nigel','Vincent','2001-10-06','2022-01-31',1243),
('454734130','Adele','Alston','2005-10-05','2022-01-16',1243),
('335187784','Mara','Rodgers','2004-03-29','2022-02-13',1243),
('122874648','Galvin','Jones','2005-11-08','2022-01-06',1243),
('386395705','Tashya','Clarke','1992-07-02','2022-01-31',1243),
('402918667','Imani','Mack','2000-07-28','2022-01-29',1243),
('277347865','William','Long','2009-12-06','2022-02-09',1243);




-- 2. No se sabe con certeza el lanzamiento de las cohortes N° 1245 y N° 1246, se solicita que las elimine de la tabla.
DELETE FROM Cohorte WHERE codigo LIKE (%1245 or %1246);  -- Con safe mode esto no anda -- > Desactivar


-- 3. Se ha decidido retrasar el comienzo de la cohorte N°1243, por lo que la nueva fecha de inicio será el 16/05. Se le solicita modificar la fecha de inicio de esos alumnos.
UPDATE Cohorte SET fecha_inicio = "2022-05-16" WHERE codigo LIKE "%1243";



-- 4. El alumno N° 165 solicito el cambio de su Apellido por “Ramirez”.
UPDATE Alumno SET apellido="Ramirez" where id_alumno=165;


-- 5. El área de Learning le solicita un listado de alumnos de la Cohorte N°1243 que incluya la fecha de ingreso.
SELECT nombre, apellido, fecha_ingreso, id_cohorte from alumno where id_cohorte=1243;

-- 6. Como parte de un programa de actualización, el área de People le solicita un listado de los instructores que dictan la carrera de Full Stack Developer.
SELECT instructor.nombre, instructor.apellido, carrera.nombre as carrera, cohorte.codigo as codigo 
from Cohorte inner join Instructor on instructor.id_instructor = cohorte.id_instructor  
inner join Carrera on cohorte.id_carrera = carrera.id_carrera where carrera.nombre="Full Stack Developer";

-- 7. Se desea saber que alumnos formaron parte de la cohorte N° 1235. Elabore un listado.
-- Para ver la cantidad
SELECT count(*) as cantidad FROM Alumno where id_cohorte=1235;  -- Son 20
-- Para listar los alumnos
SELECT nombre, apellido FROM Alumno where id_cohorte=1235;


-- 8. Del listado anterior se desea saber quienes ingresaron en el año 2019.
SELECT nombre, apellido, id_cohorte, fecha_ingreso FROM Alumno where id_cohorte=1235 and fecha_ingreso like "2019%";


-- 9. La siguiente consulta permite acceder a datos de otras tablas y devolver un listado con la carrera a la cual pertenece cada alumno:

-- SELECT alumnos.nombre, apellido, fechaNacimiento, carreras.nombre
-- FROM alumnos
-- INNER JOIN cohortes
-- ON cohorte=idCohorte
-- INNER JOIN carreras
-- ON carrera = idCarrera



