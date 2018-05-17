/*
Created: 9/5/2018
Modified: 15/5/2018
Model: MySQL 5.0
Database: MySQL 5.0
*/


-- Create tables section -------------------------------------------------

-- Table Usuarios

CREATE TABLE `Usuarios`
(
  `IDUsuario` Int NOT NULL AUTO_INCREMENT,
  `Login` Varchar(20) NOT NULL,
  `Password` Varchar(20) NOT NULL,
  `Correo` Varchar(20) NOT NULL,
  `Telefono` Int NOT NULL,
  `Nombre` Varchar(20) NOT NULL,
  `Apellidos` Varchar(20) NOT NULL,
  `Direccion` Varchar(50) NOT NULL,
  `Rol` Bool NOT NULL,
  PRIMARY KEY (`IDUsuario`),
  PRIMARY KEY (`IDUsuario`),
  UNIQUE `IDUsuario` (`IDUsuario`)
)
;

ALTER TABLE `Usuarios` ADD UNIQUE `Login` (`Login`)
;

ALTER TABLE `Usuarios` ADD UNIQUE `Correo` (`Correo`)
;

-- Table Ventas

CREATE TABLE `Ventas`
(
  `IDVenta` Int NOT NULL AUTO_INCREMENT,
  `Fecha` Date NOT NULL,
  `Cantidad` Int NOT NULL,
  `Valor Unidad` Float NOT NULL,
  `IDProducto` Int NOT NULL,
  `IDMetodoPago` Int NOT NULL,
  `IDProveedor` Int NOT NULL,
  PRIMARY KEY (`IDVenta`,`IDProducto`,`IDMetodoPago`,`IDProveedor`),
  PRIMARY KEY (`IDVenta`,`IDProducto`,`IDMetodoPago`,`IDProveedor`),
  UNIQUE `IDVenta` (`IDVenta`)
)
;

-- Table Inventario

CREATE TABLE `Inventario`
(
  `IDInventario` Int NOT NULL AUTO_INCREMENT,
  `Precio Unidad` Float NOT NULL,
  `Stock` Int NOT NULL,
  `Imagen` Blob NOT NULL,
  `IDTienda` Int NOT NULL,
  `IDUsuario` Int NOT NULL,
  `IDProducto` Int NOT NULL,
  `IDProveedor` Int NOT NULL,
  PRIMARY KEY (`IDInventario`,`IDTienda`,`IDUsuario`,`IDProducto`,`IDProveedor`),
  PRIMARY KEY (`IDInventario`,`IDTienda`,`IDUsuario`,`IDProducto`,`IDProveedor`),
  UNIQUE `IDInventario` (`IDInventario`)
)
;

-- Table Productos

CREATE TABLE `Productos`
(
  `IDProducto` Int NOT NULL AUTO_INCREMENT,
  `Nombre` Varchar(20) NOT NULL,
  `Referencia` Varchar(20) NOT NULL,
  `Stock` Int NOT NULL,
  `Precio Unidad` Float NOT NULL,
  `IDProveedor` Int NOT NULL,
  PRIMARY KEY (`IDProducto`,`IDProveedor`),
  PRIMARY KEY (`IDProducto`,`IDProveedor`),
  UNIQUE `IDProducto` (`IDProducto`)
)
;

-- Table Proveedores

CREATE TABLE `Proveedores`
(
  `IDProveedor` Int NOT NULL AUTO_INCREMENT,
  `Nombre` Varchar(20) NOT NULL,
  `Direccion` Varchar(20) NOT NULL,
  `Correo` Varchar(20) NOT NULL,
  `Telefono` Int NOT NULL,
  `Razon Social` Varchar(20) NOT NULL,
  PRIMARY KEY (`IDProveedor`),
  PRIMARY KEY (`IDProveedor`),
  UNIQUE `IDProveedor` (`IDProveedor`)
)
;

-- Table Promociones

CREATE TABLE `Promociones`
(
  `IDPromocion` Int NOT NULL AUTO_INCREMENT,
  `Nombre` Varchar(20) NOT NULL,
  `FechaInicio` Date NOT NULL,
  `FechaFinal` Date NOT NULL,
  `Descripcion` Varchar(20) NOT NULL,
  `Descuento` Int NOT NULL,
  PRIMARY KEY (`IDPromocion`),
  PRIMARY KEY (`IDPromocion`),
  UNIQUE `IDPromocion` (`IDPromocion`)
)
;

-- Table Carrito

