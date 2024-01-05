-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2024 a las 23:15:39
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
-- Base de datos: `inventario_lalonja`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bar`
--

CREATE TABLE `bar` (
  `id_bar` int(10) NOT NULL,
  `nombre_bar` varchar(50) NOT NULL,
  `inv` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bar`
--

INSERT INTO `bar` (`id_bar`, `nombre_bar`, `inv`) VALUES
(1, 'Bar cotillon', 0),
(2, 'Bar socios', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) NOT NULL,
  `folio` int(20) NOT NULL,
  `fecha_c` varchar(100) DEFAULT NULL,
  `provedor` varchar(20) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `cost_unitario` float DEFAULT NULL,
  `total_iva_desc` float DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `folio`, `fecha_c`, `provedor`, `cantidad`, `producto`, `cost_unitario`, `total_iva_desc`, `total`) VALUES
(1, 28034067, '19/09/2023', 'Vinos america', 5, 'Centenario plata700 ml', 256.89, 282.58, 1412.9),
(2, 28034067, '20/09/2023', 'Vinos america', 2, 'Centenario reposado 700 ml', 258.54, 284.39, 1981.68),
(3, 28034067, '21/09/2023', 'Vinos america', 2, 'Tradicional reposado 950 ml', 361.81, 397.99, 2777.67),
(4, 28034067, '22/09/2023', 'Vinos america', 1, '7 Leguas blanco 700 ml', 534.48, 587.93, 3365.59),
(5, 28034067, '23/09/2023', 'Vinos america', 1, '1800 A?ejo 700 ml', 626.74, 689.41, 4055.01),
(6, 28034067, '24/09/2023', 'Vinos america', 1, 'Tradicional plata 950 ml', 331.28, 364.41, 4419.42),
(7, 28034067, '25/09/2023', 'Vinos america', 2, 'Don julio 70 700 ml', 891.38, 980.52, 6380.45),
(8, 28034067, '26/09/2023', 'Vinos america', 1, 'Herradura antiguo rep. 700 ml', 320.53, 352.58, 6733.03),
(9, 28034067, '27/09/2023', 'Vinos america', 1, 'Herradura blanco 700 ml', 536.88, 590.57, 7323.6),
(10, 28034067, '28/09/2023', 'Vinos america', 1, 'Herradura reposado 700 ml', 566.54, 623.19, 7946.8),
(11, 28034067, '29/09/2023', 'Vinos america', 2, 'Maestro dobel 700 ml', 651.38, 716.52, 9379.83),
(12, 28034067, '30/09/2023', 'Vinos america', 2, '400 Conejos joven 750 ml ', 436.56, 480.22, 10340.3),
(13, 28034067, '01/10/2023', 'Vinos america', 1, 'Jurame salmiana 750 ml', 547.43, 602.17, 10942.4),
(14, 28034067, '02/10/2023', 'Vinos america', 1, 'Laguana seca 750 ml', 365.53, 402.08, 11344.5),
(15, 28034067, '03/10/2023', 'Vinos america', 1, 'Montelobos espadin 750 ml', 608.87, 669.76, 12014.3),
(16, 28034067, '04/10/2023', 'Vinos america', 1, 'Union uno 700 ml', 461.22, 507.34, 12521.6),
(17, 28034067, '05/10/2023', 'Vinos america', 1, 'Buchanans 12 750 ml', 799.12, 879.03, 13400.7),
(18, 28034067, '06/10/2023', 'Vinos america', 2, 'Chivas regal 12 750 ml', 764.06, 840.47, 15081.6),
(19, 28034067, '07/10/2023', 'Vinos america', 2, 'J & B 750 ml', 259.48, 285.43, 15652.4),
(20, 28034067, '08/10/2023', 'Vinos america', 2, 'Red label 700 ml', 320.69, 352.76, 16358),
(21, 28034067, '09/10/2023', 'Vinos america', 2, 'Black label 700 ml', 891.38, 980.52, 18319),
(22, 28034067, '10/10/2023', 'Vinos america', 1, 'Glenfiddich 12 750 ml', 1083.7, 1192.07, 19511.1),
(23, 28034067, '11/10/2023', 'Vinos america', 1, 'Jack daniels 700 ml', 396.89, 436.58, 19947.6),
(24, 28034067, '12/10/2023', 'Vinos america', 1, 'Bourbon Wild turkey Rye 750 ml', 409.47, 450.42, 20398.1),
(25, 28034067, '13/10/2023', 'Vinos america', 2, 'Jim beam 700 ml', 243.8, 268.18, 20934.4),
(26, 28034067, '14/10/2023', 'Vinos america', 1, 'Jameson 750 ml', 379.84, 417.82, 21352.2),
(27, 28034067, '15/10/2023', 'Vinos america', 12, 'Bacardi Blanco 980 ml', 231.29, 254.42, 24405.3),
(28, 28034067, '16/10/2023', 'Vinos america', 4, 'Bacardi blanco 1750 ml', 395, 434.5, 26143.3),
(29, 28034067, '17/10/2023', 'Vinos america', 1, 'Captain morgan 700 ml', 150.87, 165.96, 26309.2),
(30, 28034067, '18/10/2023', 'Vinos america', 2, 'Flor de ca?a 4 extra dry 750 ml', 189.4, 208.34, 26725.9),
(31, 28034067, '19/10/2023', 'Vinos america', 1, 'Havana especial 700 ml', 214.56, 236.02, 26961.9),
(32, 28034067, '20/10/2023', 'Vinos america', 1, 'Havana 7 700 ml', 372.24, 409.46, 27371.4),
(33, 28034067, '21/10/2023', 'Vinos america', 1, 'Matusalem clasico 750 ml', 255.95, 281.55, 27652.9),
(34, 28034067, '22/10/2023', 'Vinos america', 2, 'Matusalem platino 750 ml', 215.17, 236.69, 28126.3),
(35, 28034067, '23/10/2023', 'Vinos america', 3, 'Potosi a?ejo 750 ml', 237.07, 260.78, 28908.6),
(36, 28034067, '24/10/2023', 'Vinos america', 12, 'Potosi blanco 750 ml', 193.96, 213.36, 31468.9),
(37, 28034067, '25/10/2023', 'Vinos america', 2, 'Potosi extra a?ejo 750 ml', 480.18, 528.2, 32525.3),
(38, 28034067, '26/10/2023', 'Vinos america', 1, 'Zacapa 23 750 ml', 1008.61, 1109.47, 33634.8),
(39, 28034067, '27/10/2023', 'Vinos america', 1, 'Beefeater 750 ml', 450.86, 495.95, 34130.7),
(40, 28034067, '28/10/2023', 'Vinos america', 1, 'Bombay 750 ml', 426.55, 469.21, 34599.9),
(41, 28034067, '29/10/2023', 'Vinos america', 3, 'Gibsons 700 ml', 196.98, 216.68, 35250),
(42, 28034067, '30/10/2023', 'Vinos america', 1, 'Hendricks 700 ml', 841.82, 926, 36176),
(43, 28034067, '31/10/2023', 'Vinos america', 2, 'Tanqueray 750 ml', 444.82, 489.3, 37154.6),
(44, 28034067, '01/11/2023', 'Vinos america', 1, 'Absolut azul 750 ml', 280.96, 309.06, 37463.6),
(45, 28034067, '02/11/2023', 'Vinos america', 2, 'Eristoff 700 ml', 99.05, 108.96, 37681.5),
(46, 28034067, '03/11/2023', 'Vinos america', 2, 'Smirnoff 750 ml', 181.03, 199.13, 38079.8),
(47, 28034067, '04/11/2023', 'Vinos america', 2, 'Smirnoff tamarindo 750 ml', 201.73, 221.9, 38523.6),
(48, 28034067, '05/11/2023', 'Vinos america', 3, 'Stolichnaya 750 ml', 272.24, 299.46, 39422),
(49, 28034067, '06/11/2023', 'Vinos america', 2, 'Torres 10 700 ml', 324.75, 357.23, 40136.4),
(50, 28034067, '07/11/2023', 'Vinos america', 1, 'Torres 15 700 ml', 506.37, 557.01, 40693.5),
(51, 28034067, '08/11/2023', 'Vinos america', 2, 'Terry centenario 700 ml', 273.79, 301.17, 41295.8),
(52, 28034067, '09/11/2023', 'Vinos america', 1, 'Hennessy V.S. 700 ml', 843.98, 928.38, 42224.2),
(53, 28034067, '10/11/2023', 'Vinos america', 3, 'Aperol 700 ml', 306.03, 336.63, 43234.1),
(54, 28034067, '11/11/2023', 'Vinos america', 1, 'Campari 750 ml', 370.69, 407.76, 43641.8),
(55, 28034067, '12/11/2023', 'Vinos america', 1, 'Carpano rosso 1000 ml', 458.6, 504.46, 44146.3),
(56, 28034067, '13/11/2023', 'Vinos america', 1, 'Carpano dry 1000 ml', 458.6, 504.46, 44650.8),
(57, 28034067, '14/11/2023', 'Vinos america', 1, 'Fernet branca 750 ml', 493.61, 542.97, 45193.7),
(58, 28034067, '15/11/2023', 'Vinos america', 1, 'Baileys 700 ml', 331.89, 365.08, 45558.8),
(59, 28034067, '16/11/2023', 'Vinos america', 1, 'Chinchon dulce 1000 ml', 275.61, 303.17, 45862),
(60, 28034067, '17/11/2023', 'Vinos america', 1, 'Chinchon seco 1000 ml', 275.61, 303.17, 46165.1),
(61, 28034067, '18/11/2023', 'Vinos america', 1, 'Flamingo Cacao oscuro 1000 ml', 135.52, 149.07, 46314.2),
(62, 28034067, '19/11/2023', 'Vinos america', 1, 'Flamingo fresa 1000 ml', 135.52, 149.07, 46463.3),
(63, 28034067, '20/11/2023', 'Vinos america', 1, 'Giffard Violette 700 ml', 393.1, 432.41, 46895.7),
(64, 28034067, '21/11/2023', 'Vinos america', 2, 'Licor 43 700 ml', 444.57, 489.03, 47873.8),
(65, 28034067, '22/11/2023', 'Vinos america', 1, 'Sambuca nero 700 ml', 302.14, 332.35, 48206.1),
(66, 28034067, '23/11/2023', 'Vinos america', 1, 'Licor strega 750 ml', 625.01, 687.51, 48893.6),
(67, 28034067, '24/11/2023', 'Vinos america', 1, 'Jerez Tio pepe 750 ml', 352.6, 387.86, 49281.5),
(68, 28034067, '25/11/2023', 'Vinos america', 3, 'Cinzano pro spritz 750 ml', 171.55, 188.71, 49847.6),
(69, 28034067, '26/11/2023', 'Vinos america', 1, 'Ground hill rose 750 ml', 189.64, 208.6, 50056.2),
(70, 28034067, '27/11/2023', 'Vinos america', 1, 'Vino tinto California 4000 ml', 325.56, 358.12, 50414.3),
(71, 28034067, '28/11/2023', 'Vinos america', 3, 'Jarabe natural 1 lt', 46.21, 50.83, 50566.8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(50) NOT NULL,
  `provedor` varchar(50) DEFAULT NULL,
  `comentarios` varchar(200) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `presentacion` int(10) DEFAULT NULL,
  `cost_unitario` float DEFAULT NULL,
  `cost_iva` float DEFAULT NULL,
  `cpc` float DEFAULT NULL,
  `id_bar` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `provedor`, `comentarios`, `producto`, `presentacion`, `cost_unitario`, `cost_iva`, `cpc`, `id_bar`) VALUES
(1, 'Vinos America', 'Tequila', '7 Leguas Blanco', 700, 507.76, 589, 88.57, 1),
(2, 'Vinos America', 'Tequila', '1800 añejo', 700, 595.39, 690.65, 98.66, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedores`
--

CREATE TABLE `provedores` (
  `id_provedor` int(10) NOT NULL,
  `provedor` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` int(13) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(10) NOT NULL,
  `fecha` date DEFAULT NULL,
  `I_I` float DEFAULT NULL,
  `C_O` float DEFAULT NULL,
  `V_E` float DEFAULT NULL,
  `I_F` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bar`
--
ALTER TABLE `bar`
  ADD PRIMARY KEY (`id_bar`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`);

--
-- Indices de la tabla `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`id_provedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bar`
--
ALTER TABLE `bar`
  MODIFY `id_bar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `provedores`
--
ALTER TABLE `provedores`
  MODIFY `id_provedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
