-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 21:19:22
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
-- Base de datos: `bd_sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_administrativos`
--

CREATE TABLE `tb_administrativos` (
  `id_admin` int(11) NOT NULL,
  `nombre_admin` varchar(50) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telefono_ad` bigint(20) DEFAULT NULL,
  `dependencia` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_administrativos`
--

INSERT INTO `tb_administrativos` (`id_admin`, `nombre_admin`, `documento`, `telefono_ad`, `dependencia`) VALUES
(1, 'Marta Gonzalez', 100123456, 3101234567, 'Direccion'),
(2, 'Ricardo Perez', 100234567, 3112345678, 'Bienestar'),
(3, 'Claudia Torres', 100345678, 3123456789, 'Secretaria'),
(4, 'Fernando Diaz', 100456789, 3134567890, 'Coordinacion'),
(5, 'Patricia Lopez', 100567890, 3145678901, 'Financiera'),
(6, 'Santiago Rojas', 100678901, 3156789012, 'Talento humano'),
(7, 'Gabriela Castro', 100789012, 3167890123, 'Archivo'),
(8, 'Roberto Morales', 100890123, 3178901234, 'Admisiones'),
(9, 'Liliana Herrera', 100901234, 3189012345, 'Sistemas'),
(10, 'Oscar Ramirez', 101012345, 3190123456, 'Subdireccion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_aprendices`
--

CREATE TABLE `tb_aprendices` (
  `id_aprendices` int(11) NOT NULL,
  `nombre_ap` varchar(55) DEFAULT NULL,
  `documento_ap` varchar(25) DEFAULT NULL,
  `identificacion_ap` int(11) DEFAULT NULL,
  `telefono_ap` bigint(20) DEFAULT NULL,
  `direccion_ap` varchar(10) DEFAULT NULL,
  `correo_ap` varchar(40) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_aprendices`
--

INSERT INTO `tb_aprendices` (`id_aprendices`, `nombre_ap`, `documento_ap`, `identificacion_ap`, `telefono_ap`, `direccion_ap`, `correo_ap`, `id_ficha`) VALUES
(1, 'Juan Perez', 'CC', 1001234567, 3104567890, 'Calle 10', 'juan@gmail.com', NULL),
(2, 'Maria Rodriguez', 'CC', 1002345678, 3115678901, 'Carrera 5', 'maria@gmail.com', NULL),
(3, 'Carlos Gomez', 'TI', 1023456789, 3126789012, 'Calle 20', 'carlos@gmail.com', NULL),
(4, 'Laura Martinez', 'CC', 1034567890, 3137890123, 'Calle 15', 'laura@gmail.com', NULL),
(5, 'Andres Torres', 'CC', 1045678901, 3148901234, 'Carrera 8', 'andres@gmail.com', NULL),
(6, 'Camila Diaz', 'TI', 1056789012, 3159012345, 'Calle 30', 'camila@gmail.com', NULL),
(7, 'Daniel Lopez', 'CC', 1067890123, 3160123456, 'Carrera 12', 'daniel@gmail.com', NULL),
(8, 'Sofia Ramirez', 'CC', 1078901234, 3171234567, 'Calle 40', 'sofia@gmail.com', NULL),
(9, 'David Herrera', 'CC', 1089012345, 3182345678, 'Carrera 15', 'david@gmail.com', NULL),
(10, 'Valeria Castro', 'TI', 1090123456, 3193456789, 'Calle 50', 'valeria@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_competencia`
--

CREATE TABLE `tb_competencia` (
  `id_competencia` int(11) NOT NULL,
  `competencia` varchar(12) DEFAULT NULL,
  `cod_competencia` varchar(12) DEFAULT NULL,
  `descripción` varchar(50) DEFAULT NULL,
  `duración` int(11) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_competencia`
--

INSERT INTO `tb_competencia` (`id_competencia`, `competencia`, `cod_competencia`, `descripción`, `duración`, `id_ficha`) VALUES
(1, 'Programacion', '220501096', 'Desarrollo de software', 240, NULL),
(2, 'Bases datos', '220501097', 'Gestion de bases de datos', 180, NULL),
(3, 'Ingles', '240201501', 'Comunicacion en ingles', 120, NULL),
(4, 'Matematicas', '240201502', 'Razonamiento matematico', 100, NULL),
(5, 'Ofimatica', '220501098', 'Manejo de herramientas digitales', 80, NULL),
(6, 'Diseno', '220501099', 'Creacion de contenido visual', 160, NULL),
(7, 'Contabilidad', '210301001', 'Registro de operaciones', 200, NULL),
(8, 'Redes', '220501100', 'Configuracion de redes', 180, NULL),
(9, 'Marketing', '260101001', 'Estrategias de mercadeo', 150, NULL),
(10, 'Seguridad', '220501101', 'Seguridad informatica', 120, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ficha`
--

CREATE TABLE `tb_ficha` (
  `id_ficha` int(11) NOT NULL,
  `numero_fi` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `id_instructores` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ficha`
--

INSERT INTO `tb_ficha` (`id_ficha`, `numero_fi`, `fecha_inicio`, `fecha_final`, `nombre`, `id_instructores`, `id_admin`) VALUES
(1, 2876543, '2026-01-15', '2026-12-15', 'Analisis de datos', NULL, NULL),
(2, 2876544, '2026-02-01', '2026-11-30', 'Programacion', NULL, NULL),
(3, 2876545, '2026-01-20', '2026-10-20', 'Diseno grafico', NULL, NULL),
(4, 2876546, '2026-03-01', '2026-12-01', 'Gestion empresarial', NULL, NULL),
(5, 2876547, '2026-02-15', '2026-11-15', 'Contabilidad', NULL, NULL),
(6, 2876548, '2026-01-10', '2026-09-10', 'Sistemas', NULL, NULL),
(7, 2876549, '2026-04-01', '2027-03-01', 'Marketing digital', NULL, NULL),
(8, 2876550, '2026-03-15', '2027-02-15', 'Desarrollo web', NULL, NULL),
(9, 2876551, '2026-05-01', '2027-04-01', 'Multimedia', NULL, NULL),
(10, 2876552, '2026-06-01', '2027-05-30', 'Administracion', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_instructores`
--

CREATE TABLE `tb_instructores` (
  `id_instructores` int(11) NOT NULL,
  `nombre_in` varchar(55) DEFAULT NULL,
  `documento_in` varchar(15) DEFAULT NULL,
  `telefono_in` bigint(20) DEFAULT NULL,
  `correo_in` varchar(40) DEFAULT NULL,
  `direccion_in` varchar(28) DEFAULT NULL,
  `competencias_in` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_instructores`
--

INSERT INTO `tb_instructores` (`id_instructores`, `nombre_in`, `documento_in`, `telefono_in`, `correo_in`, `direccion_in`, `competencias_in`) VALUES
(1, 'Pedro Sanchez', 'CC', 3001234567, 'pedro@gmail.com', 'Calle 12', 'Programacion'),
(2, 'Ana Morales', 'CC', 3012345678, 'ana@gmail.com', 'Carrera 10', 'Bases de datos'),
(3, 'Luis Fernandez', 'CC', 3023456789, 'luis@gmail.com', 'Calle 25', 'Matematicas'),
(4, 'Diana Ramirez', 'CC', 3034567890, 'diana@gmail.com', 'Carrera 15', 'Diseno grafico'),
(5, 'Jorge Castillo', 'CC', 3045678901, 'jorge@gmail.com', 'Calle 30', 'Contabilidad'),
(6, 'Paula Gomez', 'CC', 3056789012, 'paula@gmail.com', 'Carrera 20', 'Informatica'),
(7, 'Miguel Torres', 'CC', 3067890123, 'miguel@gmail.com', 'Calle 35', 'Marketing'),
(8, 'Carolina Diaz', 'CC', 3078901234, 'carolina@gmail.com', 'Carrera 25', 'Ingles'),
(9, 'Andres Rojas', 'CC', 3089012345, 'andresr@gmail.com', 'Calle 40', 'Redes'),
(10, 'Natalia Perez', 'CC', 3090123456, 'natalia@gmail.com', 'Carrera 30', 'Multimedia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_administrativos`
--
ALTER TABLE `tb_administrativos`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD PRIMARY KEY (`id_aprendices`),
  ADD KEY `fk_aprendices_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD PRIMARY KEY (`id_competencia`),
  ADD KEY `fk_competencia_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `fk_ficha_instructores` (`id_instructores`),
  ADD KEY `fk_ficha_administrativo` (`id_admin`);

--
-- Indices de la tabla `tb_instructores`
--
ALTER TABLE `tb_instructores`
  ADD PRIMARY KEY (`id_instructores`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD CONSTRAINT `fk_aprendices_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD CONSTRAINT `fk_competencia_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD CONSTRAINT `fk_ficha_administrativo` FOREIGN KEY (`id_admin`) REFERENCES `tb_administrativos` (`id_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ficha_instructores` FOREIGN KEY (`id_instructores`) REFERENCES `tb_instructores` (`id_instructores`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
