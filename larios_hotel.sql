-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2018 a las 20:32:20
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `larios_hotel`
--
CREATE DATABASE IF NOT EXISTS `larios_hotel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `larios_hotel`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_habitaciones`
--

CREATE TABLE `cat_habitaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_habitaciones`
--

INSERT INTO `cat_habitaciones` (`id`, `nombre`) VALUES
(3, 'HT_First');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `doc` varchar(50) DEFAULT NULL,
  `tel` varchar(12) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  `hospedado` tinyint(1) DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `doc`, `tel`, `estado`, `hospedado`, `fecha`) VALUES
(1, 'Luis Iraheta', '054406973', '76993169', 1, 1, '2018-08-04'),
(2, 'Juanito Amaya', '00056993', '26981369', 1, 1, '2018-08-05'),
(3, 'Juan Jose G.', '000222', '26268536', 1, 1, '2018-08-05'),
(4, 'Juanito Entra Hoy', '506566688', '202332', 1, 1, '2018-08-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `tipo` int(11) NOT NULL,
  `n_personas` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `ocupada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id`, `codigo`, `descripcion`, `tipo`, `n_personas`, `estado`, `fecha`, `ocupada`) VALUES
(1, 'HAB_001', 'Habitacion Standar', 3, 5, 1, '2018-08-03', 0),
(2, 'HAB_002', 'Habitacion Prueba', 3, 10, 0, '2018-08-03', 0),
(3, 'HAB_003', 'Habitacion Stantar Delux', 3, 8, 1, '2018-08-05', 1),
(4, 'HAB_0003', 'Prueba Habi', 3, 30, 1, '2018-08-05', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` char(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `nombre`, `password`, `fecha`, `activo`) VALUES
('admin', 'Luis Iraheta', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2018-08-03', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_hab`
--

CREATE TABLE `ventas_hab` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_hab` varchar(20) NOT NULL,
  `p_dia` decimal(20,0) NOT NULL,
  `dias` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas_hab`
--

INSERT INTO `ventas_hab` (`id`, `id_cliente`, `id_hab`, `p_dia`, `dias`, `total`, `fecha`) VALUES
(1, 1, 'HAB_001', '20', 3, '60', '2018-08-05'),
(2, 1, 'HAB_001', '20', 3, '60', '2018-08-05'),
(3, 2, 'HAB_001', '20', 3, '60', '2018-08-05'),
(4, 3, 'HAB_001', '40', 5, '200', '2018-08-05'),
(5, 4, 'HAB_0003', '200', 1, '200', '2018-08-05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_habitaciones`
--
ALTER TABLE `cat_habitaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doc` (`doc`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `tipo` (`tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `ventas_hab`
--
ALTER TABLE `ventas_hab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente` (`id_cliente`),
  ADD KEY `fk_hab` (`id_hab`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_habitaciones`
--
ALTER TABLE `cat_habitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas_hab`
--
ALTER TABLE `ventas_hab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD CONSTRAINT `fk_tipo` FOREIGN KEY (`tipo`) REFERENCES `cat_habitaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas_hab`
--
ALTER TABLE `ventas_hab`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `fk_hab` FOREIGN KEY (`id_hab`) REFERENCES `habitaciones` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
