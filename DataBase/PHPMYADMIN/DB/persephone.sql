-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
<<<<<<< Updated upstream
<<<<<<< HEAD
-- Temps de generació: 29-05-2018 a les 15:11:40
-- Versió del servidor: 10.1.31-MariaDB
-- Versió de PHP: 7.2.4
=======
-- Tiempo de generación: 28-05-2018 a las 15:27:34
=======
-- Tiempo de generación: 29-05-2018 a las 18:53:21
>>>>>>> Stashed changes
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4
>>>>>>> master

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
  `ValorUnidad` decimal(20,2) NOT NULL,
  `Talla` varchar(25) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idPromocion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
<<<<<<< HEAD
-- Bolcament de dades per a la taula `carrito`
=======
-- Volcado de datos para la tabla `carrito`
>>>>>>> master
--

INSERT INTO `carrito` (`idCarrito`, `Fecha`, `Cantidad`, `ValorUnidad`, `Talla`, `Color`, `idUsuario`, `idProducto`, `idPromocion`) VALUES
(1, '2018-05-21', 4, '120.00', 'S', 'Rojo', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `detallepedido`
--

CREATE TABLE `detallepedido` (
  `idDetallePedido` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Talla` varchar(25) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
<<<<<<< HEAD
-- Bolcament de dades per a la taula `detallepedido`
=======
-- Volcado de datos para la tabla `detallepedido`
>>>>>>> master
--

INSERT INTO `detallepedido` (`idDetallePedido`, `Cantidad`, `Talla`, `Color`, `idProducto`, `idPedido`) VALUES
(1, 4, 'S', 'Verde', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `inventario`
--

CREATE TABLE `inventario` (
  `idInventario` int(11) NOT NULL,
  `idTienda` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
<<<<<<< Updated upstream
<<<<<<< HEAD
=======
  `idProveedor` int(11) NOT NULL,
>>>>>>> master
=======
>>>>>>> Stashed changes
  `idTipos` int(11) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Talla` varchar(20) NOT NULL,
  `Genero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
<<<<<<< HEAD
-- Bolcament de dades per a la taula `inventario`
--

INSERT INTO `inventario` (`idInventario`, `idTienda`, `idProducto`, `idTipos`, `Stock`, `Talla`, `Genero`) VALUES
(1, 1, 1, 1, 20, 'S', 'Masculino'),
(2, 1, 1, 1, 20, 'M', 'Masculino'),
(3, 1, 1, 1, 20, 'L', 'Masculino'),
(4, 1, 1, 1, 20, 'XL', 'Masculino'),
(5, 1, 2, 8, 20, 'S', 'Masculino'),
(6, 1, 2, 8, 20, 'M', 'Masculino'),
(7, 1, 2, 8, 20, 'L', 'Masculino'),
(8, 1, 2, 8, 20, 'XL', 'Masculino'),
(9, 1, 3, 8, 20, '39', 'Masculino'),
(10, 1, 3, 8, 20, '40', 'Masculino'),
(11, 1, 3, 8, 20, '41', 'Masculino'),
(12, 1, 3, 8, 20, '42', 'Masculino'),
(13, 1, 3, 8, 20, '43', 'Masculino'),
(14, 1, 3, 8, 20, '44', 'Masculino'),
(15, 1, 3, 8, 20, '45', 'Masculino'),
(16, 1, 4, 8, 20, '39', 'Masculino'),
(17, 1, 4, 8, 20, '40', 'Masculino'),
(18, 1, 4, 8, 20, '41', 'Masculino'),
(19, 1, 4, 8, 20, '42', 'Masculino'),
(20, 1, 4, 8, 20, '43', 'Masculino'),
(21, 1, 4, 8, 20, '44', 'Masculino'),
(22, 1, 4, 8, 20, '45', 'Masculino'),
(23, 1, 5, 8, 20, 'S', 'Masculino'),
(24, 1, 5, 8, 20, 'M', 'Masculino'),
(25, 1, 5, 8, 20, 'L', 'Masculino'),
(26, 1, 5, 8, 20, 'XL', 'Masculino'),
(27, 1, 6, 8, 20, 'S', 'Masculino'),
(28, 1, 6, 8, 20, 'M', 'Masculino'),
(29, 1, 6, 8, 20, 'L', 'Masculino'),
(30, 1, 6, 8, 20, 'XL', 'Masculino'),
(31, 1, 7, 8, 20, 'Talla única', 'Masculino'),
(32, 1, 8, 9, 20, '39', 'Femenino'),
(33, 1, 8, 9, 20, '40', 'Femenino'),
(34, 1, 8, 9, 20, '41', 'Femenino'),
(35, 1, 8, 9, 20, '42', 'Femenino'),
(36, 1, 9, 9, 20, 'S', 'Femenino'),
(37, 1, 9, 9, 20, 'M', 'Femenino'),
(38, 1, 9, 9, 20, 'L', 'Femenino'),
(39, 1, 9, 9, 20, 'XL', 'Femenino'),
(40, 1, 10, 9, 20, 'Talla única', 'Femenino'),
(41, 1, 11, 9, 20, '39', 'Femenino'),
(42, 1, 11, 9, 20, '40', 'Femenino'),
(43, 1, 11, 9, 20, '41', 'Femenino'),
(44, 1, 11, 9, 20, '42', 'Femenino'),
(45, 1, 12, 9, 20, 'Talla única', 'Femenino'),
(46, 1, 13, 9, 20, 'Talla única', 'Femenino');
=======
-- Volcado de datos para la tabla `inventario`
--

<<<<<<< Updated upstream
INSERT INTO `inventario` (`idInventario`, `idTienda`, `idProducto`, `idProveedor`, `idTipos`, `Stock`, `Talla`, `Genero`) VALUES
(1, 1, 1, 4, 1, 20, 'S', 'Masculino');
>>>>>>> master
=======
INSERT INTO `inventario` (`idInventario`, `idTienda`, `idProducto`, `idTipos`, `Stock`, `Talla`, `Genero`) VALUES
(1, 1, 1, 1, 20, 'S', 'Masculino'),
(2, 1, 1, 1, 20, 'M', 'Masculino'),
(3, 1, 1, 1, 20, 'L', 'Masculino'),
(4, 1, 1, 1, 20, 'XL', 'Masculino'),
(5, 1, 2, 8, 20, 'S', 'Masculino'),
(6, 1, 2, 8, 20, 'M', 'Masculino'),
(7, 1, 2, 8, 20, 'L', 'Masculino'),
(8, 1, 2, 8, 20, 'XL', 'Masculino'),
(9, 1, 3, 8, 20, '39', 'Masculino'),
(10, 1, 3, 8, 20, '40', 'Masculino'),
(11, 1, 3, 8, 20, '41', 'Masculino'),
(12, 1, 3, 8, 20, '42', 'Masculino'),
(13, 1, 3, 8, 20, '43', 'Masculino'),
(14, 1, 3, 8, 20, '44', 'Masculino'),
(15, 1, 3, 8, 20, '45', 'Masculino'),
(16, 1, 4, 8, 20, '39', 'Masculino'),
(17, 1, 4, 8, 20, '40', 'Masculino'),
(18, 1, 4, 8, 20, '41', 'Masculino'),
(19, 1, 4, 8, 20, '42', 'Masculino'),
(20, 1, 4, 8, 20, '43', 'Masculino'),
(21, 1, 4, 8, 20, '44', 'Masculino'),
(22, 1, 4, 8, 20, '45', 'Masculino'),
(23, 1, 5, 8, 20, 'S', 'Masculino'),
(24, 1, 5, 8, 20, 'M', 'Masculino'),
(25, 1, 5, 8, 20, 'L', 'Masculino'),
(26, 1, 5, 8, 20, 'XL', 'Masculino'),
(27, 1, 6, 8, 20, 'S', 'Masculino'),
(28, 1, 6, 8, 20, 'M', 'Masculino'),
(29, 1, 6, 8, 20, 'L', 'Masculino'),
(30, 1, 6, 8, 20, 'XL', 'Masculino'),
(31, 1, 7, 8, 20, 'Talla única', 'Masculino'),
(32, 1, 8, 9, 20, '39', 'Femenino'),
(33, 1, 8, 9, 20, '40', 'Femenino'),
(34, 1, 8, 9, 20, '41', 'Femenino'),
(35, 1, 8, 9, 20, '42', 'Femenino'),
(36, 1, 9, 9, 20, 'S', 'Femenino'),
(37, 1, 9, 9, 20, 'M', 'Femenino'),
(38, 1, 9, 9, 20, 'L', 'Femenino'),
(39, 1, 9, 9, 20, 'XL', 'Femenino'),
(40, 1, 10, 9, 20, 'Talla única', 'Femenino'),
(41, 1, 11, 9, 20, '39', 'Femenino'),
(42, 1, 11, 9, 20, '40', 'Femenino'),
(43, 1, 11, 9, 20, '41', 'Femenino'),
(44, 1, 11, 9, 20, '42', 'Femenino'),
(45, 1, 12, 9, 20, 'Talla única', 'Femenino'),
(46, 1, 13, 9, 20, 'Talla única', 'Femenino'),
(47, 1, 14, 1, 20, 'S', 'Femenino'),
(48, 1, 14, 1, 20, 'M', 'Femenino'),
(49, 1, 14, 1, 20, 'L', 'Femenino'),
(50, 1, 14, 1, 20, 'XL', 'Femenino'),
(51, 1, 15, 1, 20, 'S', 'Femenino'),
(52, 1, 15, 1, 20, 'M', 'Femenino'),
(53, 1, 15, 1, 20, 'L', 'Femenino'),
(54, 1, 15, 1, 20, 'XL', 'Femenino'),
(55, 1, 16, 1, 20, 'S', 'Femenino'),
(56, 1, 16, 1, 20, 'M', 'Femenino'),
(57, 1, 16, 1, 20, 'L', 'Femenino'),
(58, 1, 16, 1, 20, 'XL', 'Femenino'),
(59, 1, 17, 1, 20, 'S', 'Masculino'),
(60, 1, 17, 1, 20, 'M', 'Masculino'),
(61, 1, 17, 1, 20, 'L', 'Masculino'),
(62, 1, 17, 1, 20, 'XL', 'Masculino'),
(63, 1, 18, 1, 20, 'S', 'Masculino'),
(64, 1, 18, 1, 20, 'M', 'Masculino'),
(65, 1, 18, 1, 20, 'L', 'Masculino'),
(66, 1, 18, 1, 20, 'XL', 'Masculino'),
(67, 1, 19, 2, 20, '32', 'Femenino'),
(68, 1, 19, 2, 20, '34', 'Femenino'),
(69, 1, 19, 2, 20, '36', 'Femenino'),
(70, 1, 19, 2, 20, '38', 'Femenino'),
(71, 1, 19, 2, 20, '40', 'Femenino'),
(72, 1, 19, 2, 20, '42', 'Femenino'),
(73, 1, 19, 2, 20, '44', 'Femenino'),
(74, 1, 20, 2, 20, '32', 'Femenino'),
(75, 1, 20, 2, 20, '34', 'Femenino'),
(76, 1, 20, 2, 20, '36', 'Femenino'),
(77, 1, 20, 2, 20, '38', 'Femenino'),
(78, 1, 20, 2, 20, '40', 'Femenino'),
(79, 1, 20, 2, 20, '42', 'Femenino'),
(80, 1, 20, 2, 20, '44', 'Femenino'),
(81, 1, 21, 2, 20, '32', 'Femenino'),
(83, 1, 21, 2, 20, '34', 'Femenino'),
(84, 1, 21, 2, 20, '36', 'Femenino'),
(85, 1, 21, 2, 20, '38', 'Femenino'),
(86, 1, 21, 2, 20, '40', 'Femenino'),
(87, 1, 21, 2, 20, '42', 'Femenino'),
(88, 1, 21, 2, 20, '44', 'Femenino'),
(89, 1, 22, 2, 20, '32', 'Femenino'),
(90, 1, 22, 2, 20, '34', 'Femenino'),
(91, 1, 22, 2, 20, '36', 'Femenino'),
(92, 1, 22, 2, 20, '38', 'Femenino'),
(93, 1, 22, 2, 20, '40', 'Femenino'),
(94, 1, 22, 2, 20, '42', 'Femenino'),
(95, 1, 22, 2, 20, '44', 'Femenino'),
(96, 1, 23, 2, 20, '32', 'Femenino'),
(97, 1, 23, 2, 20, '34', 'Femenino'),
(98, 1, 23, 2, 20, '36', 'Femenino'),
(99, 1, 23, 2, 20, '38', 'Femenino'),
(100, 1, 23, 2, 20, '40', 'Femenino'),
(101, 1, 23, 2, 20, '42', 'Femenino'),
(102, 1, 23, 2, 20, '44', 'Femenino'),
(103, 1, 24, 2, 20, '32', 'Femenino'),
(104, 1, 24, 2, 20, '34', 'Femenino'),
(105, 1, 24, 2, 20, '36', 'Femenino'),
(106, 1, 24, 2, 20, '38', 'Femenino'),
(107, 1, 24, 2, 20, '40', 'Femenino'),
(108, 1, 24, 2, 20, '42', 'Femenino'),
(109, 1, 24, 2, 20, '44', 'Femenino'),
(110, 1, 25, 4, 20, 'S', 'Masculino'),
(111, 1, 25, 4, 20, 'M', 'Masculino'),
(112, 1, 25, 4, 20, 'L', 'Masculino'),
(113, 1, 25, 4, 20, 'XL', 'Masculino'),
(114, 1, 26, 4, 20, 'S', 'Masculino'),
(115, 1, 26, 4, 20, 'M', 'Masculino'),
(116, 1, 26, 4, 20, 'L', 'Masculino'),
(117, 1, 26, 4, 20, 'XL', 'Masculino'),
(118, 1, 27, 4, 20, 'S', 'Masculino'),
(119, 1, 27, 4, 20, 'M', 'Masculino'),
(120, 1, 27, 4, 20, 'L', 'Masculino'),
(121, 1, 27, 4, 20, 'XL', 'Masculino'),
(122, 1, 28, 4, 20, 'S', 'Femenino'),
(123, 1, 28, 4, 20, 'M', 'Femenino'),
(124, 1, 28, 4, 20, 'L', 'Femenino'),
(125, 1, 28, 4, 20, 'XL', 'Femenino'),
(126, 1, 29, 4, 20, 'S', 'Femenino'),
(127, 1, 29, 4, 20, 'M', 'Femenino'),
(128, 1, 29, 4, 20, 'L', 'Femenino'),
(129, 1, 29, 4, 20, 'XL', 'Femenino'),
(130, 1, 30, 3, 20, 'S', 'Femenino'),
(131, 1, 30, 3, 20, 'M', 'Femenino'),
(132, 1, 30, 3, 20, 'L', 'Femenino'),
(133, 1, 30, 3, 20, 'XL', 'Femenino'),
(134, 1, 31, 3, 20, 'W30 L', 'Unisex'),
(135, 1, 31, 3, 20, 'W32 L', 'Unisex'),
(136, 1, 31, 3, 20, 'W34 L', 'Unisex'),
(137, 1, 31, 3, 20, 'W36 L', 'Unisex'),
(138, 1, 31, 3, 20, 'W32 XL', 'Unisex'),
(139, 1, 31, 3, 20, 'W34 XL', 'Unisex'),
(140, 1, 31, 3, 20, 'W36 XL', 'Unisex'),
(141, 1, 32, 3, 20, 'W30 L', 'Unisex'),
(142, 1, 32, 3, 20, 'W32 L', 'Unisex'),
(143, 1, 32, 3, 20, 'W34 L', 'Unisex'),
(144, 1, 32, 3, 20, 'W36 L', 'Unisex'),
(145, 1, 32, 3, 20, 'W32 XL', 'Unisex'),
(146, 1, 32, 3, 20, 'W34 XL', 'Unisex'),
(147, 1, 32, 3, 20, 'W36 XL', 'Unisex'),
(148, 1, 33, 3, 20, 'W30 L', 'Unisex'),
(149, 1, 33, 3, 20, 'W32 L', 'Unisex'),
(150, 1, 33, 3, 20, 'W34 L', 'Unisex'),
(151, 1, 33, 3, 20, 'W36 L', 'Unisex'),
(152, 1, 33, 3, 20, 'W32 XL', 'Unisex'),
(153, 1, 33, 3, 20, 'W34 XL', 'Unisex'),
(154, 1, 33, 3, 20, 'W36 XL', 'Unisex'),
(155, 1, 34, 3, 20, 'W30 L', 'Unisex'),
(156, 1, 34, 3, 20, 'W32 L', 'Unisex'),
(157, 1, 34, 3, 20, 'W34 L', 'Unisex'),
(158, 1, 34, 3, 20, 'W36 L', 'Unisex'),
(159, 1, 34, 3, 20, 'W32 XL', 'Unisex'),
(160, 1, 34, 3, 20, 'W34 XL', 'Unisex'),
(161, 1, 34, 3, 20, 'W36 XL', 'Unisex'),
(162, 1, 35, 3, 20, 'W30 L', 'Unisex'),
(163, 1, 35, 3, 20, 'W32 L', 'Unisex'),
(164, 1, 35, 3, 20, 'W34 L', 'Unisex'),
(165, 1, 35, 3, 20, 'W36 L', 'Unisex'),
(166, 1, 35, 3, 20, 'W32 XL', 'Unisex'),
(167, 1, 35, 3, 20, 'W34 XL', 'Unisex'),
(168, 1, 35, 3, 20, 'W36 XL', 'Unisex'),
(169, 1, 36, 3, 20, 'W30 L', 'Unisex'),
(170, 1, 36, 3, 20, 'W32 L', 'Unisex'),
(171, 1, 36, 3, 20, 'W34 L', 'Unisex'),
(172, 1, 36, 3, 20, 'W36 L', 'Unisex'),
(173, 1, 36, 3, 20, 'W32 XL', 'Unisex'),
(174, 1, 36, 3, 20, 'W34 XL', 'Unisex'),
(175, 1, 36, 3, 20, 'W36 XL', 'Unisex'),
(176, 1, 37, 5, 20, '30', 'Femenino'),
(177, 1, 37, 5, 20, '32', 'Femenino'),
(178, 1, 37, 5, 20, '34', 'Femenino'),
(179, 1, 37, 5, 20, '36', 'Femenino'),
(180, 1, 37, 5, 20, '38', 'Femenino'),
(181, 1, 37, 5, 20, '40', 'Femenino'),
(182, 1, 37, 5, 20, '42', 'Femenino'),
(183, 1, 37, 5, 20, '44', 'Femenino'),
(184, 1, 37, 5, 20, '46', 'Femenino'),
(185, 1, 37, 5, 20, '48', 'Femenino'),
(186, 1, 37, 5, 20, '50', 'Femenino'),
(187, 1, 38, 5, 20, 'XXS', 'Femenino'),
(188, 1, 38, 5, 20, 'XS', 'Femenino'),
(189, 1, 38, 5, 20, 'S', 'Femenino'),
(190, 1, 38, 5, 20, 'M', 'Femenino'),
(191, 1, 38, 5, 20, 'L', 'Femenino'),
(192, 1, 38, 5, 20, 'XL', 'Femenino'),
(193, 1, 39, 5, 20, 'XS', 'Femenino'),
(194, 1, 39, 5, 20, 'S', 'Femenino'),
(195, 1, 39, 5, 20, 'M', 'Femenino'),
(196, 1, 39, 5, 20, 'L', 'Femenino'),
(197, 1, 39, 5, 20, 'XL', 'Femenino'),
(198, 1, 40, 5, 20, 'XXS (81-86cm)', 'Masculino'),
(199, 1, 40, 5, 20, 'XS (86-91cm)', 'Masculino'),
(200, 1, 40, 5, 20, 'S (91-96cm)', 'Masculino'),
(201, 1, 40, 5, 20, 'M (96-101cm)', 'Masculino'),
(202, 1, 40, 5, 20, 'L (101-106cm)', 'Masculino'),
(203, 1, 40, 5, 20, 'XL (106-111cm)', 'Masculino'),
(204, 1, 40, 5, 20, 'XXL (111-116cm)', 'Masculino'),
(205, 1, 40, 5, 20, 'XXXL (116-121cm)', 'Masculino'),
(206, 1, 41, 5, 20, 'XXS (81-86cm)', 'Masculino'),
(207, 1, 41, 5, 20, 'XS (86-91cm)', 'Masculino'),
(208, 1, 41, 5, 20, 'S (91-96cm)', 'Masculino'),
(209, 1, 41, 5, 20, 'M (96-101cm)', 'Masculino'),
(210, 1, 41, 5, 20, 'L (101-106cm)', 'Masculino'),
(211, 1, 41, 5, 20, 'XL (106-111cm)', 'Masculino'),
(212, 1, 41, 5, 20, 'XXL (111-116cm)', 'Masculino'),
(213, 1, 41, 5, 20, 'XXXL (116-121cm)', 'Masculino'),
(214, 1, 42, 5, 20, 'XXS (81-86cm)', 'Masculino'),
(215, 1, 42, 5, 20, 'XS (86-91cm)', 'Masculino'),
(216, 1, 42, 5, 20, 'S (91-96cm)', 'Masculino'),
(217, 1, 42, 5, 20, 'M (96-101cm)', 'Masculino'),
(218, 1, 42, 5, 20, 'L (101-106cm)', 'Masculino'),
(219, 1, 42, 5, 20, 'XL (106-111cm)', 'Masculino'),
(220, 1, 42, 5, 20, 'XXL (111-116cm)', 'Masculino'),
(221, 1, 42, 5, 20, 'XXXL (116-121cm)', 'Masculino'),
(222, 1, 43, 6, 20, '46 Corto', 'Masculino'),
(223, 1, 43, 6, 20, '48 Corto', 'Masculino'),
(224, 1, 43, 6, 20, '50 Corto', 'Masculino'),
(225, 1, 43, 6, 20, '52 Corto', 'Masculino'),
(226, 1, 43, 6, 20, '42 W81cm', 'Masculino'),
(227, 1, 43, 6, 20, '44 W86cm', 'Masculino'),
(228, 1, 43, 6, 20, '46 W91cm', 'Masculino'),
(229, 1, 43, 6, 20, '48 W96cm', 'Masculino'),
(230, 1, 43, 6, 20, '50 W101cm', 'Masculino'),
(231, 1, 43, 6, 20, '52 W106cm', 'Masculino'),
(232, 1, 43, 6, 20, '54 W111cm', 'Masculino'),
(233, 1, 44, 6, 20, '44', 'Masculino'),
(234, 1, 44, 6, 20, '46', 'Masculino'),
(235, 1, 44, 6, 20, '48', 'Masculino'),
(236, 1, 44, 6, 20, '50', 'Masculino'),
(237, 1, 44, 6, 20, '52', 'Masculino'),
(238, 1, 44, 6, 20, '54', 'Masculino'),
(239, 1, 44, 6, 20, '56', 'Masculino'),
(240, 1, 45, 6, 20, '46', 'Masculino'),
(241, 1, 45, 6, 20, '48', 'Masculino'),
(242, 1, 45, 6, 20, '50', 'Masculino'),
(243, 1, 45, 6, 20, '52', 'Masculino'),
(244, 1, 45, 6, 20, '54', 'Masculino'),
(245, 1, 45, 6, 20, '56', 'Masculino'),
(246, 1, 45, 6, 20, '58', 'Masculino'),
(247, 1, 46, 6, 20, '32', 'Femenino'),
(248, 1, 46, 6, 20, '34', 'Femenino'),
(249, 1, 46, 6, 20, '36', 'Femenino'),
(250, 1, 46, 6, 20, '38', 'Femenino'),
(251, 1, 46, 6, 20, '40', 'Femenino'),
(252, 1, 46, 6, 20, '42', 'Femenino'),
(253, 1, 46, 6, 20, '44', 'Femenino'),
(254, 1, 46, 6, 20, '46', 'Femenino'),
(255, 1, 47, 6, 20, '32', 'Femenino'),
(256, 1, 47, 6, 20, '34', 'Femenino'),
(257, 1, 47, 6, 20, '36', 'Femenino'),
(258, 1, 47, 6, 20, '38', 'Femenino'),
(259, 1, 47, 6, 20, '40', 'Femenino'),
(260, 1, 47, 6, 20, '42', 'Femenino'),
(261, 1, 47, 6, 20, '44', 'Femenino'),
(262, 1, 47, 6, 20, '46', 'Femenino'),
(263, 1, 48, 6, 20, '32', 'Femenino'),
(264, 1, 48, 6, 20, '34', 'Femenino'),
(265, 1, 48, 6, 20, '36', 'Femenino'),
(266, 1, 48, 6, 20, '38', 'Femenino'),
(267, 1, 48, 6, 20, '40', 'Femenino'),
(268, 1, 48, 6, 20, '42', 'Femenino'),
(269, 1, 48, 6, 20, '44', 'Femenino'),
(270, 1, 48, 6, 20, '46', 'Unisex'),
(271, 1, 49, 7, 20, '35.5', 'Unisex'),
(272, 1, 49, 7, 20, '36', 'Unisex'),
(273, 1, 49, 7, 20, '36.5', 'Unisex'),
(274, 1, 49, 7, 20, '37.5', 'Unisex'),
(275, 1, 49, 7, 20, '38', 'Unisex'),
(276, 1, 49, 7, 20, '38.5', 'Unisex'),
(277, 1, 49, 7, 20, '39', 'Unisex'),
(278, 1, 49, 7, 20, '40', 'Unisex'),
(279, 1, 49, 7, 20, '40.5', 'Unisex'),
(280, 1, 49, 7, 20, '41', 'Unisex'),
(281, 1, 49, 7, 20, '42', 'Unisex'),
(282, 1, 49, 7, 20, '42.5', 'Unisex'),
(283, 1, 49, 7, 20, '43', 'Unisex'),
(284, 1, 49, 7, 20, '44', 'Unisex'),
(285, 1, 49, 7, 20, '44.5', 'Unisex'),
(286, 1, 50, 7, 20, '35.5', 'Femenino'),
(287, 1, 50, 7, 20, '36', 'Femenino'),
(288, 1, 50, 7, 20, '36.5', 'Femenino'),
(289, 1, 50, 7, 20, '37.5', 'Femenino'),
(290, 1, 50, 7, 20, '38', 'Femenino'),
(291, 1, 50, 7, 20, '38.5', 'Femenino'),
(292, 1, 50, 7, 20, '39', 'Femenino'),
(293, 1, 50, 7, 20, '40', 'Femenino'),
(294, 1, 50, 7, 20, '40.5', 'Femenino'),
(295, 1, 50, 7, 20, '41', 'Femenino'),
(296, 1, 50, 7, 20, '42', 'Femenino'),
(297, 1, 50, 7, 20, '42.5', 'Femenino'),
(298, 1, 50, 7, 20, '43', 'Femenino'),
(299, 1, 50, 7, 20, '44', 'Femenino'),
(300, 1, 51, 7, 20, '35.5', 'Femenino'),
(301, 1, 51, 7, 20, '36', 'Femenino'),
(302, 1, 51, 7, 20, '36.5', 'Femenino'),
(303, 1, 51, 7, 20, '37.5', 'Femenino'),
(304, 1, 51, 7, 20, '38', 'Femenino'),
(305, 1, 51, 7, 20, '38.5', 'Femenino'),
(306, 1, 51, 7, 20, '39', 'Femenino'),
(307, 1, 51, 7, 20, '40', 'Femenino'),
(308, 1, 51, 7, 20, '40.5', 'Femenino'),
(309, 1, 51, 7, 20, '41', 'Femenino'),
(310, 1, 51, 7, 20, '42', 'Femenino'),
(311, 1, 51, 7, 20, '42.5', 'Femenino'),
(312, 1, 51, 7, 20, '43', 'Femenino'),
(313, 1, 51, 7, 20, '44', 'Femenino'),
(314, 1, 52, 7, 20, '38.5', 'Masculino'),
(315, 1, 52, 7, 20, '40', 'Masculino'),
(316, 1, 52, 7, 20, '40.5', 'Masculino'),
(317, 1, 52, 7, 20, '41', 'Masculino'),
(318, 1, 52, 7, 20, '42', 'Masculino'),
(319, 1, 52, 7, 20, '42.5', 'Masculino'),
(320, 1, 52, 7, 20, '43', 'Masculino'),
(321, 1, 52, 7, 20, '44', 'Masculino'),
(322, 1, 52, 7, 20, '44.5', 'Masculino'),
(323, 1, 52, 7, 20, '45', 'Masculino'),
(324, 1, 52, 7, 20, '45.5', 'Masculino'),
(325, 1, 52, 7, 20, '46', 'Masculino'),
(326, 1, 52, 7, 20, '47.5', 'Masculino'),
(327, 1, 52, 7, 20, '48.5', 'Masculino'),
(328, 1, 53, 7, 20, '38.5', 'Masculino'),
(329, 1, 53, 7, 20, '40', 'Masculino'),
(330, 1, 53, 7, 20, '40.5', 'Masculino'),
(331, 1, 53, 7, 20, '41', 'Masculino'),
(332, 1, 53, 7, 20, '42', 'Masculino'),
(333, 1, 53, 7, 20, '42.5', 'Masculino'),
(334, 1, 53, 7, 20, '43', 'Masculino'),
(335, 1, 53, 7, 20, '44', 'Masculino'),
(336, 1, 53, 7, 20, '44.5', 'Masculino'),
(337, 1, 53, 7, 20, '45', 'Masculino'),
(338, 1, 53, 7, 20, '45.5', 'Masculino'),
(339, 1, 53, 7, 20, '46', 'Masculino'),
(340, 1, 53, 7, 20, '47.5', 'Masculino'),
(341, 1, 53, 7, 20, '48.5', 'Masculino'),
(342, 1, 54, 7, 20, '38.5', 'Masculino'),
(343, 1, 54, 7, 20, '40', 'Masculino'),
(344, 1, 54, 7, 20, '40.5', 'Masculino'),
(345, 1, 54, 7, 20, '41', 'Masculino'),
(346, 1, 54, 7, 20, '42', 'Masculino'),
(347, 1, 54, 7, 20, '42.5', 'Masculino'),
(348, 1, 54, 7, 20, '43', 'Masculino'),
(349, 1, 54, 7, 20, '44', 'Masculino'),
(350, 1, 54, 7, 20, '44.5', 'Masculino'),
(351, 1, 54, 7, 20, '45', 'Masculino'),
(352, 1, 54, 7, 20, '45.5', 'Masculino'),
(353, 1, 54, 7, 20, '46', 'Masculino'),
(354, 1, 54, 7, 20, '47.5', 'Masculino'),
(355, 1, 54, 7, 20, '48.5', 'Masculino');
>>>>>>> Stashed changes

-- --------------------------------------------------------

--
-- Estructura de la taula `metodopago`
--

CREATE TABLE `metodopago` (
  `idMetodoPago` int(11) NOT NULL,
  `TipoPago` varchar(20) NOT NULL,
  `Descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `metodopago`
--

INSERT INTO `metodopago` (`idMetodoPago`, `TipoPago`, `Descripcion`) VALUES
(1, 'VISA', 'Tarjeta de Crédito de CaixaBank.\r\n3273 8193 7283 1726 \r\n03/21 '),
(2, 'Paypal', 'Paypal con el correo oriolvalnun@monlau.es');

-- --------------------------------------------------------

--
-- Estructura de la taula `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaEstimada` date NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
<<<<<<< HEAD
-- Bolcament de dades per a la taula `pedido`
=======
-- Volcado de datos para la tabla `pedido`
>>>>>>> master
--

INSERT INTO `pedido` (`idPedido`, `FechaInicio`, `FechaEstimada`, `idUsuario`) VALUES
(1, '2018-05-20', '2018-05-23', 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Referencia` varchar(20) NOT NULL,
  `PrecioUnidad` decimal(20,2) NOT NULL,
  `idTipos` int(11) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Talla` varchar(20) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
<<<<<<< Updated upstream
<<<<<<< HEAD
  `idProveedor` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `productos`
--

INSERT INTO `productos` (`idProducto`, `Nombre`, `Referencia`, `PrecioUnidad`, `idTipos`, `Color`, `Talla`, `Genero`, `Imagen`, `idProveedor`, `Descripcion`) VALUES
(1, 'Camiseta Nike FC', '1', '62.99', 1, 'Negro', 'S', 'Masculino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO1.jpg', 4, ' Cuello redondo - Estampado de Nike FC - Corte estándar - Se adapta a ti'),
(2, 'Campera', '2', '210.00', 8, 'Negro', 'S', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD1.jpg', 11, ' Tela técnica - Cuello redondo - Manga larga - Multibolsillos - Monocolor - Abotonadura simple - Cierre de cremallera - Interior forrado'),
(3, 'Sneakers', '3', '145.00', 8, 'Azul Marino', '40', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD2.jpg', 11, ' Monocolor - Cierre con elásticos - Puntera redonda - Suela de goma'),
(4, 'Sandalia de dedo', '4', '49.00', 8, 'Negro', '40', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD3.jpg', 11, ' Logotipo - Suela de goma'),
(5, 'Cazadora de plumas', '5', '165.00', 8, 'Gris', 'S', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD4.jpg', 11, ' Cuello alto - Manga larga - Bolsillos con cremallera - Monocolor - Cierre de cremallera - Interior en pluma de pato - Tela técnica'),
(6, 'Campera', '6', '210.00', 8, 'Blanco', 'S', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD5.jpg', 11, ' Tela técnica - Cuello alto - Manga larga - Multibolsillos - Abotonadura simple - Cierre de cremallera - Interior sin forro'),
(7, 'Gorra', '7', '60.00', 8, 'Azul Marino', 'Talla Unica', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD6.jpg', 11, ' Tela técnica - Cierre de Velcro - Logotipo - Visera rígida'),
(8, 'Sneakers', '8', '125.00', 9, 'Blanco', '40', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD1.jpg', 11, ' Piel de imitación - Logotipo - Cierre con cordones - Suela de goma - Puntera redonda'),
(9, 'Shorts', '9', '105.00', 9, 'Negro', 'S', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD2.jpg', 11, ' Crepé - Cintura alta - Cintura con elástico - Logotipo - Dos bolsillos delanteros'),
(10, 'Bolso Shopping', '10', '145.00', 9, 'Rosa', 'Talla Unica', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD3.jpg', 11, ' Piel de imitación - Logotipo - Monocolor - Cierre de cremallera'),
(11, 'Talones', '11', '145.00', 9, 'Rojo', '40', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD4.jpg', 11, ' Tecnofibra - Efecto ante - Suela de goma - Puntera cuadrada - Tacón revestido - Cierre con correa en el tobillo'),
(12, 'Clutch', '12', '75.00', 9, 'Gris', 'Talla Unica', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD5.jpg', 11, ' Logotipo - Monocolor básico - Cierre de cremallera - Bolsillo interno'),
(13, 'Mochila', '13', '125.00', 9, 'Gris', 'Talla Unica', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD6.jpg', 11, ' Monocolor básico - Bolsillo interno con cremallera - Logotipo'),
(14, 'Camiseta de Botones', '14', '19.99', 1, 'Blanco', 'S', 'Femenino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO2.jpg', 2, ' Tirantes ajustables'),
(15, 'Camiseta Levis', '15', '35.99', 1, 'Blanco', 'S', 'Femenino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO4.jpg', 3, ' Manga corta - Logo'),
(16, 'Camiseta con Estampado', '16', '150.99', 1, 'Blanco', 'S', 'Femenino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO6.jpg', 2, ' Manga corta - Estampado con corazones'),
(17, 'Camiseta Merci', '17', '15.99', 1, 'Blanco', 'S', 'Masculino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO5.jpg', 2, ' Manga corta - Logo'),
(18, 'Camiseta Gris', '18', '25.99', 1, 'Gris', 'S', 'Masculino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO3.jpg', 2, ' Manga larga - Estampado calaveras'),
(19, 'Vestido largo de PrettyLittleThing', '19', '47.99', 2, 'Blanco', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO1.jpg', 5, ' Estampado floral - Escote Bardot - Abertura lateral de talle alto - Corte estándar'),
(20, 'Vestido largo de Warehouse', '20', '51.99', 2, 'Multicolor', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO2.jpg', 6, ' Diseño a rayas - Ponte en línea -Escote y espalda redondos - Cinta anudada en la cintura - Abertura lateral - Corte estándar - Corte estándar para conseguir un diseño clásico'),
(21, 'Vestido con manga de PrettyLittleThing', '21', '40.99', 2, 'Verde', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO3.jpg', 5, ' Parte delantera cruzada - Un cruzado genial - Aplicación floral y detalle de perlas de imitación - Cinturilla ajustada - Escote en la espalda - Cierre con cremallera - Corte estándar'),
(22, 'Vestido con ribete de volante de Boohoo', '22', '13.49', 2, 'Negro', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO4.jpg', 7, ' El LBD, todo un clásico - Punto de canalé - Cuello en V - Ribetes acampanados - Corte ceñido'),
(23, 'Vestido largo de River Island', '23', '68.99', 2, 'Naranja', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO5.jpg', 9, ' -Cuello redondo Cuello redondo más amplio que el habitual - Estilo sin mangas - Apertura en la parte delantera - Corte ajustado'),
(24, 'Vestido estilo polo de de Weekday', '24', '45.00', 2, 'Blanco', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO6.jpg', 8, ' Diseño liso - Cool desenfadado - Cuello tipo polo - Tapeta de botones - Corte holgado'),
(25, 'Parka de Only & Sons', '25', '70.99', 4, 'Gris', 'S', 'Masculino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO1.jpg', 13, ' Forro suave - Acabado muy sedoso - Una calidad superior tanto dentro como fuera - Capucha ajustable - Mangas raglán - Cierre con boton de presión - Abertura con cremallera - Bolsillos funcionales - Corte estándar - Corte estándar para conseguir un diseño'),
(26, 'Parka de punto extragrande de Kyoto', '26', '48.99', 4, 'Negro', 'S', 'Masculino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO2.jpg', 15, ' Capucha con cordón ajustable - Cierre con cremallera - Cordón ajustable en la cinturilla y en el bajo - Bolsillos funcionales - Estampado gráfico en la parte posterior - Diseño empresarial en la parte delantera y festivo en la parte posterior - Bajo en f'),
(27, 'Parka larga de D-Struct', '27', '76.99', 4, 'Blanco', 'S', 'Masculino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO3.jpg', 14, ' En un acabado de tejido liso - Forro acolchado para mayor calidez - Forro con bolsillo interno - Capucha fija - Ribete de piel sintética - Cierre con cremallera y botones de presión - Bolsillos funcionales - Corte estándar - Lavar a máquina - 100% poliés'),
(28, 'Parka forrada de New Look', '28', '56.49', 4, 'Crema', 'S', 'Femenino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO4.jpg', 16, ' Forro de piel de oveja - Para sentirte muy abrigadita - Cuello de piel sintética de quita y pon - Cierre con cremallera - Puños con cremallera - Bolsillos funcionales - Bajo ajustable - Corte estándar'),
(29, 'Chaqueta de piel sintética de Mongolia', '29', '66.99', 4, 'Azul', 'S', 'Femenino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO5.jpg', 2, ' Parte delantera abierta\nManga larga - Corte estándar'),
(30, 'Parka de camuflaje de Weekday', '30', '89.99', 4, 'Verde', 'S', 'Femenino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO6.jpg', 8, ' Tejido estampado - Capucha de piel sintética - Cierre con cremallera - Tapeta con botones de presión - Cordón ajustable en la cintura y en el bajo - Bolsillos funcionales - Corte estándar - Lavar a máquina - 64% algodón, 36% poliéster'),
(31, 'Vaqueros de Liquor N Poker', '31', '55.99', 3, 'Azul', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO2.jpeg', 10, ' Gris descolorido - Bragueta de cremallera - Estilo con cinco bolsillos - Corte muy ajustado'),
(32, 'Vaqueros ajustados de Liquor N Poker', '32', '55.99', 3, 'Negro', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO3.jpeg', 10, ' Talle estándar - Bragueta oculta  - Bolsillos funcionales - Corte slim - Corte estrecho que se ajusta al cuerpo'),
(33, 'Vaqueros elásticos de Armani Exchange', '33', '131.99', 3, 'Azul', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO4.jpeg', 11, ' Talle estándar - Bragueta oculta  - Bolsillos funcionales - Corte slim - Corte estrecho que se ajusta al cuerpo'),
(34, 'Vaqueros ajustados de Liquor N Poker', '34', '50.99', 3, 'Negro', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO5.jpeg', 10, ' Denim elástico - Lavado oscuro - Talle estándar - Bragueta con cremallera oculta - Diseño motero - Corte pitillo ajustado al cuerpo - Lavar a máquina'),
(35, 'Vaqueros ajustado de Liquor N Poker', '35', '55.99', 3, 'Blanco', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO6.jpeg', 10, ' Blanco desgastado - Mejor si lo combinas con líquidos de color claro - Bragueta oculta - Bolsillos funcionales - Detalle de roturas - Con ese toque desgastado - Corte ajustado'),
(36, 'Vaqueros ajustados de Brooklyn Denim', '36', '62.99', 3, 'Negro', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\9576510-1-black.jpg', 12, ' Diseño de serpiente bordada - Talle estándar - Bragueta oculta con cierre de botón - Bolsillos funcionales - Corte ajustado ceñido'),
(37, 'Chandal Adidas', '37', '43.99', 5, 'Rojo', '36', 'Femenino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO1.jpg', 17, ' Diseño con detalle de la marca - Botones de presión en los laterales - Un ligero toque para deslumbrar - Corte estándar'),
(38, 'Chandal Puma', '38', '65.99', 5, 'Negro', '36', 'Femenino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO5.jpg', 18, ' Tejido DRYCELL para el control de la humedad - Repele el sudor de la piel - Ayuda a que el sudor se evapore más rápido. - Diseñadas para mantenerte seco y cómodo - Cintura de talle medio - Cintura con cordón elástico ajustable - Bolsillos laterales - Lar'),
(39, 'Chandal Nike', '39', '80.99', 5, 'Rosa', '36', 'Femenino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO4.jpg', 4, ' Diseño reversible con logo - Cuello redondo - Hombros caídos - Para un look desenfadado - Corte estándar'),
(40, 'Chandal SF Completo', '40', '160.99', 5, 'Gris', 'S', 'Masculino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO2.jpg', 19, ' Cinturilla con cordón ajustable - Corte ajustado - Corte ajustado para un diseño elegante'),
(41, 'Chandal Asos Completo', '41', '90.99', 5, 'Rojo', 'S', 'Masculino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO6.jpg', 2, ' Capucha con cordón ajustable - Bolsillo abultado - Ribetes ajustados - Corte ajustado en la parte de arriba - Cinturilla con cordón ajustable - Con puntas y ojales de metal'),
(42, 'Chandal Armani Completo', '42', '300.99', 5, 'Negro', 'S', 'Masculino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO3.jpg', 11, ' Capucha con cordón ajustable - Corte ajustado - Parte de arriba con neopreno'),
(43, 'Americana Azul', '43', '83.99', 6, 'Azul Marino', '32', 'Masculino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO2.jpg', 2, ' Solapas de muesca - Cuatro bolsillos delanteros - Doble abertura trasera - Dos botones'),
(44, 'Americana Gris', '44', '95.99', 6, 'Gris', '34', 'Masculino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO4.jpg', 11, ' Solapas de muesca - Abertura con dos botones - Forro con bolsillo interno - Bolsillos funcionales'),
(45, 'Americana de Cuadros', '45', '100.99', 6, 'Gris', '36', 'Masculino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO3.jpg', 1, ' Contiene elástico para más comodidad - Solapa de muesca - Abertura con un único botón - Forro con dos bolsillos en el interior - Bolsillos funcionales - Abertura en el centro de la parte posterior - Corte muy ajustado'),
(46, 'Blazer Verde Pistacho', '46', '60.99', 6, 'Verde ', '26', 'Femenino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO1.jpg', 9, ' Diseño de sastre en T - Solapa de muesca - Cierre de botón - Corte estándar'),
(47, 'Blazer Negro', '47', '50.99', 6, 'Negro', '28', 'Femenino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO6.jpg', 2, ' Diseño totalmente forrado - Solapas en pico - Parte delantera abierta - Estilo corto - Aberturas en los puños - Corte estándar'),
(48, 'Blazer Rosa', '48', '80.99', 6, 'Rosa', '30', 'Femenino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO7.jpg', 2, ' Parte delantera abierta - Diseño liso - Corte estándar - Bolsillos funcionales'),
(49, 'Bambas Nike Cortez', '49', '73.99', 7, 'Blanco', '40', 'Unisex', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO1.jpg', 4, ' Exterior de cuero suave - Cierre de cordones - Nombre de la marca en el lateral - Tobillo y lengüeta acolchados - Suela gruesa - Dibujo moldeado'),
(50, 'Bambas Nike Thea Air Max ', '50', '55.99', 7, 'Negro', '39', 'Femenino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO2.jpg', 4, ' Cierre de cordones - Logo de Nike en los laterales - Espuma moldeada para apoyar la zona media del pie y el talón - Borde con forma - Trabilla para calzar'),
(51, 'Bambas Nike - SB', '51', '85.99', 7, 'Gris', '40', 'Femenino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO6.jpg', 4, ' Diseño liso - Un básico en tu armario - Cierre de cordones - Acolchados para mayor comodidad - Logo característico de Nike - Suela gruesa - Dibujo moldeado'),
(52, 'Bambas Nike - SJ', '52', '90.99', 7, 'Marron', '45', 'Masculino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO5.jpg', 4, ' Exterior de ante - Cierre de cordones - Marca en la lengüeta y en la abertura - Acolchados para mayor comodidad - Logo de Nike en contraste - Suela gruesa de goma - Dibujo texturizado'),
(53, 'Bambas Nike Lunar', '53', '70.99', 7, 'Negro', '43', 'Masculino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO3.jpg', 4, ' Superposiciones resistentes a las abrasiones - Cierre de cordones - Con cables Flywire para un ajuste seguro - Tobillo acolchado - Amotiguación de espuma para mayor estabilidad y comodidad - Logo característico de Nike - Goma adherente en la parte delant'),
(54, 'Bambas Nike Air-Force', '54', '120.99', 7, 'Negro', '45', 'Masculino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO4.jpg', 4, ' Cierre de cordones - Logo de Nike en los laterales - Espuma moldeada para apoyar la zona media del pie y el talón - Borde con forma - Trabilla para calzar - Unidad Max Air para amortiguar y permitir un movimiento suave');
=======
  `idProveedor` int(11) NOT NULL
=======
  `idProveedor` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
>>>>>>> Stashed changes
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

<<<<<<< Updated upstream
INSERT INTO `productos` (`idProducto`, `Nombre`, `Referencia`, `PrecioUnidad`, `idTipos`, `Color`, `Talla`, `Genero`, `Imagen`, `idProveedor`) VALUES
(1, 'Camiseta Nike FC', '1', '62.99', 1, 'Negro', 'S', 'Masculino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO1.jpg', 4),
(2, 'Campera', '2', '210.00', 8, 'Negro', 'S', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD1.jpg', 11),
(3, 'Sneakers', '3', '145.00', 8, 'Azul Marino', '40', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD2.jpg', 11),
(4, 'Sandalia de dedo', '4', '49.00', 8, 'Negro', '40', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD3.jpg', 11),
(5, 'Cazadora de plumas', '5', '165.00', 8, 'Gris', 'S', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD4.jpg', 11),
(6, 'Campera', '6', '210.00', 8, 'Blanco', 'S', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD5.jpg', 11),
(7, 'Gorra', '7', '60.00', 8, 'Azul Marino', 'Talla Unica', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD6.jpg', 11),
(8, 'Sneakers', '8', '125.00', 9, 'Blanco', '40', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD1.jpg', 11),
(9, 'Shorts', '9', '105.00', 9, 'Negro', 'S', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD2.jpg', 11),
(10, 'Bolso Shopping', '10', '145.00', 9, 'Rosa', 'Talla Unica', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD3.jpg', 11),
(11, 'Talones', '11', '145.00', 9, 'Rojo', '40', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD4.jpg', 11),
(12, 'Clutch', '12', '75.00', 9, 'Gris', 'Talla Unica', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD5.jpg', 11),
(13, 'Mochila', '13', '125.00', 9, 'Gris', 'Talla Unica', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD6.jpg', 11),
(14, 'Camiseta de Botones', '14', '19.99', 1, 'Blanco', 'S', 'Femenino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO2.jpg', 2),
(15, 'Camiseta Levis', '15', '35.99', 1, 'Blanco', 'S', 'Femenino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO4.jpg', 3),
(16, 'Camiseta con Estampado', '16', '150.99', 1, 'Blanco', 'S', 'Femenino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO6.jpg', 2),
(17, 'Camiseta Merci', '17', '15.99', 1, 'Blanco', 'S', 'Masculino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO5.jpg', 2),
(18, 'Camiseta Gris', '18', '25.99', 1, 'Gris', 'S', 'Masculino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO3.jpg', 2),
(19, 'Vestido largo de PrettyLittleThing', '19', '47.99', 2, 'Blanco', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO1.jpg', 5),
(20, 'Vestido largo de Warehouse', '20', '51.99', 2, 'Multicolor', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO2.jpg', 6),
(21, 'Vestido con manga de PrettyLittleThing', '21', '40.99', 2, 'Verde', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO3.jpg', 5),
(22, 'Vestido con ribete de volante de Boohoo', '22', '13.49', 2, 'Negro', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO4.jpg', 7),
(23, 'Vestido largo de River Island', '23', '68.99', 2, 'Naranja', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO5.jpg', 9),
(24, 'Vestido estilo polo de de Weekday', '24', '45.00', 2, 'Blanco', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO6.jpg', 8),
(25, 'Parka de Only & Sons', '25', '70.99', 4, 'Gris', 'S', 'Masculino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO1.jpg', 13),
(26, 'Parka de punto extragrande de Kyoto', '26', '48.99', 4, 'Negro', 'S', 'Masculino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO2.jpg', 15),
(27, 'Parka larga de D-Struct', '27', '76.99', 4, 'Blanco', 'S', 'Masculino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO3.jpg', 14),
(28, 'Parka forrada de New Look', '28', '56.49', 4, 'Crema', 'S', 'Femenino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO4.jpg', 16),
(29, 'Chaqueta de piel sintética de Mongolia', '29', '66.99', 4, 'Azul', 'S', 'Femenino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO5.jpg', 2),
(30, 'Parka de camuflaje de Weekday', '30', '89.99', 4, 'Verde', 'S', 'Femenino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO6.jpg', 8),
(31, 'Vaqueros de Liquor N Poker', '31', '55.99', 3, 'Azul', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO2.jpeg', 10),
(32, 'Vaqueros ajustados de Liquor N Poker', '32', '55.99', 3, 'Negro', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO3.jpeg', 10),
(33, 'Vaqueros elásticos de Armani Exchange', '33', '131.99', 3, 'Azul', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO4.jpeg', 11),
(34, 'Vaqueros ajustados de Liquor N Poker', '34', '50.99', 3, 'Negro', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO5.jpeg', 10),
(35, 'Vaqueros ajustado de Liquor N Poker', '35', '55.99', 3, 'Blanco', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO6.jpeg', 10),
(36, 'Vaqueros ajustados de Brooklyn Denim', '36', '62.99', 3, 'Negro', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\9576510-1-black.jpg', 12),
(37, 'Chandal Adidas', '37', '43.99', 5, 'Rojo', '36', 'Femenino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO1.jpg', 17),
(38, 'Chandal Puma', '38', '65.99', 5, 'Negro', '36', 'Femenino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO5.jpg', 18),
(39, 'Chandal Nike', '39', '80.99', 5, 'Rosa', '36', 'Femenino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO4.jpg', 4),
(40, 'Chandal SF Completo', '40', '160.99', 5, 'Gris', 'S', 'Masculino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO2.jpg', 19),
(41, 'Chandal Asos Completo', '41', '90.99', 5, 'Rojo', 'S', 'Masculino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO6.jpg', 2),
(42, 'Chandal Armani Completo', '42', '300.99', 5, 'Negro', 'S', 'Masculino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO3.jpg', 11),
(43, 'Americana Azul', '43', '83.99', 6, 'Azul Marino', '32', 'Masculino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO2.jpg', 2),
(44, 'Americana Gris', '44', '95.99', 6, 'Gris', '34', 'Masculino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO4.jpg', 11),
(45, 'Americana de Cuadros', '45', '100.99', 6, 'Gris', '36', 'Masculino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO3.jpg', 1),
(46, 'Blazer Verde Pistacho', '46', '60.99', 6, 'Verde ', '26', 'Femenino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO1.jpg', 9),
(47, 'Blazer Negro', '47', '50.99', 6, 'Negro', '28', 'Femenino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO6.jpg', 2),
(48, 'Blazer Rosa', '48', '80.99', 6, 'Rosa', '30', 'Femenino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO7.jpg', 2),
(49, 'Bambas Nike Cortez', '49', '73.99', 7, 'Blanco', '40', 'Unisex', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO1.jpg', 4),
(50, 'Bambas Nike MB', '50', '55.99', 7, 'Negro', '39', 'Femenino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO2.jpg', 4),
(51, 'Bambas Nike - SB', '51', '85.99', 7, 'Gris', '40', 'Femenino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO6.jpg', 4),
(52, 'Bambas Nike - SJ', '52', '90.99', 7, 'Marron', '45', 'Masculino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO5.jpg', 4),
(53, 'Bambas Nike Lunar', '53', '70.99', 7, 'Negro', '43', 'Masculino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO3.jpg', 4),
(54, 'Bambas Nike Air-Force', '54', '120.99', 7, 'Negro', '45', 'Masculino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO4.jpg', 4);
>>>>>>> master
=======
INSERT INTO `productos` (`idProducto`, `Nombre`, `Referencia`, `PrecioUnidad`, `idTipos`, `Color`, `Talla`, `Genero`, `Imagen`, `idProveedor`, `Descripcion`) VALUES
(1, 'Camiseta Nike FC', '1', '62.99', 1, 'Negro', 'S', 'Masculino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO1.jpg', 4, ' Cuello redondo - Estampado de Nike FC - Corte estándar - Se adapta a ti'),
(2, 'Campera', '2', '210.00', 8, 'Negro', 'S', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD1.jpg', 11, ' Tela técnica - Cuello redondo - Manga larga - Multibolsillos - Monocolor - Abotonadura simple - Cierre de cremallera - Interior forrado'),
(3, 'Sneakers', '3', '145.00', 8, 'Azul Marino', '40', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD2.jpg', 11, ' Monocolor - Cierre con elásticos - Puntera redonda - Suela de goma'),
(4, 'Sandalia de dedo', '4', '49.00', 8, 'Negro', '40', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD3.jpg', 11, ' Logotipo - Suela de goma'),
(5, 'Cazadora de plumas', '5', '165.00', 8, 'Gris', 'S', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD4.jpg', 11, ' Cuello alto - Manga larga - Bolsillos con cremallera - Monocolor - Cierre de cremallera - Interior en pluma de pato - Tela técnica'),
(6, 'Campera', '6', '210.00', 8, 'Blanco', 'S', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD5.jpg', 11, ' Tela técnica - Cuello alto - Manga larga - Multibolsillos - Abotonadura simple - Cierre de cremallera - Interior sin forro'),
(7, 'Gorra', '7', '60.00', 8, 'Azul Marino', 'Talla Unica', 'Masculino', '.\\AX_hombre\\AX_hombre_dentro\\AXHD6.jpg', 11, ' Tela técnica - Cierre de Velcro - Logotipo - Visera rígida'),
(8, 'Sneakers', '8', '125.00', 9, 'Blanco', '40', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD1.jpg', 11, ' Piel de imitación - Logotipo - Cierre con cordones - Suela de goma - Puntera redonda'),
(9, 'Shorts', '9', '105.00', 9, 'Negro', 'S', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD2.jpg', 11, ' Crepé - Cintura alta - Cintura con elástico - Logotipo - Dos bolsillos delanteros'),
(10, 'Bolso Shopping', '10', '145.00', 9, 'Rosa', 'Talla Unica', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD3.jpg', 11, ' Piel de imitación - Logotipo - Monocolor - Cierre de cremallera'),
(11, 'Talones', '11', '145.00', 9, 'Rojo', '40', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD4.jpg', 11, ' Tecnofibra - Efecto ante - Suela de goma - Puntera cuadrada - Tacón revestido - Cierre con correa en el tobillo'),
(12, 'Clutch', '12', '75.00', 9, 'Gris', 'Talla Unica', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD5.jpg', 11, ' Logotipo - Monocolor básico - Cierre de cremallera - Bolsillo interno'),
(13, 'Mochila', '13', '125.00', 9, 'Gris', 'Talla Unica', 'Femenino', '.\\AX_mujer\\AX_mujer_dentro\\AXMD6.jpg', 11, ' Monocolor básico - Bolsillo interno con cremallera - Logotipo'),
(14, 'Camiseta de Botones', '14', '19.99', 1, 'Blanco', 'S', 'Femenino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO2.jpg', 2, ' Tirantes ajustables'),
(15, 'Camiseta Levis', '15', '35.99', 1, 'Blanco', 'S', 'Femenino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO4.jpg', 3, ' Manga corta - Logo'),
(16, 'Camiseta con Estampado', '16', '150.99', 1, 'Blanco', 'S', 'Femenino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO6.jpg', 2, ' Manga corta - Estampado con corazones'),
(17, 'Camiseta Merci', '17', '15.99', 1, 'Blanco', 'S', 'Masculino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO5.jpg', 2, ' Manga corta - Logo'),
(18, 'Camiseta Gris', '18', '25.99', 1, 'Gris', 'S', 'Masculino', '.\\camisetas\\camisetas_dentro\\CAMISETAS_DENTRO3.jpg', 2, ' Manga larga - Estampado calaveras'),
(19, 'Vestido largo de PrettyLittleThing', '19', '47.99', 2, 'Blanco', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO1.jpg', 5, ' Estampado floral - Escote Bardot - Abertura lateral de talle alto - Corte estándar'),
(20, 'Vestido largo de Warehouse', '20', '51.99', 2, 'Multicolor', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO2.jpg', 6, ' Diseño a rayas - Ponte en línea -Escote y espalda redondos - Cinta anudada en la cintura - Abertura lateral - Corte estándar - Corte estándar para conseguir un diseño clásico'),
(21, 'Vestido con manga de PrettyLittleThing', '21', '40.99', 2, 'Verde', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO3.jpg', 5, ' Parte delantera cruzada - Un cruzado genial - Aplicación floral y detalle de perlas de imitación - Cinturilla ajustada - Escote en la espalda - Cierre con cremallera - Corte estándar'),
(22, 'Vestido con ribete de volante de Boohoo', '22', '13.49', 2, 'Negro', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO4.jpg', 7, ' El LBD, todo un clásico - Punto de canalé - Cuello en V - Ribetes acampanados - Corte ceñido'),
(23, 'Vestido largo de River Island', '23', '68.99', 2, 'Naranja', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO5.jpg', 9, ' -Cuello redondo Cuello redondo más amplio que el habitual - Estilo sin mangas - Apertura en la parte delantera - Corte ajustado'),
(24, 'Vestido estilo polo de de Weekday', '24', '45.00', 2, 'Blanco', 'S', 'Femenino', '.\\vestidos\\VESTIDOS_DENTRO\\VESTIDOS_DENTRO6.jpg', 8, ' Diseño liso - Cool desenfadado - Cuello tipo polo - Tapeta de botones - Corte holgado'),
(25, 'Parka de Only & Sons', '25', '70.99', 4, 'Gris', 'S', 'Masculino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO1.jpg', 13, ' Forro suave - Acabado muy sedoso - Una calidad superior tanto dentro como fuera - Capucha ajustable - Mangas raglán - Cierre con boton de presión - Abertura con cremallera - Bolsillos funcionales - Corte estándar - Corte estándar para conseguir un diseño'),
(26, 'Parka de punto extragrande de Kyoto', '26', '48.99', 4, 'Negro', 'S', 'Masculino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO2.jpg', 15, ' Capucha con cordón ajustable - Cierre con cremallera - Cordón ajustable en la cinturilla y en el bajo - Bolsillos funcionales - Estampado gráfico en la parte posterior - Diseño empresarial en la parte delantera y festivo en la parte posterior - Bajo en f'),
(27, 'Parka larga de D-Struct', '27', '76.99', 4, 'Blanco', 'S', 'Masculino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO3.jpg', 14, ' En un acabado de tejido liso - Forro acolchado para mayor calidez - Forro con bolsillo interno - Capucha fija - Ribete de piel sintética - Cierre con cremallera y botones de presión - Bolsillos funcionales - Corte estándar - Lavar a máquina - 100% poliés'),
(28, 'Parka forrada de New Look', '28', '56.49', 4, 'Crema', 'S', 'Femenino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO4.jpg', 16, ' Forro de piel de oveja - Para sentirte muy abrigadita - Cuello de piel sintética de quita y pon - Cierre con cremallera - Puños con cremallera - Bolsillos funcionales - Bajo ajustable - Corte estándar'),
(29, 'Chaqueta de piel sintética de Mongolia', '29', '66.99', 4, 'Azul', 'S', 'Femenino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO5.jpg', 2, ' Parte delantera abierta\nManga larga - Corte estándar'),
(30, 'Parka de camuflaje de Weekday', '30', '89.99', 4, 'Verde', 'S', 'Femenino', '.\\chaqueta\\CHAQUETAS_DENTRO\\CHAQUETAS_DENTRO6.jpg', 8, ' Tejido estampado - Capucha de piel sintética - Cierre con cremallera - Tapeta con botones de presión - Cordón ajustable en la cintura y en el bajo - Bolsillos funcionales - Corte estándar - Lavar a máquina - 64% algodón, 36% poliéster'),
(31, 'Vaqueros de Liquor N Poker', '31', '55.99', 3, 'Azul', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO2.jpeg', 10, ' Gris descolorido - Bragueta de cremallera - Estilo con cinco bolsillos - Corte muy ajustado'),
(32, 'Vaqueros ajustados de Liquor N Poker', '32', '55.99', 3, 'Negro', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO3.jpeg', 10, ' Talle estándar - Bragueta oculta  - Bolsillos funcionales - Corte slim - Corte estrecho que se ajusta al cuerpo'),
(33, 'Vaqueros elásticos de Armani Exchange', '33', '131.99', 3, 'Azul', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO4.jpeg', 11, ' Talle estándar - Bragueta oculta  - Bolsillos funcionales - Corte slim - Corte estrecho que se ajusta al cuerpo'),
(34, 'Vaqueros ajustados de Liquor N Poker', '34', '50.99', 3, 'Negro', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO5.jpeg', 10, ' Denim elástico - Lavado oscuro - Talle estándar - Bragueta con cremallera oculta - Diseño motero - Corte pitillo ajustado al cuerpo - Lavar a máquina'),
(35, 'Vaqueros ajustado de Liquor N Poker', '35', '55.99', 3, 'Blanco', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\JEANS_DENTRO6.jpeg', 10, ' Blanco desgastado - Mejor si lo combinas con líquidos de color claro - Bragueta oculta - Bolsillos funcionales - Detalle de roturas - Con ese toque desgastado - Corte ajustado'),
(36, 'Vaqueros ajustados de Brooklyn Denim', '36', '62.99', 3, 'Negro', '36', 'Unisex', '.\\jeans\\buenas\\JEANS_DENTRO\\9576510-1-black.jpg', 12, ' Diseño de serpiente bordada - Talle estándar - Bragueta oculta con cierre de botón - Bolsillos funcionales - Corte ajustado ceñido'),
(37, 'Chandal Adidas', '37', '43.99', 5, 'Rojo', '36', 'Femenino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO1.jpg', 17, ' Diseño con detalle de la marca - Botones de presión en los laterales - Un ligero toque para deslumbrar - Corte estándar'),
(38, 'Chandal Puma', '38', '65.99', 5, 'Negro', '36', 'Femenino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO5.jpg', 18, ' Tejido DRYCELL para el control de la humedad - Repele el sudor de la piel - Ayuda a que el sudor se evapore más rápido. - Diseñadas para mantenerte seco y cómodo - Cintura de talle medio - Cintura con cordón elástico ajustable - Bolsillos laterales - Lar'),
(39, 'Chandal Nike', '39', '80.99', 5, 'Rosa', '36', 'Femenino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO4.jpg', 4, ' Diseño reversible con logo - Cuello redondo - Hombros caídos - Para un look desenfadado - Corte estándar'),
(40, 'Chandal SF Completo', '40', '160.99', 5, 'Gris', 'S', 'Masculino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO2.jpg', 19, ' Cinturilla con cordón ajustable - Corte ajustado - Corte ajustado para un diseño elegante'),
(41, 'Chandal Asos Completo', '41', '90.99', 5, 'Rojo', 'S', 'Masculino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO6.jpg', 2, ' Capucha con cordón ajustable - Bolsillo abultado - Ribetes ajustados - Corte ajustado en la parte de arriba - Cinturilla con cordón ajustable - Con puntas y ojales de metal'),
(42, 'Chandal Armani Completo', '42', '300.99', 5, 'Negro', 'S', 'Masculino', '.\\ropa de deporte\\RD_DENTRO\\RD_DENTRO3.jpg', 11, ' Capucha con cordón ajustable - Corte ajustado - Parte de arriba con neopreno'),
(43, 'Americana Azul', '43', '83.99', 6, 'Azul Marino', '32', 'Masculino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO2.jpg', 2, ' Solapas de muesca - Cuatro bolsillos delanteros - Doble abertura trasera - Dos botones'),
(44, 'Americana Gris', '44', '95.99', 6, 'Gris', '34', 'Masculino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO4.jpg', 11, ' Solapas de muesca - Abertura con dos botones - Forro con bolsillo interno - Bolsillos funcionales'),
(45, 'Americana de Cuadros', '45', '100.99', 6, 'Gris', '36', 'Masculino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO3.jpg', 1, ' Contiene elástico para más comodidad - Solapa de muesca - Abertura con un único botón - Forro con dos bolsillos en el interior - Bolsillos funcionales - Abertura en el centro de la parte posterior - Corte muy ajustado'),
(46, 'Blazer Verde Pistacho', '46', '60.99', 6, 'Verde ', '26', 'Femenino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO1.jpg', 9, ' Diseño de sastre en T - Solapa de muesca - Cierre de botón - Corte estándar'),
(47, 'Blazer Negro', '47', '50.99', 6, 'Negro', '28', 'Femenino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO6.jpg', 2, ' Diseño totalmente forrado - Solapas en pico - Parte delantera abierta - Estilo corto - Aberturas en los puños - Corte estándar'),
(48, 'Blazer Rosa', '48', '80.99', 6, 'Rosa', '30', 'Femenino', '.\\americanas\\AMERICANAS_DENTRO\\AMERICANAS_DENTRO7.jpg', 2, ' Parte delantera abierta - Diseño liso - Corte estándar - Bolsillos funcionales'),
(49, 'Bambas Nike Cortez', '49', '73.99', 7, 'Blanco', '40', 'Unisex', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO1.jpg', 4, ' Exterior de cuero suave - Cierre de cordones - Nombre de la marca en el lateral - Tobillo y lengüeta acolchados - Suela gruesa - Dibujo moldeado'),
(50, 'Bambas Nike Thea Air Max ', '50', '55.99', 7, 'Negro', '39', 'Femenino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO2.jpg', 4, ' Cierre de cordones - Logo de Nike en los laterales - Espuma moldeada para apoyar la zona media del pie y el talón - Borde con forma - Trabilla para calzar'),
(51, 'Bambas Nike - SB', '51', '85.99', 7, 'Gris', '40', 'Femenino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO6.jpg', 4, ' Diseño liso - Un básico en tu armario - Cierre de cordones - Acolchados para mayor comodidad - Logo característico de Nike - Suela gruesa - Dibujo moldeado'),
(52, 'Bambas Nike - SJ', '52', '90.99', 7, 'Marron', '45', 'Masculino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO5.jpg', 4, ' Exterior de ante - Cierre de cordones - Marca en la lengüeta y en la abertura - Acolchados para mayor comodidad - Logo de Nike en contraste - Suela gruesa de goma - Dibujo texturizado'),
(53, 'Bambas Nike Lunar', '53', '70.99', 7, 'Negro', '43', 'Masculino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO3.jpg', 4, ' Superposiciones resistentes a las abrasiones - Cierre de cordones - Con cables Flywire para un ajuste seguro - Tobillo acolchado - Amotiguación de espuma para mayor estabilidad y comodidad - Logo característico de Nike - Goma adherente en la parte delant'),
(54, 'Bambas Nike Air-Force', '54', '120.99', 7, 'Negro', '45', 'Masculino', '.\\zapatosc\\ZAPATO_DENTRO\\ZAPATOS_DENTRO4.jpg', 4, ' Cierre de cordones - Logo de Nike en los laterales - Espuma moldeada para apoyar la zona media del pie y el talón - Borde con forma - Trabilla para calzar - Unidad Max Air para amortiguar y permitir un movimiento suave');
>>>>>>> Stashed changes

-- --------------------------------------------------------

--
-- Estructura de la taula `promociones`
--

CREATE TABLE `promociones` (
  `idPromocion` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFinal` date NOT NULL,
  `Descripcion` varchar(150) NOT NULL,
  `Descuento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
<<<<<<< HEAD
-- Bolcament de dades per a la taula `promociones`
=======
-- Volcado de datos para la tabla `promociones`
>>>>>>> master
--

INSERT INTO `promociones` (`idPromocion`, `Nombre`, `FechaInicio`, `FechaFinal`, `Descripcion`, `Descuento`) VALUES
(1, 'Navidad', '2018-12-20', '2019-01-07', 'Epoca Navideña 2018', 10);

-- --------------------------------------------------------

--
-- Estructura de la taula `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Webpage` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `Nombre`, `Direccion`, `Correo`, `Telefono`, `Webpage`) VALUES
(1, 'Gucci', 'Via Tornabuoni 73 50123 Florence, Italy.', 'clientservice-europe@it.gucci.com', '663717612', 'https://www.gucci.com/int/en/'),
(2, 'ASOS', '57056 Camden Town London, United Kingdom', 'asos@asos.com', '02073872032', 'http://www.asos.com/'),
(3, 'Levi Strauss', '1155 Battery Street San Francisco, California USA', 'newsmediarequests@levi.com', '415501777', 'http://www.levi.com'),
(4, 'Nike', 'Beaverton, Oregón USA', 'nike@nike.com', '913753366', 'https://www.nike.com/'),
(5, 'Pretty Little Thing', 'Manchester, United Kingdom', 'support@prettylittlething.com', '215131277', 'https://www.prettylittlething.com/'),
(6, 'Warehouse', 'London, United Kingdom', 'support@warehouse.com', '+44 345 548 1000', 'http://www.warehouse-london.com/row/home'),
(7, 'Boohoo', 'Manchester, United Kingdom', 'customercare@mena.boohoo.com', '+9715126272', 'http://www.boohoo.com/'),
(8, 'Weekday', 'Manchester, United Kingdom', 'customerservice@weekday.com', '+442035147777', 'https://www.weekday.com/en_eur/index.html'),
(9, 'River Island', 'London, United Kingdom', 'customer.services@river-island.com', '+44 (0) 344 576 6444', 'https://eu.riverisland.com/'),
(10, 'Liquor N Poker', 'London, United Kingdom', ' info@liquornpoker.co.uk', '01384 262007', 'https://www.liquornpoker.co.uk/'),
(11, 'Armani Exchange', '111 8th Avenue 9th Floor , New York', 'customer.info@armaniexchange.com', '18666675856', 'https://www.armaniexchange.com/'),
(12, 'Brooklyn Denim Co', '338 Wythe Ave Brooklyn, New York', 'info@brooklyndenimco.com', '(718)782-2600', 'https://brooklyndenimco.com/'),
(13, 'Only & Sons', 'Dinamarca', 'customerservice@bestseller.com', '952055190', 'https://www.onlyandsons.com/es/es/home'),
(14, 'D-Struct', 'Manchester, United Kingdom', 'sales@stylewise-ltd.co.uk', '+4599423200', 'https://www.onlyandsons.com/es/es/home'),
(15, 'Kyoto London', 'Japan', 'help@kyotolondon.com', '+4599252157', 'https://www.kyotolondon.com/'),
(16, 'New Look', 'Weymouth, Dorset, United Kingdom', 'help@newlook.com', '0080009260926', 'http://www.newlook.com/row'),
(17, 'Adidas', 'Herzogenaurach,Germany', 'help@adidas.com', '1-800-982-9337', 'https://www.adidas.com/us'),
(18, 'Puma', 'Herzogenaurach,Germany', 'service@puma.com ', '(+34)911390152', 'https://www.puma.com/'),
(19, 'Skinnifit [SF]', 'Livingston, Scotland', 'enquiries@sf-clothing.com', '(+44)911213052', 'http://sf-clothing.com/');

-- --------------------------------------------------------

--
-- Estructura de la taula `tienda`
--

CREATE TABLE `tienda` (
  `idTienda` int(11) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `tienda`
--

INSERT INTO `tienda` (`idTienda`, `Nombre`, `Direccion`, `Telefono`, `idUsuario`) VALUES
(1, 'Persephone', 'www.persephone.com', '933827723', 1);

-- --------------------------------------------------------

--
-- Estructura de la taula `tipos`
--

CREATE TABLE `tipos` (
  `idTipos` int(11) NOT NULL,
  `NombreTipo` varchar(45) NOT NULL,
  `Web` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `tipos`
--

INSERT INTO `tipos` (`idTipos`, `NombreTipo`, `Web`) VALUES
(1, 'Camisetas', NULL),
(2, 'Vestidos', NULL),
(3, 'Vaqueros', NULL),
(4, 'Chaquetas y Abrigos', NULL),
(5, 'Ropa de Deporte', NULL),
(6, 'Americanas', NULL),
(7, 'Zapatos', NULL),
(8, 'Armani Masculino', NULL),
<<<<<<< Updated upstream
<<<<<<< HEAD
(9, 'Armani Femenino', NULL),
(10, 'Bolsos', NULL);
=======
(9, 'Armani Femenino', NULL);
>>>>>>> master
=======
(9, 'Armani Femenino', NULL),
(10, 'Bolsos', NULL);
>>>>>>> Stashed changes

-- --------------------------------------------------------

--
-- Estructura de la taula `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `Login` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Rol` tinyint(4) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Bolcament de dades per a la taula `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `Login`, `Password`, `Correo`, `Telefono`, `Nombre`, `Apellidos`, `Direccion`, `Rol`, `Status`) VALUES
(1, 'oriolvalnun', 'monlau2018', 'oriolvalnun@gmail.com', '663717617', 'Oriol', 'Valls', 'Castella 30', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de la taula `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `ValorUnidad` decimal(20,2) NOT NULL,
  `idMetodoPago` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
<<<<<<< HEAD
-- Bolcament de dades per a la taula `ventas`
=======
-- Volcado de datos para la tabla `ventas`
>>>>>>> master
--

INSERT INTO `ventas` (`idVenta`, `Fecha`, `Cantidad`, `ValorUnidad`, `idMetodoPago`, `idProducto`, `idUsuario`) VALUES
(1, '2018-05-20', 4, '120.00', 1, 1, 1);

--
<<<<<<< HEAD
-- Índexs per a les taules bolcades
=======
-- Índices para tablas volcadas
>>>>>>> master
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
-- Índexs per a la taula `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`idDetallePedido`),
  ADD UNIQUE KEY `idDetalle Pedido_UNIQUE` (`idDetallePedido`),
  ADD KEY `fk_Detalle Pedido_Productos1_idx` (`idProducto`),
  ADD KEY `fk_Detalle Pedido_Pedido1_idx` (`idPedido`);

--
-- Índexs per a la taula `inventario`
--
ALTER TABLE `inventario`
<<<<<<< Updated upstream
<<<<<<< HEAD
  ADD PRIMARY KEY (`idInventario`,`idTienda`,`idProducto`),
  ADD KEY `fk_Inventario_Tienda_idx` (`idTienda`),
=======
  ADD PRIMARY KEY (`idInventario`,`idTienda`),
  ADD KEY `fk_Inventario_Tienda_idx` (`idTienda`),
  ADD KEY `fk_Inventario_Proveedores1_idx` (`idProveedor`),
>>>>>>> master
=======
  ADD PRIMARY KEY (`idInventario`,`idTienda`,`idProducto`),
  ADD KEY `fk_Inventario_Tienda_idx` (`idTienda`),
>>>>>>> Stashed changes
  ADD KEY `fk_Inventario_Productos1_idx` (`idProducto`),
  ADD KEY `fk_Inventario_Tipos1_idx` (`idTipos`);

--
-- Índexs per a la taula `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`idMetodoPago`),
  ADD UNIQUE KEY `idMetodo Pago_UNIQUE` (`idMetodoPago`);

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
  ADD KEY `fk_Productos_Proveedores1_idx` (`idProveedor`),
  ADD KEY `fk_Productos_Tipos1_idx` (`idTipos`);

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
-- Índexs per a la taula `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`idTipos`);

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
  ADD KEY `fk_Ventas_Metodo Pago1_idx` (`idMetodoPago`),
  ADD KEY `fk_Ventas_Productos1_idx` (`idProducto`),
  ADD KEY `fk_Ventas_Usuarios1_idx` (`idUsuario`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `carrito`
--
ALTER TABLE `carrito`
  MODIFY `idCarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la taula `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `idDetallePedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
<<<<<<< HEAD

--
-- AUTO_INCREMENT per la taula `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idInventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
=======
>>>>>>> master

--
<<<<<<< Updated upstream
-- AUTO_INCREMENT per la taula `metodopago`
=======
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idInventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT de la tabla `metodopago`
>>>>>>> Stashed changes
--
ALTER TABLE `metodopago`
  MODIFY `idMetodoPago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la taula `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la taula `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT per la taula `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT per la taula `tienda`
--
ALTER TABLE `tienda`
  MODIFY `idTienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la taula `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la taula `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Restriccions per a la taula `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD CONSTRAINT `fk_Detalle Pedido_Pedido1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detalle Pedido_Productos1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_Inventario_Productos1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
<<<<<<< Updated upstream
<<<<<<< HEAD
=======
  ADD CONSTRAINT `fk_Inventario_Proveedores1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
>>>>>>> master
=======
>>>>>>> Stashed changes
  ADD CONSTRAINT `fk_Inventario_Tienda` FOREIGN KEY (`idTienda`) REFERENCES `tienda` (`idTienda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Inventario_Tipos1` FOREIGN KEY (`idTipos`) REFERENCES `tipos` (`idTipos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_Pedido_Usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_Productos_Proveedores1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Productos_Tipos1` FOREIGN KEY (`idTipos`) REFERENCES `tipos` (`idTipos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `fk_Tienda_Usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restriccions per a la taula `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_Ventas_Metodo Pago1` FOREIGN KEY (`idMetodoPago`) REFERENCES `metodopago` (`idMetodoPago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ventas_Productos1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Ventas_Usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
