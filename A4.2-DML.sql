#Listado de los proveedores de Barcelona que nos sirven el producto condensador.
SELECT * FROM PROVEEDOR WHERE poblacion = 'Barcelona' AND idproveedor IN (SELECT idproveedor FROM PROVEEN WHERE idproducto IN (SELECT idproducto FROM PRODUCTOS where nombre = 'Condensador'));

#Listado de los productos que nos provee ‘Electrònica Vivas’.
#Listado de los clientes que no han facturado desde el 1/7/2012.
#Listado de los clientes que han comprado el producto resistencia. Si se repiten consigue que solo salga una vez cada uno. No sabes el id de la resistencia, solo el nombre.
#Listado de los clientes que han comprado más de un diodo. No sabes el id del diodo, solo el nombre.
#Mostrar la cantidad total de productos facturada para cada cliente
#Mostrar la cantidad total de productos facturada entre 1/7/2012 y el 1/10/2012.
#Listado de los productos que son componentes del producto transistor. (¿Qué productos forman un transistor?)
#Listado de los productos de los cuales es componente un condensador. (¿qué productos entre sus componentes hay un condensador?)
#¿Cuál sería el descuento que se le aplica a cada producto en función de su precio?
#Aplícale el impuesto que toque a cada una de las facturas. Ten en cuenta que el precio final es precio*unidad.
#Muestra los productos cuyo precio sea mayor que el precio medio de todos los productos. Ordena el precio de menor a mayor.
#¿Cuántos productos nos han comprado cada cliente durante el último semestre del 2012? Muestra solo los que hayan comprado 40 productos o más.
#Para cada cliente, haz un listado con todos los productos y los proveedores de los productos que han comprado. ¡Ánimo, es la última!