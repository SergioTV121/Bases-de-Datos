-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-05-2018 a las 00:43:44
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `facturacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `CodCliente` varchar(100) NOT NULL,
  `Nit` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `DIreccion` varchar(100) NOT NULL,
  PRIMARY KEY (`CodCliente`),
  UNIQUE KEY `CodCliente` (`CodCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle factura`
--

DROP TABLE IF EXISTS `detalle factura`;
CREATE TABLE IF NOT EXISTS `detalle factura` (
  `id` int(11) NOT NULL,
  `NoFactura` int(11) NOT NULL,
  `CodProducto` varchar(100) NOT NULL,
  `CantidadPedida` int(11) NOT NULL,
  `PrecioTotal` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NoFactura` (`NoFactura`),
  UNIQUE KEY `CodProducto` (`CodProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE IF NOT EXISTS `factura` (
  `NoFactura` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `CodCliente` varchar(100) NOT NULL,
  `TotalFactura` int(11) NOT NULL,
  PRIMARY KEY (`NoFactura`),
  UNIQUE KEY `CodCilente` (`CodCliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `CodigoProdcuto` varchar(100) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Proveedor` varchar(100) NOT NULL,
  `PrecioCosto` int(11) NOT NULL,
  `PrecioVenta` int(11) NOT NULL,
  PRIMARY KEY (`CodigoProdcuto`),
  UNIQUE KEY `Proveedor` (`Proveedor`),
  UNIQUE KEY `CodigoProdcuto` (`CodigoProdcuto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `CodigoProveedor` varchar(100) NOT NULL,
  `Proveedor` varchar(100) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`CodigoProveedor`),
  UNIQUE KEY `CodigoProveedor` (`CodigoProveedor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
