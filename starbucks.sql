-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-09-2022 a las 18:22:32
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `starbucks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_productos`
--

CREATE TABLE `cat_productos` (
  `idTipoProductos` int(4) NOT NULL,
  `nombreTipoProducto` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
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
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `no_empleado` int(3) NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(1) NOT NULL,
  `usuario` varchar(70) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(80) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(80) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`no_empleado`, `nombre`, `nivel`, `usuario`, `correo`, `password`, `telefono`) VALUES
(1, 'Kevin', 3, '18353', 'vd@vbj.c', '55', '4444');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listaniveles`
--

CREATE TABLE `listaniveles` (
  `idLista` int(1) NOT NULL,
  `nivel` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `salario` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `listaniveles`
--

INSERT INTO `listaniveles` (`idLista`, `nivel`, `salario`) VALUES
(1, 'Ayudante3', 8800),
(2, 'Encargado', 12000),
(3, 'Gerente', 16500),
(4, 'Dueño', 30000),
(6, 'Cargo fantasma', 300),
(7, 'Jefe supremo', 30000),
(8, 'Jefe supremo 2', 45000),
(9, 'NivelSecreto', 1500000),
(10, 'fff', 33);

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
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(2) NOT NULL,
  `nombre` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `aPaterno` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `aMaterno` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `nombre`, `aPaterno`, `aMaterno`, `Telefono`, `activo`) VALUES
(1, 'Patricia', 'Perez', 'Trejo', '7714569078', 1),
(2, 'Jose', 'Aguilar', 'Hernandez', '7714378712', 1),
(3, 'Dani prov', 'aaaa', 'wwww', '615151515', 1),
(4, 'Diana Proveedor', 'Lopez', 'Jimenez', '5552142326', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_productos`
--
ALTER TABLE `cat_productos`
  ADD PRIMARY KEY (`idTipoProductos`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`no_empleado`);

--
-- Indices de la tabla `listaniveles`
--
ALTER TABLE `listaniveles`
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
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `no_empleado` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `listaniveles`
--
ALTER TABLE `listaniveles`
  MODIFY `idLista` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `no_producto` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
