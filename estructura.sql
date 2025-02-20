-- Estructura sql
CREATE DATABASE pizzatest;
USE pizzatest;

CREATE TABLE cliente (
    idCliente INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    direccion VARCHAR(100)
);

CREATE TABLE producto (
    idProducto INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo ENUM('pizza', 'bebida') NOT NULL,
    tamano ENUM('pequeña', 'mediana', 'grande') NULL,
    precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE ingrediente (
    idIngrediente INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE pizza_ingrediente (
    idProducto INT,
    idIngrediente INT,
    PRIMARY KEY (idProducto, idIngrediente),
    FOREIGN KEY (idProducto) REFERENCES producto(idProducto),
    FOREIGN KEY (idIngrediente) REFERENCES ingrediente(idIngrediente)
);

CREATE TABLE pago (
    idPago INT PRIMARY KEY,
    idCliente INT,
    monto DECIMAL(10,2) NOT NULL,
    fecha_pago DATETIME NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

CREATE TABLE pedido (
    idPedido INT PRIMARY KEY,
    idCliente INT NOT NULL,
    idPago INT NOT NULL,
    fecha DATETIME NOT NULL,
    horaEntrega DATETIME NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente),
    FOREIGN KEY (idPago) REFERENCES pago(idPago)
);

CREATE TABLE pedido_producto (
    idPedido INT,
    idProducto INT,
    cantidad INT NOT NULL,
    PRIMARY KEY (idPedido, idProducto),
    FOREIGN KEY (idPedido) REFERENCES pedido(idPedido),
    FOREIGN KEY (idProducto) REFERENCES producto(idProducto)
);

CREATE TABLE pedido_ingrediente_extra (
    idPedido INT,
    idProducto INT,
    idIngrediente INT,
    cantidad INT NOT NULL,
    costo_adicional DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (idPedido, idProducto, idIngrediente),
    FOREIGN KEY (idPedido) REFERENCES pedido(idPedido),
    FOREIGN KEY (idProducto) REFERENCES producto(idProducto),
    FOREIGN KEY (idIngrediente) REFERENCES ingrediente(idIngrediente)
);

CREATE TABLE detallado_pedido (
    idDetPedido INT PRIMARY KEY,
    idPedido INT NOT NULL,
    proceso VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idPedido) REFERENCES pedido(idPedido)
);

CREATE TABLE combo (
    idCombo INT PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE combo_producto (
    idCombo INT,
    idProducto INT,
    PRIMARY KEY (idCombo, idProducto),
    FOREIGN KEY (idCombo) REFERENCES combo(idCombo),
    FOREIGN KEY (idProducto) REFERENCES producto(idProducto)
);

CREATE TABLE pedido_combo (
    idPedido INT,
    idCombo INT,
    cantidad INT NOT NULL,
    PRIMARY KEY (idPedido, idCombo),
    FOREIGN KEY (idPedido) REFERENCES pedido(idPedido),
    FOREIGN KEY (idCombo) REFERENCES combo(idCombo)
);