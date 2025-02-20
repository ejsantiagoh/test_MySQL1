-- Estructura sql
create database pizzatest;
use pizzatest;

create table cliente(
	idCliente int primary key,
	nombre varchar(50) not null,
	telefono varchar(15),
	direccion varchar(30)
);
create table producto(
	idProducto int primary key,
	disponibles enum ("pequeñas","medianas","grandes")  not null,
	ingredientes enum ("Pollo","Mexicana","Hawaina"),
	combos enum ("pizza + gaseosa","Ninguno"),
	idCliente int,
	foreign key (idCliente) references cliente(idCliente)
);
create table pagos(
	idPagos int primary key,
	idCliente int,
	foreign key (idCliente) references cliente(idCliente)
);
create table pedido(
	idPedido int primary key,
	fecha datetime not null,
	horaEntrega datetime not null,
	idPagos int,
	idCliente int,
	foreign key (idCliente) references cliente(idCliente),
	foreign key (idPagos) references pagos(idPagos)
);
create table detallado_pedido(
	idDetPedido int primary key,
	proceso varchar(50) not null,
	valor int ,
	idProducto int,
	foreign key (idProducto) references producto(idProducto)
);
