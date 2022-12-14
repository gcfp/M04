#Mostrar todos los pisos con todos sus campos.
SELECT * FROM piso;
#Mostrar la dirección y la fecha de construcción de todos los pisos.
SELECT direccion, fecha_construccion FROM piso;
#Mostrar todos los campos de los pisos que valgan menos de 300000 €.
SELECT * FROM piso WHERE precio < 300000;
#Mostrar la dirección y el precio de los pisos con garaje.
SELECT direccion, precio FROM piso WHERE garaje = 1
#Mostrar todos los campos de los pisos construidos en la década de los 70.
SELECT * FROM piso WHERE fecha_construccion >= '1970-01-01' and fecha_construccion <= '1980-01-01';
#Mostrar todos los campos de los pisos construidos durante el siglo XXI y que valgan menos de 350000 €.
SELECT * FROM piso WHERE fecha_construccion >= '2000-01-01' and precio < 350000;
#Mostrar todos los campos de los pisos con ascensor, garaje y más de 80 m2.
SELECT * FROM piso WHERE ascensor = 1 and garaje = 1 and metros_2 > 80;
#Mostrar los pisos que no sean de Barcelona, ni Badalona, ni Castelldefels y valgan menos de 250000 €, todo ello ordenado alfabéticamente por Población.
SELECT * FROM piso WHERE poblacion NOT IN ('Barcelona', 'Badalona', 'Castelldefels') and precio < 250000;
#Mostrar los pisos construidos a partir del año 2016.
SELECT * FROM piso WHERE fecha_construccion >= '2016-01-01';
#Mostrar los pisos que no sean de Barcelona, ni de Madrid, ni de Vic.
SELECT * FROM piso WHERE poblacion NOT IN ('Barcelona', 'Madrid', 'Vic');
#Mostrar la dirección y el 10% del precio de los pisos de Barcelona.
SELECT direccion, precio*0.1 AS '10% precio' FROM piso Where poblacion = 'Barcelona';
#Mostrar las poblaciones en las que tenemos pisos, no puede haber poblaciones repetidas.
SELECT poblacion FROM piso GROUP BY poblacion;
#Mostrar los pisos que estén en una Rambla.
SELECT * FROM piso WHERE direccion LIKE '%Rambla%';
#Mostrar los 5 pisos más caros.
SELECT * FROM piso ORDER BY precio DESC LIMIT 5;
#Borra los pisos que tengan 3 o menos habitaciones.
DELETE FROM piso WHERE numero_habitaciones <= 3;
#Borra los datos de la tabla.
DELETE FROM piso;
#Borra la tabla.
DROP TABLE piso;
#Borra la base de datos.
DROP DATABASE PISOS;
