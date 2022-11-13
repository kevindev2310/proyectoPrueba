-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-07-2022 a las 18:25:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Starbucks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_productos`
--

CREATE TABLE `cat_productos` (
  `idTipoProductos` int(4) NOT NULL,
  `nombreTipoProducto` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `idProveedor` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cat_productos`
--

INSERT INTO `cat_productos` (`idTipoProductos`, `nombreTipoProducto`, `idProveedor`) VALUES
(1, 'Carne', 1),
(2, 'Lacteo', 2),
(3, 'Fruta', 3),
(4, 'Enlatados', 4),
(5, 'Fruta', 2),
(6, 'Dulces', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE `Empleado` (
  `no_empleado` int(3) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(1) NOT NULL,
  `usuario` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaNiveles`
--

CREATE TABLE `listaNiveles` (
  `idLista` int(1) NOT NULL,
  `nivel` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `salario` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `listaNiveles`
--

INSERT INTO `listaNiveles` (`idLista`, `nivel`, `salario`) VALUES
(1, 'Ayudante', 8000),
(2, 'Encargado', 12000),
(3, 'Gerente', 16500),
(4, 'Dueño', 30000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `no_producto` int(4) NOT NULL,
  `id_tipo` int(4) NOT NULL,
  `fecha_caducidad` date NOT NULL,
  `alergeno` tinyint(1) DEFAULT NULL,
  `no_calorias` float(8,2) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(2) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aPaterno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aMaterno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `nombre`, `aPaterno`, `aMaterno`, `Telefono`, `activo`) VALUES
(1, 'Patricia', 'Perez', 'Trejo', '7714569078', 1),
(2, 'Jose', 'Aguilar', 'Hernandez', '7714378712', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_productos`
--
ALTER TABLE `cat_productos`
  ADD PRIMARY KEY (`idTipoProductos`);

--
-- Indices de la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD PRIMARY KEY (`no_empleado`);

--
-- Indices de la tabla `listaNiveles`
--
ALTER TABLE `listaNiveles`
  ADD PRIMARY KEY (`idLista`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`no_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_productos`
--
ALTER TABLE `cat_productos`
  MODIFY `idTipoProductos` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `listaNiveles`
--
ALTER TABLE `listaNiveles`
  MODIFY `idLista` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `no_producto` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
