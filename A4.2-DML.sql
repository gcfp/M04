#Listado de los proveedores de Barcelona que nos sirven el producto condensador.
SELECT DISTINCT proveedor.nombre
FROM proveedor
LEFT JOIN proveen ON proveedor.idproveedor = proveen.idproveedor
LEFT JOIN productos ON proveen.idproducto = productos.idproducto
WHERE poblacion = 'Barcelona' AND productos.nombre = 'Condensador';
#Listado de los productos que nos provee ‘Electrònica Vivas’.
SELECT DISTINCT productos.nombre
FROM productos
LEFT JOIN proveen ON productos.idproducto = proveen.idproducto
LEFT JOIN proveedor ON proveen.idproveedor = proveedor.idproveedor
WHERE proveedor.nombre = 'Electrònica Vivas';
#Listado de los clientes que no han facturado desde el 1/7/2012.
SELECT clientes.nombre
FROM clientes
LEFT JOIN factura ON clientes.idcliente = factura.idcliente
GROUP BY clientes.nombre
HAVING  MAX(factura.fechaalta) < '2012-07-01';
#Listado de los clientes que han comprado el producto resistencia. Si se repiten consigue que solo salga una vez cada uno. No sabes el id de la resistencia, solo el nombre.
SELECT DISTINCT clientes.nombre
FROM clientes
LEFT JOIN factura ON clientes.idcliente = factura.idcliente
LEFT JOIN lineasfra ON factura.idfactura = lineasfra.idfactura
LEFT JOIN productos ON lineasfra.idproducto = productos.idproducto
WHERE productos.nombre = 'Resistència';
#Listado de los clientes que han comprado más de un diodo. No sabes el id del diodo, solo el nombre.
SELECT DISTINCT clientes.nombre
FROM clientes
LEFT JOIN factura ON clientes.idcliente = factura.idcliente
LEFT JOIN lineasfra ON factura.idfactura = lineasfra.idfactura
LEFT JOIN productos ON lineasfra.idproducto = productos.idproducto
WHERE lineasfra.idunidades > 1 AND productos.nombre = 'Díode';
#Mostrar la cantidad total de productos facturada para cada cliente
SELECT clientes.nombre, SUM(lineasfra.idunidades) AS 'Productos Facturados'
FROM clientes
LEFT JOIN factura ON clientes.idcliente = factura.idcliente
LEFT JOIN lineasfra ON factura.idfactura = lineasfra.idfactura
GROUP BY clientes.nombre;
#Mostrar la cantidad total de productos facturada entre 1/7/2012 y el 1/10/2012.
SELECT SUM(lineasfra.idunidades) AS 'Productos Facturados'
FROM lineasfra
LEFT JOIN factura ON lineasfra.idfactura = factura.idfactura
WHERE factura.fechaalta >= '2012-07-01' AND factura.fechaalta <= '2012-10-01';
#Listado de los productos que son componentes del producto transistor. (¿Qué productos forman un transistor?)
SELECT productos.nombre
FROM productos
LEFT JOIN componentes ON productos.idproducto = componentes.idcomponente
WHERE componentes.idproducto = (SELECT idproducto FROM productos WHERE nombre = 'Transistor');
#Listado de los productos de los cuales es componente un condensador. (¿qué productos entre sus componentes hay un condensador?)
SELECT productos.nombre
FROM productos
LEFT JOIN componentes ON productos.idproducto = componentes.idproducto
WHERE componentes.idcomponente = (SELECT idproducto FROM productos WHERE nombre = 'Condensador');
#¿Cuál sería el descuento que se le aplica a cada producto en función de su precio?
SELECT productos.nombre, descuentos.Descuento
FROM productos
LEFT JOIN descuentos ON productos.precio >= descuentos.PrecioMin AND productos.precio <= descuentos.PrecioMax;
#Aplícale el impuesto que toque a cada una de las facturas. Ten en cuenta que el precio final es precio*unidad.
SELECT factura.idfactura, SUM((productos.precio-descuentos.Impuesto)*productos.precio*lineasfra.idunidades) AS 'Precio Final'
FROM factura
LEFT JOIN lineasfra ON factura.idfactura = lineasfra.idfactura
LEFT JOIN productos ON lineasfra.idproducto = productos.idproducto
LEFT JOIN descuentos ON productos.precio >= descuentos.PrecioMin AND productos.precio <= descuentos.PrecioMax
GROUP BY factura.idfactura;
#Muestra los productos cuyo precio sea mayor que el precio medio de todos los productos. Ordena el precio de menor a mayor.
SELECT nombre, precio
FROM productos
WHERE precio > (SELECT AVG(precio) FROM productos)
ORDER BY precio DESC;
#¿Cuántos productos nos han comprado cada cliente durante el último semestre del 2012? Muestra solo los que hayan comprado 40 productos o más.

#Para cada cliente, haz un listado con todos los productos y los proveedores de los productos que han comprado. ¡Ánimo, es la última!