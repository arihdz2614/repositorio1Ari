CREATE DATABASE tienda_informatica1;
USE tienda_informatica1;

CREATE TABLE fabricante (
  `codigo` INT  PRIMARY KEY auto_increment,
  `nombre` VARCHAR(100) NOT NULL);
  
CREATE TABLE producto (
  `codigo` INT PRIMARY KEY auto_increment,
  `nombre` VARCHAR(100) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fcodigo` INT,
  
  CONSTRAINT `fk_producto_fabricante` FOREIGN KEY (`fcodigo`)
    REFERENCES `tienda_informatica1`.`fabricante` (`codigo`));
  
  
INSERT INTO `tienda_informatica1`.`fabricante` (`codigo`, `nombre`) VALUES (1, 'Asus');
INSERT INTO `tienda_informatica1`.`fabricante` (`codigo`, `nombre`) VALUES (2, 'Lenovo');
INSERT INTO `tienda_informatica1`.`fabricante` (`codigo`, `nombre`) VALUES (3, 'Hewlett_Packard');
INSERT INTO `tienda_informatica1`.`fabricante` (`codigo`, `nombre`) VALUES (4, 'Samsung');
INSERT INTO `tienda_informatica1`.`fabricante` (`codigo`, `nombre`) VALUES (5, 'Seagate');
INSERT INTO `tienda_informatica1`.`fabricante` (`codigo`, `nombre`) VALUES (6, 'Crucial');
INSERT INTO `tienda_informatica1`.`fabricante` (`codigo`, `nombre`) VALUES (7, 'Gigabyte');
INSERT INTO `tienda_informatica1`.`fabricante` (`codigo`, `nombre`) VALUES (8, 'Huawei');
INSERT INTO `tienda_informatica1`.`fabricante` (`codigo`, `nombre`) VALUES (9, 'Xiaomi');
USE `tienda_informatica1`;
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (1, 'Disco_Duro_SATA3_1TB', 86.99, 5);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (2, 'Memoria_RAM_DDR4_8GB', 120, 6);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (3, 'Disco_SSD_1TB', 150.99, 4);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (4, 'GeForce_GTX_1050_TI', 185, 7);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (5, 'GeForce_GTX_1080_Xtreme', 755, 6);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (6, 'Monitor_24_LED_Full_HD', 202, 1);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (7, 'Monitor_27_LED_Full_HD', 245.99, 1);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (8, 'Portatil_Yoga_520', 559, 2);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (9, 'Portatil_Ideapad_320', 444, 2);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (10, 'Impresora_HP_Deskjet_3720', 59.99, 3);
INSERT INTO `tienda_informatica1`.`producto` (`codigo`, `nombre`, `precio`, `fcodigo`) VALUES (11, 'Impresora_HP_Laserjet_Pro_M26nw', 180, 3);


-- Calcula el numero total de productos que hay en la tabla de productos

SELECT count(*) as TotalDeProductos FROM producto;




-- Muestra el numero total de productos que tiene cada uno de los fabricantes. 
-- El listado tambien debe incluir los fabricantes que no tienen ningun producto.
-- El resultado mostrara 2 columnas, una con el nombre del fabricante y otra con el numero de
-- productos que tiene. Ordene el resultado descendentemente por el numero de productos.



SELECT fabricante.nombre as fabricante, count(producto.fcodigo) as num_productos
FROM fabricante left join producto 
on producto.fcodigo = fabricante.codigo
GROUP BY producto.fcodigo;


-- Muestra el precio maximo, precio minimo y precio promedio de los productos de cada uno de los fabricantes.
-- El resultado mostrara el nombre del fabricante junto con los datos que se solicitan.

SELECT fabricante.nombre as fabricante, max(precio) as precio_maximo, min(precio) as precio_minimo, avg(precio) as precio_promedio
FROM fabricante join producto
on producto.fcodigo = fabricante.codigo
GROUP BY fabricante.codigo;




-- Muestra el nombre de cada fabricante junto con el precio maximo, precio minimo, precio medio y el 
-- numero total de productos de los fabricantes que tienen un precio medio superior a $200. Es necesario
-- mostrar el nombre del fabricante

SELECT fabricante.nombre as fabricante, count(producto.fcodigo) as num_productos, max(precio) as precio_maximo, min(precio) as precio_minimo, avg(precio) as precio_promedio
FROM fabricante join producto
on producto.fcodigo = fabricante.codigo
GROUP BY fabricante.codigo
HAVING avg(precio) > 200;















