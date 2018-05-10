/*
Created: 9/5/2018
Modified: 9/5/2018
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
  `IDMetodoPago` Int NOT NULL,
  PRIMARY KEY (`IDUsuario`,`IDMetodoPago`),
  PRIMARY KEY (`IDUsuario`,`IDMetodoPago`),
  UNIQUE `IDUsuario` (`IDUsuario`)
)
;

ALTER TABLE `Usuarios` ADD UNIQUE `Login` (`Login`)
;

ALTER TABLE `Usuarios` ADD UNIQUE `Correo` (`Correo`)
;

-- Add foreign keys (relationships) for table Usuarios

ALTER TABLE `Usuarios` ADD CONSTRAINT `Relationship6` FOREIGN KEY (`IDMetodoPago`) REFERENCES `Metodo Pago` (`IDMetodoPago`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

-- Table Ventas

CREATE TABLE `Ventas`
(
  `IDVenta` Int NOT NULL AUTO_INCREMENT,
  `Fecha` Date NOT NULL,
  `Cantidad` Int NOT NULL,
  `Valor Unidad` Float NOT NULL,
  `IDUsuario` Int NOT NULL,
  `IDMetodoPago` Int NOT NULL,
  `IDProducto` Int NOT NULL,
  `IDProveedor` Int NOT NULL,
  `IDPromocion` Int NOT NULL,
  PRIMARY KEY (`IDVenta`,`IDUsuario`,`IDMetodoPago`,`IDProducto`,`IDProveedor`,`IDPromocion`),
  PRIMARY KEY (`IDVenta`,`IDUsuario`,`IDMetodoPago`,`IDProducto`,`IDProveedor`,`IDPromocion`),
  UNIQUE `IDVenta` (`IDVenta`)
)
;

-- Add foreign keys (relationships) for table Ventas

ALTER TABLE `Ventas` ADD CONSTRAINT `Relationship7` FOREIGN KEY (`IDUsuario`, `IDMetodoPago`) REFERENCES `Usuarios` (`IDUsuario`, `IDMetodoPago`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Ventas` ADD CONSTRAINT `Relationship8` FOREIGN KEY (`IDProducto`, `IDProveedor`, `IDPromocion`) REFERENCES `Productos` (`IDProducto`, `IDProveedor`, `IDPromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

-- Table Inventario

CREATE TABLE `Inventario`
(
  `IDInventario` Int NOT NULL AUTO_INCREMENT,
  `Precio Unidad` Float NOT NULL,
  `Stock` Int NOT NULL,
  `Imagen` Blob NOT NULL,
  `IDPromocion` Int NOT NULL,
  `IDTienda` Int NOT NULL,
  `IDProducto` Int NOT NULL,
  `IDProveedor` Int NOT NULL,
  `IDPromocion` Int NOT NULL,
  `IDUsuario` Int NOT NULL,
  `IDMetodoPago` Int NOT NULL,
  `IDUsuario` Int NOT NULL,
  `IDMetodoPago` Int NOT NULL,
  PRIMARY KEY (`IDInventario`,`IDPromocion`,`IDTienda`,`IDProducto`,`IDProveedor`,`IDPromocion`,`IDUsuario`,`IDMetodoPago`,`IDUsuario`,`IDMetodoPago`),
  PRIMARY KEY (`IDInventario`,`IDPromocion`,`IDTienda`,`IDProducto`,`IDProveedor`,`IDPromocion`,`IDUsuario`,`IDMetodoPago`,`IDUsuario`,`IDMetodoPago`),
  UNIQUE `IDInventario` (`IDInventario`)
)
;

-- Add foreign keys (relationships) for table Inventario

ALTER TABLE `Inventario` ADD CONSTRAINT `Relationship9` FOREIGN KEY (`IDPromocion`) REFERENCES `Promociones` (`IDPromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Inventario` ADD CONSTRAINT `Relationship10` FOREIGN KEY (`IDTienda`, `IDUsuario`, `IDMetodoPago`) REFERENCES `Tienda` (`IDTienda`, `IDUsuario`, `IDMetodoPago`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Inventario` ADD CONSTRAINT `Relationship11` FOREIGN KEY (`IDProducto`, `IDProveedor`, `IDPromocion`) REFERENCES `Productos` (`IDProducto`, `IDProveedor`, `IDPromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Inventario` ADD CONSTRAINT `Relationship12` FOREIGN KEY (`IDUsuario`, `IDMetodoPago`) REFERENCES `Usuarios` (`IDUsuario`, `IDMetodoPago`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
  `IDPromocion` Int NOT NULL,
  PRIMARY KEY (`IDProducto`,`IDProveedor`,`IDPromocion`),
  PRIMARY KEY (`IDProducto`,`IDProveedor`,`IDPromocion`),
  UNIQUE `IDProducto` (`IDProducto`)
)
;

-- Add foreign keys (relationships) for table Productos

ALTER TABLE `Productos` ADD CONSTRAINT `Relationship2` FOREIGN KEY (`IDProveedor`) REFERENCES `Proveedores` (`IDProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Productos` ADD CONSTRAINT `Relationship3` FOREIGN KEY (`IDPromocion`) REFERENCES `Promociones` (`IDPromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
  PRIMARY KEY (`IDPromocion`),
  PRIMARY KEY (`IDPromocion`),
  UNIQUE `IDPromocion` (`IDPromocion`)
)
;

-- Table Carrito

CREATE TABLE `Carrito`
(
  `IDCarrito` Int NOT NULL AUTO_INCREMENT,
  `Cantidad` Int NOT NULL,
  `IDUsuario` Int NOT NULL,
  `IDMetodoPago` Int NOT NULL,
  `IDProducto` Int NOT NULL,
  `IDProveedor` Int NOT NULL,
  `IDPromocion` Int NOT NULL,
  PRIMARY KEY (`IDCarrito`,`IDUsuario`,`IDMetodoPago`,`IDProducto`,`IDProveedor`,`IDPromocion`),
  PRIMARY KEY (`IDCarrito`,`IDUsuario`,`IDMetodoPago`,`IDProducto`,`IDProveedor`,`IDPromocion`),
  UNIQUE `IDCarrito` (`IDCarrito`)
)
;

-- Add foreign keys (relationships) for table Carrito

ALTER TABLE `Carrito` ADD CONSTRAINT `Relationship14` FOREIGN KEY (`IDUsuario`, `IDMetodoPago`) REFERENCES `Usuarios` (`IDUsuario`, `IDMetodoPago`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Carrito` ADD CONSTRAINT `Relationship15` FOREIGN KEY (`IDProducto`, `IDProveedor`, `IDPromocion`) REFERENCES `Productos` (`IDProducto`, `IDProveedor`, `IDPromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

-- Table Pedido

CREATE TABLE `Pedido`
(
  `IDPedido` Int NOT NULL AUTO_INCREMENT,
  `FechaInicio` Date NOT NULL,
  `FechaEstimada` Date NOT NULL,
  `IDUsuario` Int NOT NULL,
  `IDMetodoPago` Int NOT NULL,
  `IDProducto` Int NOT NULL,
  `IDProveedor` Int NOT NULL,
  `IDPromocion` Int NOT NULL,
  PRIMARY KEY (`IDPedido`,`IDUsuario`,`IDMetodoPago`,`IDProducto`,`IDProveedor`,`IDPromocion`),
  PRIMARY KEY (`IDPedido`,`IDUsuario`,`IDMetodoPago`,`IDProducto`,`IDProveedor`,`IDPromocion`),
  UNIQUE `IDPedido` (`IDPedido`)
)
;

-- Add foreign keys (relationships) for table Pedido

ALTER TABLE `Pedido` ADD CONSTRAINT `Relationship16` FOREIGN KEY (`IDUsuario`, `IDMetodoPago`) REFERENCES `Usuarios` (`IDUsuario`, `IDMetodoPago`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `Pedido` ADD CONSTRAINT `Relationship17` FOREIGN KEY (`IDProducto`, `IDProveedor`, `IDPromocion`) REFERENCES `Productos` (`IDProducto`, `IDProveedor`, `IDPromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

-- Table Detalle Pedido

CREATE TABLE `Detalle Pedido`
(
  `IDDetallePedido` Varchar(20) NOT NULL,
  `Cantidad` Int NOT NULL,
  `Talla` Decimal(10,0) NOT NULL,
  `Color` Varchar(20) NOT NULL,
  `IDPedido` Int NOT NULL,
  `IDUsuario` Int NOT NULL,
  `IDMetodoPago` Int NOT NULL,
  `IDProducto` Int NOT NULL,
  `IDProveedor` Int NOT NULL,
  `IDPromocion` Int NOT NULL
)
;

ALTER TABLE `Detalle Pedido` ADD PRIMARY KEY (`IDDetallePedido`,`IDPromocion`,`IDProveedor`,`IDProducto`,`IDMetodoPago`,`IDUsuario`,`IDPedido`)
;

ALTER TABLE `Detalle Pedido` ADD UNIQUE `IDDetallePedido` (`IDDetallePedido`)
;

-- Add foreign keys (relationships) for table Detalle Pedido

ALTER TABLE `Detalle Pedido` ADD CONSTRAINT `Relationship18` FOREIGN KEY (`IDPedido`, `IDUsuario`, `IDMetodoPago`, `IDProducto`, `IDProveedor`, `IDPromocion`) REFERENCES `Pedido` (`IDPedido`, `IDUsuario`, `IDMetodoPago`, `IDProducto`, `IDProveedor`, `IDPromocion`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
  `IDMetodoPago` Int NOT NULL,
  PRIMARY KEY (`IDTienda`,`IDUsuario`,`IDMetodoPago`),
  PRIMARY KEY (`IDTienda`,`IDUsuario`,`IDMetodoPago`),
  UNIQUE `IDTienda` (`IDTienda`)
)
;

-- Add foreign keys (relationships) for table Tienda

ALTER TABLE `Tienda` ADD CONSTRAINT `Relationship20` FOREIGN KEY (`IDUsuario`, `IDMetodoPago`) REFERENCES `Usuarios` (`IDUsuario`, `IDMetodoPago`) ON DELETE RESTRICT ON UPDATE RESTRICT
;