CREATE TABLE `Carrito`
(
  `IDCarrito` Int NOT NULL AUTO_INCREMENT,
  `Fecha` Date NOT NULL,
  `Cantidad` Int NOT NULL,
  `Valor Unidad` Float NOT NULL,
  `Talla` Double NOT NULL,
  `Color` Varchar(20) NOT NULL,
  `IDVenta` Int NOT NULL,
  `IDProducto` Int NOT NULL,
  `IDMetodoPago` Int NOT NULL,
  `IDProveedor` Int NOT NULL,
  `IDPromocion` Int NOT NULL,
  PRIMARY KEY (`IDCarrito`,`IDVenta`,`IDProducto`,`IDMetodoPago`,`IDProveedor`,`IDPromocion`),
  PRIMARY KEY (`IDCarrito`,`IDVenta`,`IDProducto`,`IDMetodoPago`,`IDProveedor`,`IDPromocion`),
  UNIQUE `IDCarrito` (`IDCarrito`)
)
;

-- Table Pedido

CREATE TABLE `Pedido`
(
  `IDPedido` Int NOT NULL AUTO_INCREMENT,
  `FechaInicio` Date NOT NULL,
  `FechaEstimada` Date NOT NULL,
  `IDUsuario` Int NOT NULL,
  PRIMARY KEY (`IDPedido`,`IDUsuario`),
  PRIMARY KEY (`IDPedido`,`IDUsuario`),
  UNIQUE `IDPedido` (`IDPedido`)
)
;

-- Table Detalle Pedido

CREATE TABLE `Detalle Pedido`
(
  `IDDetallePedido` Varchar(20) NOT NULL,
  `Cantidad` Int NOT NULL,
  `Talla` Decimal(10,0) NOT NULL,
  `Color` Varchar(20) NOT NULL,
  `IDProducto` Int NOT NULL,
  `IDPedido` Int NOT NULL,
  `IDUsuario` Int NOT NULL,
  `IDProveedor` Int NOT NULL
)
;

ALTER TABLE `Detalle Pedido` ADD PRIMARY KEY (`IDDetallePedido`,`IDProducto`,`IDPedido`,`IDUsuario`,`IDProveedor`)
;

ALTER TABLE `Detalle Pedido` ADD UNIQUE `IDDetallePedido` (`IDDetallePedido`)
;

-- Table Metodo Pago

CREATE TABLE `Metodo Pago`
(
  `IDMetodoPago` Int NOT NULL AUTO_INCREMENT,
  `TipoPago` Varchar(20) NOT NULL,
  `Descripcion` Varchar(20) NOT NULL,
  PRIMARY KEY (`IDMetodoPago`),
  PRIMARY KEY (`IDMetodoPago`),
  UNIQUE `IDMetodoPago` (`IDMetodoPago`)
)
;

-- Table Tienda

CREATE TABLE `Tienda`
(
  `IDTienda` Int NOT NULL AUTO_INCREMENT,
  `Nombre` Varchar(20) NOT NULL,
  `Direccion` Varchar(20) NOT NULL,
  `Telefono` Int NOT NULL,
  `IDUsuario` Int NOT NULL,
  PRIMARY KEY (`IDTienda`,`IDUsuario`),
  PRIMARY KEY (`IDTienda`,`IDUsuario`),
  UNIQUE `IDTienda` (`IDTienda`)
)
;

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE `Tienda` ADD CONSTRAINT `Relationship2` FOREIGN KEY (`IDUsuario`) REFERENCES `Usuarios` (`IDUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Carrito` ADD CONSTRAINT `Relationship4` FOREIGN KEY (`IDVenta`, `IDProducto`, `IDMetodoPago`, `IDProveedor`) REFERENCES `Ventas` (`IDVenta`, `IDProducto`, `IDMetodoPago`, `IDProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Ventas` ADD CONSTRAINT `Relationship5` FOREIGN KEY (`IDProducto`, `IDProveedor`) REFERENCES `Productos` (`IDProducto`, `IDProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Ventas` ADD CONSTRAINT `Relationship6` FOREIGN KEY (`IDMetodoPago`) REFERENCES `Metodo Pago` (`IDMetodoPago`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Inventario` ADD CONSTRAINT `Relationship7` FOREIGN KEY (`IDTienda`, `IDUsuario`) REFERENCES `Tienda` (`IDTienda`, `IDUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Detalle Pedido` ADD CONSTRAINT `Relationship8` FOREIGN KEY (`IDProducto`, `IDProveedor`) REFERENCES `Productos` (`IDProducto`, `IDProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Detalle Pedido` ADD CONSTRAINT `Relationship9` FOREIGN KEY (`IDPedido`, `IDUsuario`) REFERENCES `Pedido` (`IDPedido`, `IDUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Pedido` ADD CONSTRAINT `Relationship10` FOREIGN KEY (`IDUsuario`) REFERENCES `Usuarios` (`IDUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Productos` ADD CONSTRAINT `Relationship11` FOREIGN KEY (`IDProveedor`) REFERENCES `Proveedores` (`IDProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Carrito` ADD CONSTRAINT `Relationship12` FOREIGN KEY (`IDPromocion`) REFERENCES `Promociones` (`IDPromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `Inventario` ADD CONSTRAINT `Relationship13` FOREIGN KEY (`IDProducto`, `IDProveedor`) REFERENCES `Productos` (`IDProducto`, `IDProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


