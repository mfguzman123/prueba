-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2024 a las 01:36:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `regis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sregistro`
--

CREATE TABLE `sregistro` (
  `Id` int(11) NOT NULL,
  `primer_nombre` varchar(250) NOT NULL,
  `segundo_nombre` varchar(250) NOT NULL,
  `primer_apellido` varchar(250) NOT NULL,
  `segundo_apellido` varchar(11) NOT NULL,
  `identificacion` varchar(100) NOT NULL,
  `telefono` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `fc_contratacion` varchar(250) NOT NULL,
  `usuariocontrasena` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sregistro`
--

INSERT INTO `sregistro` (`Id`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `identificacion`, `telefono`, `email`, `fc_contratacion`, `usuariocontrasena`) VALUES
(1, 'Maria Fernanda', 'mf@gmail.com', '3227416451', '22', '0', '$2y$10$4iLT1MA0ZIqPaEM7LcUt3.hQZjzZmTGyYxoY55IJHXWEagJMBpefS', '', '', ''),
(2, 'gh', 'hyth', 'fff', 'ww', 'ww', 'ww', 'Luiseduardovilla41@gmail.com', '1111-11-11', '$2y$10$bRYu74dO1EZALDUo9.HgOuLmb7ShcoRA0dA3cQ8uyR2lGADaCCiFC');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sregistro`
--
ALTER TABLE `sregistro`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sregistro`
--
ALTER TABLE `sregistro`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
