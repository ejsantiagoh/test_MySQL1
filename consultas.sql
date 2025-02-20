-- Consultas:

-- 1. Registrar un nuevo cliente:
INSERT INTO cliente (idCliente, nombre, telefono, direccion) 
VALUES (8, 'Jorge Elicer Gaitan', '7775558', 'Bogotá');

-- 2. Agregar un nuevo producto (pizza) al menú:
INSERT INTO producto (idProducto, nombre, tipo, tamano, precio) 
VALUES (8, 'Pizza Pollo', 'pizza', 'pequeña', 25000);

-- 3. Registrar una bebida en el menú:
INSERT INTO producto (idProducto, nombre, tipo, precio) 
VALUES (9, 'Coca-Cola', 'bebida', 5000);

-- 4. Agregar un ingrediente a la base de datos:
INSERT INTO ingrediente (idIngrediente, nombre) 
VALUES (1, 'Piña');

-- 5. Crear un pedido para un cliente:
----


-- 6. Añadir productos a un pedido específico:
INSERT INTO pedido_producto (idPedido, idProducto, cantidad) 
VALUES (1, 8, 1); -- Agrega la pizza de pollo al pedido 1

-- 7. Añadir ingredientes adicionales a una pizza en un pedido::
INSERT INTO pedido_ingrediente_extra (idPedido, idProducto, idIngrediente, cantidad, costo_adicional) 
VALUES (1, 8, 1, 1, 2000); -- Agrega Piña como ingrediente

-- 8. Consultar el detalle de un pedido (productos y sus ingredientes):
---

-- 9. Actualizar el precio de una pizza en el menú:
UPDATE producto 
SET precio = 28000 
WHERE idProducto = 8;

-- 10. Actualizar la dirección de un cliente:
UPDATE cliente 
SET direccion = 'Calle 123 #45-67, Bogotá' 
WHERE idCliente = 8;

-- 11. Eliminar un producto del menú (bebida):
DELETE FROM producto 
WHERE idProducto = 9 AND tipo = 'bebida';

-- 12. Eliminar un ingrediente de la base de datos:
DELETE FROM ingrediente 
WHERE idIngrediente = 1;

-- 13. Consultar todos los pedidos de un cliente:
SELECT p.idPedido, p.fecha, p.horaEntrega, pa.monto, pa.fecha_pago 
FROM pedido p
JOIN pago pa ON p.idPago = pa.idPago
WHERE p.idCliente = 8;

-- 14. Listar todos los productos disponibles en el menú (pizzas y bebidas):
SELECT idProducto, nombre, tipo, tamano, precio 
FROM producto;

-- 15. Listar todos los ingredientes disponibles para personalizar una pizza:
SELECT idIngrediente, nombre 
FROM ingrediente;

-- 16. Calcular el costo total de un pedido (incluyendo ingredientes adicionales):
----

-- 17. Listar todos los clientes que han hecho más de 5 pedidos:
---

-- 18. Buscar pedidos programados para recogerse después de una hora específica:
SELECT * 
FROM pedido 
WHERE horaEntrega > '2024-02-13 15:00:00';

-- 19. Listar todos los combos disponibles y sus productos:
--

-- 20. Buscar pizzas con un precio mayor a $100:
SELECT * 
FROM producto 
WHERE tipo = 'pizza' AND precio > 100;
