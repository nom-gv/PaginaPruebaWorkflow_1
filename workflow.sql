-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-06-2021 a las 12:58:10
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `workflow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `nroTramite` int(11) NOT NULL,
  `usuario` int(10) NOT NULL,
  `ci` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `c_habilitacion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `c_nacimiento` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `t_bachiller` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`nroTramite`, `usuario`, `ci`, `c_habilitacion`, `c_nacimiento`, `t_bachiller`) VALUES
(1, 8358406, '../Upload/Portada.png', '../Upload/Portada.png', '../Upload/Portada.png', '../Upload/Portada.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentoaceptado`
--

CREATE TABLE `documentoaceptado` (
  `nroTramite` int(11) NOT NULL,
  `usuario` int(10) NOT NULL,
  `ci` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `c_habilitacion` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `c_nacimiento` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `t_bachiller` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentoaceptado`
--

INSERT INTO `documentoaceptado` (`nroTramite`, `usuario`, `ci`, `c_habilitacion`, `c_nacimiento`, `t_bachiller`) VALUES
(1, 8358406, '../Upload/Portada.png', '../Upload/Portada.png', '../Upload/Portada.png', '../Upload/Portada.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujo`
--

CREATE TABLE `flujo` (
  `flujo` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proceso` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo_proceso` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cod_rol` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proceso_siguiente` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `formulario` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `flujo`
--

INSERT INTO `flujo` (`flujo`, `proceso`, `tipo_proceso`, `cod_rol`, `proceso_siguiente`, `formulario`) VALUES
('F1', 'P1', 'I', 'U', 'P2', 'Requisitos'),
('F1', 'P2', 'P', 'U', 'P3', 'RecepcionarDocumentos'),
('F1', 'P3', 'S', 'U', 'P4', 'DejarDocumentos'),
('F1', 'P4', 'C', 'K', NULL, 'Condicionante'),
('F1', 'P5', 'P', 'K', 'P6', 'Informe'),
('F1', 'P6', 'S', 'K', 'P7', 'IngresarDocumentos'),
('F1', 'P7', 'P', 'U', 'P8', 'NotificarInscripcion'),
('F1', 'P8', 'P', 'U', 'P9', 'EleccionHorario'),
('F1', 'P9', 'S', 'U', 'P10', 'ConfirmarHorario'),
('F1', 'P10', 'P', 'K', 'FIN', 'HorariosAlumnos'),
('F1', 'P11', 'P', 'K', 'P12', 'InformeNegativo'),
('F2', 'P1', 'P', 'K', 'FIN', 'EnviarRequisitos'),
('F1', 'P12', 'P', 'U', 'P2', 'NotificarNegativa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe`
--

CREATE TABLE `informe` (
  `nroTramite` int(11) NOT NULL,
  `observacion` varchar(500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `informe`
--

INSERT INTO `informe` (`nroTramite`, `observacion`) VALUES
(1, 'Muy borroso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iniciales`
--

CREATE TABLE `iniciales` (
  `tipo` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `valor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscrito`
--

CREATE TABLE `inscrito` (
  `sigla` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `usuario` int(10) NOT NULL,
  `paralelo` varchar(1) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscrito`
--

INSERT INTO `inscrito` (`sigla`, `usuario`, `paralelo`) VALUES
('INF-111', 123, 'A'),
('INF-111', 8358406, 'A'),
('INF-112', 8358406, 'A'),
('INF-113', 8358406, 'B'),
('LAB-111', 8358406, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `sigla` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `nombremateria` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`sigla`, `nombremateria`) VALUES
('INF-111', 'Introducción a la Informática'),
('INF-112', 'Laboratorio de Informática'),
('INF-113', 'Laboratorio de Informática'),
('LAB-111', 'Laboratorio de Informática');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paralelo`
--

CREATE TABLE `paralelo` (
  `sigla` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `paralelo` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `docente` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Horario` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paralelo`
--

INSERT INTO `paralelo` (`sigla`, `paralelo`, `docente`, `Horario`) VALUES
('INF-111', 'A', 'Morales Rios', 'Martes - Jueves de 08:00 a 10:00 - SS-A4'),
('INF-111', 'B', 'Llanque Quispe', 'Lunes - Miércoles de 16:00 a 18:00 - SS-A1'),
('LAB-111', 'A', 'Morales Rios', 'Martes de 10:00 a 12:00 - LASIN1, LASIN2'),
('LAB-111', 'B', 'Morales Rios', 'Jueves de 10:00 a 12:00 - LASIN1, LASIN2'),
('LAB-111', 'C', 'Mullisaca Choque', 'Martes de 12:00 a 14:00 - P3-LAB2'),
('INF-112', 'A', 'Ramiro Flores', 'Martes - Jueves de 08:00 a 10:00 - P1-A2'),
('INF-113', 'A', 'Pablo Pozo', 'Martes - Jueves de 16:00 a 18:00 - LASIN1,LASIN2'),
('INF-113', 'B', 'Marisol Tellez', 'Martes - Jueves de 12:00 a 14:00 - LASIN2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesocondicional`
--

CREATE TABLE `procesocondicional` (
  `flujo` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `Proceso` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `procesoaceptado` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `procesonegado` varchar(3) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `procesocondicional`
--

INSERT INTO `procesocondicional` (`flujo`, `Proceso`, `procesoaceptado`, `procesonegado`) VALUES
('F1', 'P4', 'P5', 'P11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `nroTramite` int(11) NOT NULL,
  `codFlujo` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `codProceso` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `usuario` int(11) NOT NULL,
  `fechaini` datetime DEFAULT NULL,
  `fechafin` datetime DEFAULT NULL,
  `visto` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`nroTramite`, `codFlujo`, `codProceso`, `usuario`, `fechaini`, `fechafin`, `visto`) VALUES
(100, 'F1', 'P2', 8358406, '2018-04-02 00:00:00', '2021-05-31 20:16:26', 0),
(210, 'F1', 'P1', 10, '2019-04-01 00:00:00', NULL, 0),
(2, 'F1', 'P1', 8358406, '2021-05-31 00:00:00', '2021-05-31 00:00:00', 0),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:04:49', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:05:32', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:07:27', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P3', 8358406, '2021-05-31 20:07:51', '2021-05-31 20:16:21', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:08:51', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P3', 8358406, '2021-05-31 20:09:11', '2021-05-31 20:16:21', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:10:08', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P3', 8358406, '2021-05-31 20:11:03', '2021-05-31 20:16:21', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:11:17', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:11:18', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P3', 8358406, '2021-05-31 20:12:57', '2021-05-31 20:16:21', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:13:02', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P3', 8358406, '2021-05-31 20:13:12', '2021-05-31 20:16:21', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:13:32', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:14:17', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:14:50', '2021-05-31 20:16:27', NULL),
(100, 'F1', 'P3', 8358406, '2021-05-31 20:16:20', '2021-05-31 20:16:21', NULL),
(100, 'F1', 'P1', 8358406, '2021-05-31 20:16:26', '2021-05-31 20:16:27', NULL),
(1, 'F1', 'P1', 8358406, '2021-05-31 00:00:00', '2021-06-01 08:13:05', 0),
(1, 'F1', 'P1', 8358406, '2021-05-31 00:00:00', '2021-06-01 08:13:05', 0),
(1, 'F1', 'P2', 8358406, '2021-06-01 08:11:23', '2021-06-01 08:11:49', NULL),
(1, 'F1', 'P1', 8358406, '2021-06-01 08:11:49', '2021-06-01 08:15:19', NULL),
(1, 'F1', 'P2', 8358406, '2021-06-01 08:15:19', '2021-06-01 08:15:28', NULL),
(1, 'F1', 'P1', 8358406, '2021-06-01 08:15:28', '2021-06-01 08:15:46', NULL),
(1, 'F1', 'P2', 8358406, '2021-06-01 08:15:46', '2021-06-01 08:15:56', NULL),
(1, 'F1', 'P3', 8358406, '2021-06-01 08:15:56', '2021-06-01 08:15:58', NULL),
(1, 'F1', 'P4', 123, '2021-06-01 08:15:58', '2021-06-01 08:16:58', NULL),
(1, 'F1', 'P3', 8358406, '2021-06-01 08:16:58', '2021-06-01 08:23:06', NULL),
(1, 'F1', 'P3', 8358406, '2021-06-01 08:21:50', '2021-06-01 08:23:26', NULL),
(1, 'F1', 'P4', 123, '2021-06-01 08:23:06', '2021-06-01 12:24:11', NULL),
(1, 'F1', 'P2', 8358406, '2021-06-01 08:23:26', '2021-06-01 08:23:31', NULL),
(1, 'F1', 'P1', 8358406, '2021-06-01 08:23:31', '2021-06-01 08:24:15', NULL),
(1, 'F1', 'P2', 8358406, '2021-06-01 08:24:15', '2021-06-01 08:24:19', NULL),
(1, 'F1', 'P1', 8358406, '2021-06-01 08:24:19', '2021-06-01 08:55:38', NULL),
(1, 'F1', 'P2', 8358406, '2021-06-01 08:55:38', '2021-06-01 08:55:48', NULL),
(1, 'F1', 'P3', 8358406, '2021-06-01 08:55:48', '2021-06-01 09:03:27', NULL),
(1, 'F1', 'P4', 123, '2021-06-01 09:03:27', '2021-06-01 19:50:42', NULL),
(1, 'F1', 'P5', 123, '2021-06-01 12:24:11', '2021-06-01 12:24:16', NULL),
(1, 'F1', 'P4', 123, '2021-06-01 12:24:16', '2021-06-02 04:26:22', NULL),
(1, 'F1', 'P5', 123, '2021-06-01 19:50:42', '2021-06-01 19:50:59', NULL),
(1, 'F1', 'P4', 123, '2021-06-01 19:50:59', '2021-06-02 04:26:46', NULL),
(1, 'F1', 'P5', 123, '2021-06-02 04:26:22', '2021-06-02 04:26:49', NULL),
(1, 'F1', 'P5', 123, '2021-06-02 04:26:46', '2021-06-02 04:27:34', NULL),
(1, 'F1', 'P4', 123, '2021-06-02 04:26:49', '2021-06-02 04:27:23', NULL),
(1, 'F1', 'P5', 123, '2021-06-02 04:27:23', '2021-06-02 04:30:48', NULL),
(1, 'F1', 'P4', 123, '2021-06-02 04:27:34', '2021-06-02 04:30:20', NULL),
(1, 'F1', 'P5', 123, '2021-06-02 04:30:20', '2021-06-02 04:31:16', NULL),
(1, 'F1', 'P4', 123, '2021-06-02 04:30:48', '2021-06-02 04:30:52', NULL),
(1, 'F1', 'P5', 123, '2021-06-02 04:30:52', '2021-06-02 04:57:12', NULL),
(1, 'F1', 'P4', 123, '2021-06-02 04:31:16', '2021-06-02 04:31:27', NULL),
(1, 'F1', 'P5', 123, '2021-06-02 04:31:27', '2021-06-02 05:14:31', NULL),
(1, 'F1', 'P4', 123, '2021-06-02 04:57:12', '2021-06-02 04:57:16', NULL),
(1, 'F1', 'P5', 123, '2021-06-02 04:57:16', '2021-06-02 05:32:39', NULL),
(1, 'F1', 'P4', 123, '2021-06-02 05:14:31', '2021-06-02 05:14:40', NULL),
(1, 'F1', 'P11', 123, '2021-06-02 05:14:40', '2021-06-02 05:14:41', NULL),
(1, 'F1', 'P4', 123, '2021-06-02 05:14:41', '2021-06-02 05:30:53', NULL),
(1, 'F1', 'P5', 123, '2021-06-02 05:30:53', '2021-06-02 05:50:27', NULL),
(1, 'F1', 'P6', 123, '2021-06-02 05:32:39', '2021-06-02 05:39:08', NULL),
(1, 'F1', 'P7', 8358406, '2021-06-02 05:39:08', '2021-06-02 06:50:20', NULL),
(1, 'F1', 'P4', 123, '2021-06-02 05:50:27', '2021-06-02 05:50:29', NULL),
(1, 'F1', 'P11', 123, '2021-06-02 05:50:29', '2021-06-02 05:50:46', NULL),
(1, 'F1', 'P12', 8358406, '2021-06-02 05:50:46', '2021-06-02 05:53:10', NULL),
(1, 'F1', 'P2', 8358406, '2021-06-02 05:53:10', '2021-06-02 05:53:19', NULL),
(1, 'F1', 'P1', 8358406, '2021-06-02 05:53:19', NULL, NULL),
(1, 'F1', 'P8', 8358406, '2021-06-02 06:50:20', '2021-06-02 08:07:49', NULL),
(1, 'F1', 'P7', 8358406, '2021-06-02 08:07:49', '2021-06-02 08:07:58', NULL),
(1, 'F1', 'P8', 8358406, '2021-06-02 08:07:58', '2021-06-02 08:09:38', NULL),
(1, 'F1', 'P7', 8358406, '2021-06-02 08:09:38', '2021-06-02 08:09:39', NULL),
(1, 'F1', 'P8', 8358406, '2021-06-02 08:09:39', '2021-06-02 08:10:30', NULL),
(1, 'F1', 'P7', 8358406, '2021-06-02 08:10:30', '2021-06-02 08:10:31', NULL),
(1, 'F1', 'P8', 8358406, '2021-06-02 08:10:31', '2021-06-02 08:20:24', NULL),
(1, 'F1', 'P9', 8358406, '2021-06-02 08:20:24', '2021-06-02 08:20:31', NULL),
(1, 'F1', 'P8', 8358406, '2021-06-02 08:20:31', '2021-06-02 08:26:21', NULL),
(1, 'F1', 'P7', 8358406, '2021-06-02 08:26:21', '2021-06-02 08:26:34', NULL),
(1, 'F1', 'P8', 8358406, '2021-06-02 08:26:34', '2021-06-02 08:29:04', NULL),
(1, 'F1', 'P9', 8358406, '2021-06-02 08:29:04', '2021-06-02 08:37:26', NULL),
(1, 'F1', 'P8', 8358406, '2021-06-02 08:37:26', '2021-06-02 08:38:19', NULL),
(1, 'F1', 'P9', 8358406, '2021-06-02 08:38:19', '2021-06-02 08:38:40', NULL),
(1, 'F1', 'P8', 8358406, '2021-06-02 08:38:40', '2021-06-02 08:38:45', NULL),
(1, 'F1', 'P9', 8358406, '2021-06-02 08:38:45', '2021-06-02 08:39:15', NULL),
(1, 'F1', 'P8', 8358406, '2021-06-02 08:39:15', '2021-06-02 08:39:19', NULL),
(1, 'F1', 'P9', 8358406, '2021-06-02 08:39:19', '2021-06-02 08:49:45', NULL),
(1, 'F1', 'P10', 123, '2021-06-02 08:49:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` int(10) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `rol` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_inc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `nombre`, `fecha_nac`, `rol`, `password`, `fecha_inc`) VALUES
(123, 'Rodrigo', '1989-08-17', 'K', '123', NULL),
(8358406, 'Noemi', '2000-10-04', 'U', '123', '2021-05-31 08:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`nroTramite`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `documentoaceptado`
--
ALTER TABLE `documentoaceptado`
  ADD PRIMARY KEY (`nroTramite`);

--
-- Indices de la tabla `informe`
--
ALTER TABLE `informe`
  ADD PRIMARY KEY (`nroTramite`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`sigla`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `nroTramite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
