-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Temps de generació: 16-05-2018 a les 17:58:05
-- Versió del servidor: 10.1.31-MariaDB
-- Versió de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `persephone`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `carrito`
--

CREATE TABLE IF NOT EXISTS `carrito` (
  `idCarrito` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Valor Unidad` float NOT NULL,
  `Talla` double NOT NULL,
  `Color` varchar(20) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idPromocion` int(11) NOT NULL,
  PRIMARY KEY (`idCarrito`),
  UNIQUE KEY `idCarrito_UNIQUE` (`idCarrito`),
  KEY `fk_Carrito_Usuarios1_idx` (`idUsuario`),
  KEY `fk_Carrito_Productos1_idx` (`idProducto`),
  KEY `fk_Carrito_Promociones1_idx` (`idPromocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `detalle pedido`
--

CREATE TABLE IF NOT EXISTS `detalle pedido` (
  `idDetalle Pedido` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Talla` decimal(10,0) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  PRIMARY KEY (`idDetalle Pedido`),
  UNIQUE KEY `idDetalle Pedido_UNIQUE` (`idDetalle Pedido`),
  KEY `fk_Detalle Pedido_Productos1_idx` (`idProducto`),
  KEY `fk_Detalle Pedido_Pedido1_idx` (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `idInventario` int(11) NOT NULL,
  `Precio Unidad` float NOT NULL,
  `Stock` int(11) NOT NULL,
  `Imagen` blob NOT NULL,
  `idTienda` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  PRIMARY KEY (`idInventario`),
  UNIQUE KEY `idInventario_UNIQUE` (`idInventario`),
  KEY `fk_Inventario_Tienda_idx` (`idTienda`),
  KEY `fk_Inventario_Proveedores1_idx` (`idProveedor`),
  KEY `fk_Inventario_Productos1_idx` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `metodo pago`
--

CREATE TABLE IF NOT EXISTS `metodo pago` (
  `idMetodo Pago` int(11) NOT NULL,
  `Tipo Pago` varchar(20) NOT NULL,
  `Descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`idMetodo Pago`),
  UNIQUE KEY `idMetodo Pago_UNIQUE` (`idMetodo Pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `idPedido` int(11) NOT NULL,
  `Fecha Inicio` date NOT NULL,
  `Fecha Estimada` date NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idPedido`),
  UNIQUE KEY `idPedido_UNIQUE` (`idPedido`),
  KEY `fk_Pedido_Usuarios1_idx` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `idProducto` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Referencia` varchar(20) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Precio Unidad` float NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `idProducto_UNIQUE` (`idProducto`),
  KEY `fk_Productos_Proveedores1_idx` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `promociones`
--

CREATE TABLE IF NOT EXISTS `promociones` (
  `idPromocion` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Fecha Inicio` date NOT NULL,
  `Fecha Final` date NOT NULL,
  `Descripcion` varchar(20) NOT NULL,
  `Descuento` int(11) NOT NULL,
  PRIMARY KEY (`idPromocion`),
  UNIQUE KEY `idPromocion_UNIQUE` (`idPromocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `proveedores`
--

CREATE TABLE IF NOT EXISTS `proveedores` (
  `idProveedor` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `Telefono` int(11) NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `idProveedor_UNIQUE` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `tienda`
--

CREATE TABLE IF NOT EXISTS `tienda` (
  `idTienda` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idTienda`),
  UNIQUE KEY `idTienda_UNIQUE` (`idTienda`),
  KEY `fk_Tienda_Usuarios1_idx` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `Login` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellidos` varchar(20) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Rol` tinyint(4) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`),
  UNIQUE KEY `Login_UNIQUE` (`Login`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `idVenta` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Valor Unidad` float NOT NULL,
  `idMetodo Pago` int(11) NOT NULL,
  PRIMARY KEY (`idVenta`),
  UNIQUE KEY `idVenta_UNIQUE` (`idVenta`),
  KEY `fk_Ventas_Metodo Pago1_idx` (`idMetodo Pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `fk_Carrito_Productos1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Carrito_Promociones1` FOREIGN KEY (`idPromocion`) REFERENCES `promociones` (`idPromocion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Carrito_Usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `detalle pedido`
--
ALTER TABLE `detalle pedido`
  ADD CONSTRAINT `fk_Detalle Pedido_Pedido1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detalle Pedido_Productos1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_Inventario_Productos1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Inventario_Proveedores1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Inventario_Tienda` FOREIGN KEY (`idTienda`) REFERENCES `tienda` (`idTienda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_Pedido_Usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_Productos_Proveedores1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `fk_Tienda_Usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_Ventas_Metodo Pago1` FOREIGN KEY (`idMetodo Pago`) REFERENCES `metodo pago` (`idMetodo Pago`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
