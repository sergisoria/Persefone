-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Temps de generació: 17-05-2018 a les 17:48:13
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

CREATE TABLE `carrito` (
  `idCarrito` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Valor Unidad` float NOT NULL,
  `Talla` double NOT NULL,
  `Color` varchar(20) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idPromocion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `detalle pedido`
--

CREATE TABLE `detalle pedido` (
  `idDetalle Pedido` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Talla` decimal(10,0) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `inventario`
--

CREATE TABLE `inventario` (
  `idInventario` int(11) NOT NULL,
  `Precio Unidad` float NOT NULL,
  `Stock` int(11) NOT NULL,
  `Imagen` blob NOT NULL,
  `idTienda` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `metodo pago`
--

CREATE TABLE `metodo pago` (
  `idMetodo Pago` int(11) NOT NULL,
  `Tipo Pago` varchar(20) NOT NULL,
  `Descripcion` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `metodo pago`
--

INSERT INTO `metodo pago` (`idMetodo Pago`, `Tipo Pago`, `Descripcion`) VALUES
(1, 'VISA', 'Tarjeta de Crédito de CaixaBank.\r\n3273 8193 7283 1726 \r\n03/21 ');

-- --------------------------------------------------------

--
-- Estructura de la taula `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `Fecha Inicio` date NOT NULL,
  `Fecha Estimada` date NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Referencia` varchar(20) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Precio Unidad` float NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `idProveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `productos`
--

INSERT INTO `productos` (`idProducto`, `Nombre`, `Referencia`, `Stock`, `Precio Unidad`, `Genero`, `idProveedor`) VALUES
(1, 'Camiseta Gucci', '03982718392', 30, 25, 'Masculino', 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `promociones`
--

CREATE TABLE `promociones` (
  `idPromocion` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Fecha Inicio` date NOT NULL,
  `Fecha Final` date NOT NULL,
  `Descripcion` varchar(20) NOT NULL,
  `Descuento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de la taula `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `Nombre`, `Direccion`, `Correo`, `Telefono`) VALUES
(1, 'Gucci', 'Via Tornabuoni 73 50123 Florence, Italy.', 'clientservice-europe@it.gucci.com', 663717612);

-- --------------------------------------------------------

--
-- Estructura de la taula `tienda`
--

CREATE TABLE `tienda` (
  `idTienda` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Direccion` varchar(20) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `tienda`
--

INSERT INTO `tienda` (`idTienda`, `Nombre`, `Direccion`, `Telefono`, `idUsuario`) VALUES
(1, 'Persephone', 'www.persephone.com', 933827723, 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `Login` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellidos` varchar(20) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Rol` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `Login`, `Password`, `Correo`, `Telefono`, `Nombre`, `Apellidos`, `Direccion`, `Rol`) VALUES
(1, 'oriolvalnun', 'monlau2018', 'oriolvalnun@gmail.co', 663717617, 'Oriol', 'Valls', 'Castella 30', 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Valor Unidad` float NOT NULL,
  `idMetodo Pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`idCarrito`),
  ADD UNIQUE KEY `idCarrito_UNIQUE` (`idCarrito`),
  ADD KEY `fk_Carrito_Usuarios1_idx` (`idUsuario`),
  ADD KEY `fk_Carrito_Productos1_idx` (`idProducto`),
  ADD KEY `fk_Carrito_Promociones1_idx` (`idPromocion`);

--
-- Índexs per a la taula `detalle pedido`
--
ALTER TABLE `detalle pedido`
  ADD PRIMARY KEY (`idDetalle Pedido`),
  ADD UNIQUE KEY `idDetalle Pedido_UNIQUE` (`idDetalle Pedido`),
  ADD KEY `fk_Detalle Pedido_Productos1_idx` (`idProducto`),
  ADD KEY `fk_Detalle Pedido_Pedido1_idx` (`idPedido`);

--
-- Índexs per a la taula `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idInventario`),
  ADD UNIQUE KEY `idInventario_UNIQUE` (`idInventario`),
  ADD KEY `fk_Inventario_Tienda_idx` (`idTienda`),
  ADD KEY `fk_Inventario_Proveedores1_idx` (`idProveedor`),
  ADD KEY `fk_Inventario_Productos1_idx` (`idProducto`);

--
-- Índexs per a la taula `metodo pago`
--
ALTER TABLE `metodo pago`
  ADD PRIMARY KEY (`idMetodo Pago`),
  ADD UNIQUE KEY `idMetodo Pago_UNIQUE` (`idMetodo Pago`);

--
-- Índexs per a la taula `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD UNIQUE KEY `idPedido_UNIQUE` (`idPedido`),
  ADD KEY `fk_Pedido_Usuarios1_idx` (`idUsuario`);

--
-- Índexs per a la taula `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD UNIQUE KEY `idProducto_UNIQUE` (`idProducto`),
  ADD KEY `fk_Productos_Proveedores1_idx` (`idProveedor`);

--
-- Índexs per a la taula `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`idPromocion`),
  ADD UNIQUE KEY `idPromocion_UNIQUE` (`idPromocion`);

--
-- Índexs per a la taula `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`),
  ADD UNIQUE KEY `idProveedor_UNIQUE` (`idProveedor`);

--
-- Índexs per a la taula `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`idTienda`),
  ADD UNIQUE KEY `idTienda_UNIQUE` (`idTienda`),
  ADD KEY `fk_Tienda_Usuarios1_idx` (`idUsuario`);

--
-- Índexs per a la taula `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`),
  ADD UNIQUE KEY `Login_UNIQUE` (`Login`),
  ADD UNIQUE KEY `Correo_UNIQUE` (`Correo`);

--
-- Índexs per a la taula `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`),
  ADD UNIQUE KEY `idVenta_UNIQUE` (`idVenta`),
  ADD KEY `fk_Ventas_Metodo Pago1_idx` (`idMetodo Pago`);

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
