-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2026 a las 23:27:05
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
-- Base de datos: `productos_python`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_cat` int(11) NOT NULL,
  `nombre_cat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_cat`, `nombre_cat`) VALUES
(9, 'Accesorios femeninos'),
(10, 'Accesorios masculinos'),
(3, 'Audio'),
(1, 'Computo'),
(5, 'Lavado'),
(6, 'Muebles'),
(4, 'Refrigeradoras'),
(8, 'Ropa femenina'),
(7, 'Ropa masculina'),
(2, 'TVs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria`, `nombre`, `marca`, `precio`, `stock`) VALUES
(1, 1, 'Laptop Acer Aspire Lite AMD Ryzen 7 5825U 16Gb RAM 1TB SSD 15.6\" Fhd', 'ACER', 2200.00, 42),
(2, 1, 'Impresora multifuncional L3250', 'EPSON', 780.00, 26),
(3, 2, 'Televisor Jvc 58\" Qled Pro 4k Google Tv Smart Tv', 'JVC', 1600.00, 48),
(4, 2, 'Televisor Samsung 65\" Crystal Uhd U8000F Smart Tv (2025)', 'SAMSUNG', 2400.00, 34),
(5, 3, 'Audífonos Inalámbricos Samsung Galaxy Buds 4 R540', 'SAMSUNG', 740.00, 61),
(6, 3, 'Audífonos Bluetooth SONY con Noise Cancelling WH-1000XM6', 'SONY', 1599.00, 57),
(7, 4, 'Refrigeradora GS66BPM 658L Total no frost Side By Side Negro Mate', 'LG', 3100.00, 41),
(8, 4, 'Refrigeradora Side By Side 428L Negra RI-769N', 'INDURAMA', 2600.00, 34),
(9, 5, 'Lavadora LG WT19BVTB 19Kg', 'LG', 1699.00, 41),
(10, 5, 'Lavadora AI Wash Ecobubble 19KG WA80F19S8BPE', 'SAMSUNG', 2500.00, 47),
(11, 6, 'Sofá Grand Santana 3 Cuerpos', 'BASEMENT HOME', 2499.00, 62),
(12, 6, 'Silla Ergonómica De Oficina Soporte Lumbar Ajustable Amia Negro', 'VIDITA', 380.00, 45),
(13, 7, 'Casaca Polar Cuello Alto Regular fit Hombre', 'NEWPORT', 60.00, 50),
(14, 7, 'Chaleco Regular fit Hombre', 'La Martina', 196.00, 23),
(15, 8, 'Casaca Bomber Efecto Suede Mujer', 'DENIMLAB', 120.00, 34),
(16, 8, 'Casaca Larga Mujer', 'DOO ASUTRALIA', 130.50, 30),
(17, 9, 'Cartera Crossbody Mujer', 'ELLE', 99.00, 24),
(18, 9, 'Reloj Benetton Analogo Mujer', 'BENETTON', 79.90, 21),
(19, 10, 'Reloj Maserati R8873640001 Cronógrafo Azul 44 Mm', 'Maserati', 1060.00, 47),
(20, 10, 'Mochila Lebron 2.0 Grande', 'CREPIER', 260.00, 41);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_cat`),
  ADD UNIQUE KEY `nombre_cat` (`nombre_cat`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id_cat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
