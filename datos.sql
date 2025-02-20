-- Insercion de datos
insert into cliente (idCliente,nombre,telefono,direccion) values
(1,"donald trump","1222222","EEUU"),
(2,"zelenski","22233333","UCRANIA"),
(3,"Netanyahu","7777777","ISRAEL"),
(4,"Elon Musk","555552","EEUU"),
(5,"Marck zuckerberg","4444422","EEUU"),
(6,"vladimir putin","666622","Rusia"),
(7,"Bill Drost","18888","Mexico");
describe producto;
select * from producto p ;

INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, combos, idCliente)
VALUES(1, 'medianas', 'Mexicana', 'pizza + gaseosa', 1);
INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, combos, idCliente)
VALUES(2, 'pequeñas', 'Pollo', 'Ninguno', 3);
INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, combos, idCliente)
VALUES(3, 'grandes', 'Hawaina', 'pizza + gaseosa', 1);
INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, combos, idCliente)
VALUES(4, 'pequeñas', 'Mexicana', 'Ninguno', 2);
INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, combos, idCliente)
VALUES(5, 'grandes', 'Mexicana', 'pizza + gaseosa', 5);
INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, combos, idCliente)
VALUES(6, 'medianas', 'Hawaina', 'Ninguno', 4);
INSERT INTO pizzatest.producto
(idProducto, disponibles, ingredientes, combos, idCliente)
VALUES(7, 'grandes', 'Mexicana', 'Ninguno', 1);

INSERT INTO pizzatest.pagos (idPagos, idCliente) VALUES
(2, 2),
(3, 1),
(4, 3),
(5, 1),
(6, 4),
(7, 5);

INSERT INTO pizzatest.pedido (idPedido, fecha, horaEntrega, idPagos, idCliente)
VALUES
(1, '2024-02-18 00:00:00', '2024-02-18 14:05:00', 1, 2),
(2, '2024-02-18 00:00:00', '2024-02-18 14:05:00', 2, 2),
(3, '2024-02-18 00:00:00', '2024-02-18 14:05:00', 3, 1),
(4, '2024-02-18 00:00:00', '2024-02-18 14:05:00', 4, 3),
(5, '2024-02-18 00:00:00', '2024-02-18 14:05:00', 5, 1),
(6, '2024-02-18 00:00:00', '2024-02-18 14:05:00', 6, 4),
(7, '2024-02-18 00:00:00', '2024-02-18 14:05:00', 7, 5);

INSERT INTO pizzatest.detallado_pedido (idDetPedido, proceso, valor, idProducto)
VALUES
(2, 'En marcha para pizza mexicana', 30000, 1),
(3, 'En marcha para pizza mexicana', 50000, 5),
(4, 'En marcha para pizza pollo', 20000, 2),
(5, 'En marcha para pizza mexicana', 30000, 7),
(6, 'En marcha para pizza hawaina', 20000, 3),
(7, 'En marcha para pizza hawaina', 20000, 6);
