-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Temps de generació: 10-05-2018 a les 19:16:18
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
-- Base de dades: `persephónē`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `carrito`
--

CREATE TABLE `carrito` (
  `IDCarrito` int(50) NOT NULL,
  `Cantidad` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `detalle pedido`
--

CREATE TABLE `detalle pedido` (
  `IDDetallePedido` int(50) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Talla` decimal(10,0) NOT NULL,
  `Color` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `inventario`
--

CREATE TABLE `inventario` (
  `IDInventario` int(50) NOT NULL,
  `Precio Unidad` float NOT NULL,
  `Stock` int(11) NOT NULL,
  `Imagen` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `metodo pago`
--

CREATE TABLE `metodo pago` (
  `IDMetodoPago` int(50) NOT NULL,
  `TipoPago` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Descripcion` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `pedido`
--

CREATE TABLE `pedido` (
  `IDPedido` int(50) NOT NULL,
  `Fecha Inicio` date NOT NULL,
  `Fecha Estimada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `productos`
--

CREATE TABLE `productos` (
  `IDProducto` int(50) NOT NULL,
  `Referencia` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Stock` int(11) NOT NULL,
  `Precio Unidad` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `promociones`
--

CREATE TABLE `promociones` (
  `IDPromocion` int(50) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Fecha Inicio` date NOT NULL,
  `Fecha Final` date NOT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `proveedor`
--

CREATE TABLE `proveedor` (
  `IDProveedor` int(50) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Razon Social` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Direccion` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Correo` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `tienda`
--

CREATE TABLE `tienda` (
  `IDTienda` int(50) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Direccion` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Gerente` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `usuarios`
--

CREATE TABLE `usuarios` (
  `IDCuenta` int(50) NOT NULL,
  `Login` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Password` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Correo` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Telefono` int(15) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Apellidos` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Direccion` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `Rol` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de la taula `ventas`
--

CREATE TABLE `ventas` (
  `IDVenta` int(50) NOT NULL,
  `Fecha` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Valor Unidad` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`IDCarrito`);

--
-- Índexs per a la taula `detalle pedido`
--
ALTER TABLE `detalle pedido`
  ADD PRIMARY KEY (`IDDetallePedido`);

--
-- Índexs per a la taula `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`IDInventario`);

--
-- Índexs per a la taula `metodo pago`
--
ALTER TABLE `metodo pago`
  ADD PRIMARY KEY (`IDMetodoPago`);

--
-- Índexs per a la taula `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`IDPedido`);

--
-- Índexs per a la taula `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IDProducto`);

--
-- Índexs per a la taula `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`IDPromocion`);

--
-- Índexs per a la taula `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`IDProveedor`);

--
-- Índexs per a la taula `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`IDTienda`);

--
-- Índexs per a la taula `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IDCuenta`),
  ADD UNIQUE KEY `Login` (`Login`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- Índexs per a la taula `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`IDVenta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
