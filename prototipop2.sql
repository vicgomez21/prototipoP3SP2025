-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2025 a las 17:57:26
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
-- Base de datos: `prototipop2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cleintes`
--

CREATE TABLE `cleintes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(10) NOT NULL,
  `apellido_cliente` varchar(10) NOT NULL,
  `edad_cliente` varchar(10) NOT NULL,
  `correo_cliente` varchar(25) NOT NULL,
  `direccion_cliente` varchar(25) NOT NULL,
  `telefono_cliente` varchar(25) NOT NULL,
  `dpi_cliente` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cleintes`
--

INSERT INTO `cleintes` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `edad_cliente`, `correo_cliente`, `direccion_cliente`, `telefono_cliente`, `dpi_cliente`) VALUES
(6, 'aaa', 'aaa', 'aa', 'aaa', 'aaa', 'aaa', 'aaa'),
(7, 'AA', 'AAA', 'AA', 'AA', 'AAA', 'AA', 'AAA'),
(9, 'thun t', 'sahur', 'ccc', 'ccccc', 'c', 'cc', 'ccc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dvd`
--

CREATE TABLE `dvd` (
  `id_video` int(10) NOT NULL,
  `nombre_video` varchar(10) NOT NULL,
  `clasificacion_video` varchar(10) NOT NULL,
  `valor_video` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dvd`
--

INSERT INTO `dvd` (`id_video`, `nombre_video`, `clasificacion_video`, `valor_video`) VALUES
(5, 'aaa', 'aaa', 10),
(6, 'AAA', 'AAAA', 10),
(7, 'mario', 'accion', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `ID_ENTRENADOR` int(11) NOT NULL,
  `NOMBRE1` varchar(45) DEFAULT NULL,
  `NOMBRE2` varchar(45) DEFAULT NULL,
  `APELLIDO1` varchar(45) DEFAULT NULL,
  `APELLIDO2` varchar(45) DEFAULT NULL,
  `FECHA_NACIMIENTO` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`ID_ENTRENADOR`, `NOMBRE1`, `NOMBRE2`, `APELLIDO1`, `APELLIDO2`, `FECHA_NACIMIENTO`) VALUES
(1, 'aaaaa', 'ccc', 'bbb', 'ddd', '1234'),
(2, 'Victor', 'Omar', 'Gomez', 'Carrascosa', '30/12/2002'),
(3, 'juan', 'gonzales', 'Perez', 'Carrascosa', '30/12/2005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenadore`
--

CREATE TABLE `entrenadore` (
  `id_entrenador` int(11) NOT NULL,
  `nombre_entrenador` varchar(25) NOT NULL,
  `apellido_entrenador` varchar(25) NOT NULL,
  `edad_entrenador` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `puntos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `puntos`) VALUES
(1, 'a', 28),
(2, 'aa', 7),
(3, 'aaa', 0),
(4, 'aaaa', 1),
(5, 'aaaaa', 18),
(6, 'aaaaaa', 57),
(7, 'burno', 19),
(8, 'max', 21),
(9, 'a', 28),
(10, 'b', 1),
(11, 'c', 13),
(12, 'd', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos2`
--

CREATE TABLE `equipos2` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `partidos_jugados` int(55) NOT NULL DEFAULT 0,
  `partidos_ganados` int(11) NOT NULL DEFAULT 0,
  `partidos_empatados` int(11) NOT NULL DEFAULT 0,
  `partidos_perdidos` int(11) DEFAULT 0,
  `goles_a_favor` int(11) NOT NULL DEFAULT 0,
  `goles_en_contra` int(11) NOT NULL DEFAULT 0,
  `puntos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facutades`
--

CREATE TABLE `facutades` (
  `nombre` varchar(100) DEFAULT NULL,
  `parcial1` varchar(10) DEFAULT NULL,
  `parcial2` varchar(10) DEFAULT NULL,
  `parcial3` varchar(10) DEFAULT NULL,
  `zona` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `promedio` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facutades`
--

INSERT INTO `facutades` (`nombre`, `parcial1`, `parcial2`, `parcial3`, `zona`, `total`, `promedio`) VALUES
('A', '0', '17', '23', '10', '50', '12'),
('c', '15', '6', '14', '19', '54', '13'),
('d', '12', '21', '13', '15', '61', '15'),
('e', '8', '14', '32', '9', '63', '15'),
('f', '17', '21', '24', '19', '81', '20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registrosatrasados`
--

CREATE TABLE `tbl_registrosatrasados` (
  `Id_cliente` int(11) NOT NULL,
  `id_video` int(10) NOT NULL,
  `FechaAlquiler` varchar(10) NOT NULL,
  `FechaCaducidad` varchar(10) NOT NULL,
  `Total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_registrosatrasados`
--

INSERT INTO `tbl_registrosatrasados` (`Id_cliente`, `id_video`, `FechaAlquiler`, `FechaCaducidad`, `Total`) VALUES
(6, 5, '11', '11', '11'),
(7, 6, '10-04-2025', '15-04-2025', '50'),
(9, 7, '10-04-2025', '15-04-2025', '50.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `username`, `password`) VALUES
(84, 'NUEVO', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(85, 'NUEVO2', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(87, 'ESDUARDO', 'b2b2f104d32c638903e151a9b20d6e27b41d8c0c84cf8458738f83ca2f1dd744'),
(2026, 'admin', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cleintes`
--
ALTER TABLE `cleintes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`id_video`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`ID_ENTRENADOR`);

--
-- Indices de la tabla `entrenadore`
--
ALTER TABLE `entrenadore`
  ADD PRIMARY KEY (`id_entrenador`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos2`
--
ALTER TABLE `equipos2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_registrosatrasados`
--
ALTER TABLE `tbl_registrosatrasados`
  ADD PRIMARY KEY (`id_video`,`Id_cliente`),
  ADD KEY `Id_cliente` (`Id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cleintes`
--
ALTER TABLE `cleintes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `dvd`
--
ALTER TABLE `dvd`
  MODIFY `id_video` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  MODIFY `ID_ENTRENADOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `entrenadore`
--
ALTER TABLE `entrenadore`
  MODIFY `id_entrenador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `equipos2`
--
ALTER TABLE `equipos2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_registrosatrasados`
--
ALTER TABLE `tbl_registrosatrasados`
  ADD CONSTRAINT `tbl_registrosatrasados_ibfk_1` FOREIGN KEY (`Id_cliente`) REFERENCES `cleintes` (`id_cliente`),
  ADD CONSTRAINT `tbl_registrosatrasados_ibfk_2` FOREIGN KEY (`id_video`) REFERENCES `dvd` (`id_video`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
