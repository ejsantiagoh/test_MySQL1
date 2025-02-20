-- Consultas:
-- 1. Registrar un nuevo cliente:
insert into cliente (idCliente,nombre,telefono,direccion) values
(8,"Jorge Elicer Gaitan","7775558","Bogota");

-- 2. Agregar un nuevo producto (pizza) al menú:
INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, combos, idCliente)
VALUES(8, 'pequeñas', 'Pollo', 'Ninguno', 7);

-- 4. Agregar un ingrediente a la base de datos
INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, combos, idCliente)
VALUES(9, 'pequeñas', 'Hawaina', 'Ninguno', 8);

-- 5.Crear un pedido para un cliente:
SELECT C.nombre, p.idpedido   
FROM pedido p
join cliente C on p.idPedido  = C.idCliente
where C.idCliente = 1;

-- 6. Añadir productos a un pedido específico:
alter table producto add column bebida enum('coca-cola','pepsi');

alter INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, bebida, idCliente)
VALUES(6, 'medianas', 'Hawaina', 'coca-cola', 4);

-- 8. Consultar el detalle de un pedido (productos y sus ingredientes
SELECT dp.idDetpedido as pedido, p.disponibles as productos, p.ingredientes   
FROM detallado_pedido dp 
join producto p  on p.idProducto  = dp.idDetPedido 
where dp.idDetPedido = 1;

-- 9. Actualizar el precio de una pizza en el menú:
INSERT INTO pizzatest.detallado_pedido (idDetPedido, proceso, valor, idProducto)
VALUES
(2, 'En marcha para pizza mexicana', 40000, 1);

-- 13. Consultar todos los pedidos de un cliente:
SELECT C.nombre, p.idpedido   
FROM pedido p
right join cliente C on p.idPedido = C.idCliente
where p.idpedido = 2;

-- 16. calcular el costo total de un pedido(incluyendo ingredientes adicionales):

-- 17. Listar todos los clientes que han hecho mas de 5 pedidos:

-- 18. Buscar pedidos programados para recogerse despues de una hora especifica:

-- 20 Buscar pizza con un precio mayor a $100:

