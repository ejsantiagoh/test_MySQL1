-- Insercion de datos
INSERT INTO cliente (idCliente, nombre, telefono, direccion) VALUES
(1, "donald trump", "1222222", "EEUU"),
(2, "zelenski", "22233333", "UCRANIA"),
(3, "Netanyahu", "7777777", "ISRAEL"),
(4, "Elon Musk", "555552", "EEUU"),
(5, "Marck zuckerberg", "4444422", "EEUU"),
(6, "vladimir putin", "666622", "Rusia"),
(7, "Bill Drost", "18888", "Mexico");

INSERT INTO producto (idProducto, nombre) VALUES
(1, "Pizza Mexicana"),
(2, "Pizza Pollo"),
(3, "Pizza Hawaiana"),
(4, "Pizza Pepperoni"),
(5, "Pizza Napolitana"),
(6, "Coca-Cola"),
(7, "Sprite");

INSERT INTO precio (idPrecio, idProducto, tamano, precio) VALUES
(1, 1, 'mediana', 30000),
(2, 1, 'grande', 50000),
(3, 2, 'pequeña', 20000),
(4, 3, 'mediana', 25000),
(5, 3, 'grande', 35000),
(6, 4, 'mediana', 28000),
(7, 5, 'grande', 40000);

INSERT INTO ingrediente (idIngrediente, nombre) VALUES
(1, "Pollo"),
(2, "Jalapeño"),
(3, "Piña"),
(4, "Pepperoni"),
(5, "Tomate"),
(6, "Queso Mozzarella");

-- Relación entre productos y sus ingredientes
INSERT INTO producto_ingrediente (idProducto, idIngrediente) VALUES
(1, 2), -- Pizza Mexicana con Jalapeño
(2, 1), -- Pizza Pollo con Pollo
(3, 3), -- Pizza Hawaiana con Piña
(4, 4), -- Pizza Pepperoni con Pepperoni
(5, 5), -- Pizza Napolitana con Tomate
(5, 6); -- Pizza Napolitana con Queso Mozzarella


INSERT INTO combo (idCombo, descripcion) VALUES
(1, "Pizza + Gaseosa"),
(2, "Combo Doble Pizza"),
(3, "Combo Familiar");

-- Relación entre combos y productos
INSERT INTO combo_producto (idCombo, idProducto) VALUES
(1, 1), -- Combo Pizza + Gaseosa incluye Pizza Mexicana
(1, 6), -- Combo Pizza + Gaseosa incluye Coca-Cola
(2, 2), -- Combo Doble Pizza incluye Pizza Pollo
(2, 3), -- Combo Doble Pizza incluye Pizza Hawaiana
(3, 5), -- Combo Familiar incluye Pizza Napolitana
(3, 7); -- Combo Familiar incluye Sprite


INSERT INTO pagos (idPagos, idCliente, monto, estado) VALUES
(1, 2, 50000, 'pagado'),
(2, 3, 30000, 'pendiente'),
(3, 1, 60000, 'pagado'),
(4, 3, 70000, 'pagado'),
(5, 1, 40000, 'pendiente'),
(6, 4, 25000, 'pagado'),
(7, 5, 35000, 'pendiente');


INSERT INTO pedido (idPedido, fecha, horaRecogida, idPagos, idCliente) VALUES
(1, '2025-02-18 12:00:00', '2025-02-18 14:05:00', 1, 2),
(2, '2025-02-18 12:30:00', '2025-02-18 14:30:00', 2, 3),
(3, '2025-02-18 13:00:00', '2025-02-18 15:00:00', 3, 1),
(4, '2025-02-18 14:00:00', '2025-02-18 16:00:00', 4, 3),
(5, '2025-02-18 15:00:00', '2025-02-18 17:30:00', 5, 1),
(6, '2025-02-18 16:00:00', '2025-02-18 18:00:00', 6, 4),
(7, '2025-02-18 17:00:00', '2025-02-18 19:30:00', 7, 5);

INSERT INTO detallado_pedido (idDetPedido, idPedido, idProducto, tamano, cantidad, valor) VALUES
(1, 1, 1, 'mediana', 1, 30000),
(2, 2, 2, 'pequeña', 1, 20000),
(3, 3, 3, 'grande', 1, 35000),
(4, 4, 4, 'mediana', 1, 28000),
(5, 5, 5, 'grande', 1, 40000),
(6, 6, 6, NULL, 1, 25000), -- Coca-Cola sin tamaño
(7, 7, 7, NULL, 1, 35000); -- Sprite sin tamaño

