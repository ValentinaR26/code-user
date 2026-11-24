-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 15:34:06
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transportes_masivos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_estaciones`
--

CREATE TABLE `tb_estaciones` (
  `id_estacion` int(11) NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `tipo_estacion` varchar(45) DEFAULT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `id_transmilenio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_estaciones`
--

INSERT INTO `tb_estaciones` (`id_estacion`, `ubicacion`, `tipo_estacion`, `nombre`, `id_transmilenio`) VALUES
(1, 'Autopista Norte', 'Intermedia', 'Calle 100', 1),
(2, 'Avenida Caracas', 'Sencilla', 'Calle 72', 2),
(3, 'Carrera 10', 'Intermedia', 'Museo Nacional', 3),
(4, 'Avenida Suba', 'Sencilla', 'Suba Calle 100', 4),
(5, 'Calle 26', 'Intermedia', 'Salitre El Greco', 5),
(6, 'Avenida Caracas Sur', 'Sencilla', 'Restrepo', 6),
(7, 'Avenida Jimenez', 'Intermedia', 'Jimenez', 7),
(8, 'Calle 26', 'Sencilla', 'Modelia', 8),
(9, 'Autopista Sur', 'Intermedia', 'Venecia', 9),
(10, 'Avenida Caracas', 'Sencilla', 'Tercer Milenio', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_recorridos`
--

CREATE TABLE `tb_recorridos` (
  `id_recorrido` int(11) NOT NULL,
  `hora_llegada` time DEFAULT NULL,
  `id_ruta` int(11) DEFAULT NULL,
  `id_estacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_recorridos`
--

INSERT INTO `tb_recorridos` (`id_recorrido`, `hora_llegada`, `id_ruta`, `id_estacion`) VALUES
(1, '05:30:00', 1, 1),
(2, '06:00:00', 2, 2),
(3, '06:30:00', 3, 3),
(4, '07:00:00', 4, 4),
(5, '07:30:00', 5, 5),
(6, '08:00:00', 6, 6),
(7, '08:30:00', 7, 7),
(8, '09:00:00', 8, 8),
(9, '09:30:00', 9, 9),
(10, '10:00:00', 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rutas`
--

CREATE TABLE `tb_rutas` (
  `id_ruta` int(11) NOT NULL,
  `origen` varchar(55) DEFAULT NULL,
  `destino` varchar(55) DEFAULT NULL,
  `horario` varchar(30) DEFAULT NULL,
  `id_transmilenio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_rutas`
--

INSERT INTO `tb_rutas` (`id_ruta`, `origen`, `destino`, `horario`, `id_transmilenio`) VALUES
(1, 'Portal Norte', 'Portal Sur', '05:00-23:00', 1),
(2, 'Portal 80', 'Las Aguas', '05:00-22:30', 2),
(3, 'Portal Suba', 'Portal Sur', '05:00-23:00', 3),
(4, 'Portal Americas', 'Calle 76', '05:00-22:00', 4),
(5, 'Portal Eldorado', 'Museo Nacional', '05:00-23:00', 5),
(6, 'Portal Usme', 'Las Aguas', '05:00-22:30', 6),
(7, 'Portal Tunal', 'Calle 72', '05:00-23:00', 7),
(8, 'Portal Norte', 'Universidades', '05:00-22:00', 8),
(9, 'Portal Sur', 'Portal Norte', '05:00-23:00', 9),
(10, 'Portal Americas', 'Portal Norte', '05:00-22:30', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_transmilenio`
--

CREATE TABLE `tb_transmilenio` (
  `id_transmilenio` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `direccion_sede` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_transmilenio`
--

INSERT INTO `tb_transmilenio` (`id_transmilenio`, `nombre`, `ciudad`, `direccion_sede`) VALUES
(1, 'TransMilenio', 'Bogota', 'Calle 26 # 59-41'),
(2, 'TransMilenio', 'Bogota', 'Avenida Caracas'),
(3, 'TransMilenio', 'Bogota', 'Portal Norte'),
(4, 'TransMilenio', 'Bogota', 'Portal Sur'),
(5, 'TransMilenio', 'Bogota', 'Portal 80'),
(6, 'TransMilenio', 'Bogota', 'Portal Suba'),
(7, 'TransMilenio', 'Bogota', 'Portal Americas'),
(8, 'TransMilenio', 'Bogota', 'Portal Eldorado'),
(9, 'TransMilenio', 'Bogota', 'Portal Usme'),
(10, 'TransMilenio', 'Bogota', 'Portal Tunal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_estaciones`
--
ALTER TABLE `tb_estaciones`
  ADD PRIMARY KEY (`id_estacion`),
  ADD KEY `fk_estaciones_transmilenio` (`id_transmilenio`);

--
-- Indices de la tabla `tb_recorridos`
--
ALTER TABLE `tb_recorridos`
  ADD PRIMARY KEY (`id_recorrido`),
  ADD KEY `fk_recorridos_rutas` (`id_ruta`),
  ADD KEY `fk_recorridos_estaciones` (`id_estacion`);

--
-- Indices de la tabla `tb_rutas`
--
ALTER TABLE `tb_rutas`
  ADD PRIMARY KEY (`id_ruta`),
  ADD KEY `fk_rutas_transmilenio` (`id_transmilenio`);

--
-- Indices de la tabla `tb_transmilenio`
--
ALTER TABLE `tb_transmilenio`
  ADD PRIMARY KEY (`id_transmilenio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_estaciones`
--
ALTER TABLE `tb_estaciones`
  ADD CONSTRAINT `fk_estaciones_transmilenio` FOREIGN KEY (`id_transmilenio`) REFERENCES `tb_transmilenio` (`id_transmilenio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_recorridos`
--
ALTER TABLE `tb_recorridos`
  ADD CONSTRAINT `fk_recorridos_estaciones` FOREIGN KEY (`id_estacion`) REFERENCES `tb_estaciones` (`id_estacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_recorridos_rutas` FOREIGN KEY (`id_ruta`) REFERENCES `tb_rutas` (`id_ruta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_rutas`
--
ALTER TABLE `tb_rutas`
  ADD CONSTRAINT `fk_rutas_transmilenio` FOREIGN KEY (`id_transmilenio`) REFERENCES `tb_transmilenio` (`id_transmilenio`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
