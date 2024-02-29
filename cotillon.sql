-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2024 a las 23:53:01
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

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
-- Estructura de tabla para la tabla `cotillon`
--

CREATE TABLE `cotillon` (
  `id_cotillon` int(20) NOT NULL,
  `costo_tot` float NOT NULL,
  `producto` varchar(100) NOT NULL,
  `mililitros` float NOT NULL,
  `i_i` float NOT NULL,
  `i_f` float NOT NULL,
  `costo_act` float NOT NULL,
  `venta_r` float NOT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `temp_venta_aproximada` decimal(10,2) DEFAULT NULL,
  `temp_diferencia_venta` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cotillon`
--

INSERT INTO `cotillon` (`id_cotillon`, `costo_tot`, `producto`, `mililitros`, `i_i`, `i_f`, `costo_act`, `venta_r`, `fecha_actualizacion`, `temp_venta_aproximada`, `temp_diferencia_venta`) VALUES
(1, 288.99, 'Byass 12', 700, 0.7, 0, 202.293, 0, '2024-01-22', NULL, NULL),
(2, 171.85, 'Azteca de oro', 700, 2, 0, 0, 0, '2024-01-22', NULL, NULL),
(3, 1147.79, 'Cardenal mendoza', 700, 0.35, 0, 401.727, 0, '2024-01-22', NULL, NULL),
(4, 945.25, 'Carlos I', 700, 0.5, 0, 472.625, 0, '2024-01-22', NULL, NULL),
(5, 169.67, 'Don pedro', 1000, 1.7, 0, 118.769, 0, '2024-01-22', NULL, NULL),
(6, 210.41, 'Fundador', 700, 1.4, 0, 294.574, 0, '2024-01-22', NULL, NULL),
(7, 975.74, 'Lepanto 12 a?os', 700, 1.4, 0, 390.296, 0, '2024-01-22', NULL, NULL),
(8, 477.18, 'Magno ', 700, 1, 0, 477.18, 0, '2024-01-22', NULL, NULL),
(9, 520, 'Magno gran reserva ', 700, 0.6, 0, 312, 0, '2024-01-22', NULL, NULL),
(10, 112.95, 'Presidente solera', 700, 0.5, 0, 56.475, 0, '2024-01-22', NULL, NULL),
(11, 383.04, 'Terry centenario', 700, 0.1, 0, 38.304, 0, '2024-01-22', NULL, NULL),
(12, 357.86, 'Torres 10', 700, 1.3, 0, 465.218, 0, '2024-01-22', NULL, NULL),
(13, 451, 'Torres 10 ', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(14, 219.92, 'Torres 5', 700, 0.95, 0, 208.924, 0, '2024-01-22', NULL, NULL),
(16, 1409.8, 'Courvosier vsop', 700, 0.85, 0, 1198.33, 0, '2024-01-22', NULL, NULL),
(17, 974.13, 'Martell vsop', 700, 1, 0, 974.13, 0, '2024-01-22', NULL, NULL),
(18, 1309.05, 'Hennessy vsop', 700, 0.2, 0, 261.81, 0, '2024-01-22', NULL, NULL),
(20, 265, 'Amaretto marcati', 700, 0.25, 0, 66.25, 0, '2024-01-22', NULL, NULL),
(21, 357.2, 'Ancho reyes', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(22, 366.69, 'Angostura Orange ', 118, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(23, 303.71, 'Anis chinchon dulce', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(24, 303.71, 'Anis chinchon seco', 1000, 1, 0, 303.71, 0, '2024-01-22', NULL, NULL),
(25, 152.28, 'Anis mico dulce', 1000, 0.85, 0, 129.438, 0, '2024-01-22', NULL, NULL),
(26, 337.25, 'Aperol', 700, 0.9, 0, 303.525, 0, '2024-01-22', NULL, NULL),
(27, 365.75, 'Baileys', 700, 0.4, 0, 146.3, 0, '2024-01-22', NULL, NULL),
(28, 284.05, 'Blanco madero', 900, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(29, 407.75, 'Campari', 750, 1.05, 0, 428.138, 0, '2024-01-22', NULL, NULL),
(30, 452.33, 'Carpano Punt e mes ', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(31, 1164.6, 'Chartreuse verde ', 700, 0.55, 0, 640.53, 0, '2024-01-22', NULL, NULL),
(32, 245.6, 'Cinzano rosso', 700, 1, 0, 245.6, 0, '2024-01-22', NULL, NULL),
(33, 182.12, 'Controy', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(34, 233, 'Dolci licor de carajillo', 750, 0.05, 0, 11.65, 0, '2024-01-22', NULL, NULL),
(35, 370.4, 'Doubonnet', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(36, 543.97, 'Fernet branca', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(37, 509, 'Fernet cazanove', 750, 0.55, 0, 279.95, 0, '2024-01-22', NULL, NULL),
(38, 206.15, 'Fernet Dolci', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(39, 149.34, 'Flamingo crema de cacao blanca ', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(40, 417.05, 'Frangelico', 700, 1, 0, 417.05, 0, '2024-01-22', NULL, NULL),
(41, 243, 'Isla controy', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(42, 425.79, 'Jagermeister', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(43, 88.44, 'Jerez 3 coronas', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(44, 195.98, 'Kahlua Licor de caf?', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(45, 489.91, 'Licor 43', 700, 1.35, 0, 661.378, 0, '2024-01-22', NULL, NULL),
(46, 101, 'Licor de manzana dolci', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(47, 682.75, 'Licor Marraschino Pallini', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(48, 726.94, 'Licor ST Germain', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(49, 412.48, 'Lillet blanc', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(50, 279.73, 'Martini bianco', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(51, 279.73, 'Martini extra dry', 750, 0.85, 0, 237.77, 0, '2024-01-22', NULL, NULL),
(52, 406.69, 'Oporto Ferreira tawny ', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(53, 199, 'Sisi Licor de hierbas', 1000, 0.2, 0, 39.8, 0, '2024-01-22', NULL, NULL),
(54, 388.55, 'Tio pepe', 750, 0.6, 0, 233.13, 0, '2024-01-22', NULL, NULL),
(55, 0, '', 0, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(56, 468.73, 'Beefeater', 1000, 0.5, 0, 234.365, 0, '2024-01-22', NULL, NULL),
(57, 467.87, 'Beefeater ', 750, 0.95, 0, 444.477, 0, '2024-01-22', NULL, NULL),
(58, 470.06, 'Bombay saphire', 750, 1.5, 0, 705.09, 0, '2024-01-22', NULL, NULL),
(59, 166.01, 'Coldstream', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(60, 216.68, 'Gibsons ', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(61, 324.15, 'Tanqueray flor de sevilla', 750, 0.6, 0, 194.49, 0, '2024-01-22', NULL, NULL),
(62, 490.2, 'Tanqueray london dry', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(63, 0, 'Tanqueray london extra dry', 750, 1, 0, 0, 0, '2024-01-22', NULL, NULL),
(64, 324.15, 'Tanqueray rangpur', 750, 0.9, 0, 291.735, 0, '2024-01-22', NULL, NULL),
(65, 0, '', 0, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(66, 481.08, '400 Conejos', 750, 0.15, 0, 72.162, 0, '2024-01-22', NULL, NULL),
(67, 565, 'Alacran cristal', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(68, 652, 'Burrito fiestero', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(69, 0, 'Cuco abocado con pigmento negro', 750, 0.05, 0, 0, 0, '2024-01-22', NULL, NULL),
(70, 290, 'Cuco salmiana', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(71, 281, 'Fandango blanco', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(72, 0, 'Garfias salmiana', 750, 0.45, 0, 0, 0, '2024-01-22', NULL, NULL),
(73, 244.99, 'Jaral', 930, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(74, 603.25, 'Jurame salmiana', 750, 1.6, 0, 965.2, 0, '2024-01-22', NULL, NULL),
(75, 0, 'Laguna seca numero 20', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(76, 402.8, 'Laguna seca salmiana', 750, 0.5, 0, 201.4, 0, '2024-01-22', NULL, NULL),
(77, 670.98, 'Montelobos espadin', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(78, 179, 'Numero 20', 750, 0.05, 0, 8.95, 0, '2024-01-22', NULL, NULL),
(79, 944.95, 'Ojo de tigre', 750, 1.1, 0, 1039.44, 0, '2024-01-22', NULL, NULL),
(80, 450, 'Pe?asco  Salmiana', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(81, 831.25, 'Real de magueyes a?ejo', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(82, 592.8, 'Real de magueyes blanco', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(83, 145, 'Santa muerte', 750, 0.1, 0, 14.5, 0, '2024-01-22', NULL, NULL),
(84, 0, '', 0, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(85, 455.05, 'Abuelo 7 a?os', 750, 1.5, 0, 682.575, 0, '2024-01-22', NULL, NULL),
(86, 209.95, 'Appleton blanco', 950, 0.55, 0, 115.473, 0, '2024-01-22', NULL, NULL),
(87, 187.91, 'Appleton dorado', 950, 0.7, 0, 131.537, 0, '2024-01-22', NULL, NULL),
(88, 291.17, 'Appleton estate', 750, 0.95, 0, 276.612, 0, '2024-01-22', NULL, NULL),
(89, 605.24, 'Bacardi 8 a?os', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(90, 219.07, 'Bacardi a?ejo', 750, 0.4, 0, 87.628, 0, '2024-01-22', NULL, NULL),
(91, 174.3, 'Bacardi blanco', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(92, 254.43, 'Bacardi blanco ', 980, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(93, 434.5, 'Bacardi blanco ', 1750, 0.55, 0, 238.975, 0, '2024-01-22', NULL, NULL),
(94, 260.58, 'Bacardi solera', 1000, 0.2, 0, 52.116, 0, '2024-01-22', NULL, NULL),
(95, 522.69, 'Botran 12 a?os', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(96, 166.25, 'Captain morgan', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(97, 208.32, 'Flor de ca?a 4 extra dry', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(98, 0, 'Flor de ca?a 7 gran reserva', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(99, 267.14, 'Flor de ca?a 5 a?os', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(100, 180.59, 'Havana club 3 a?os', 700, 0.1, 0, 18.059, 0, '2024-01-22', NULL, NULL),
(101, 410.22, 'Havana club 7 a?os', 700, 1.45, 0, 594.819, 0, '2024-01-22', NULL, NULL),
(102, 236.45, 'Havana club especial', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(103, 282.05, 'Matusalem clasico', 750, 1.85, 0, 521.792, 0, '2024-01-22', NULL, NULL),
(104, 409, 'Matusalem gran reserva 15 a?os', 750, 0.9, 0, 368.1, 0, '2024-01-22', NULL, NULL),
(105, 204.41, 'Matusalem platino ', 750, 1.45, 0, 296.395, 0, '2024-01-22', NULL, NULL),
(106, 260.77, 'potosi a?ejo', 750, 0.4, 0, 104.308, 0, '2024-01-22', NULL, NULL),
(107, 156.46, 'Potosi blanco ', 750, 0.55, 0, 86.053, 0, '2024-01-22', NULL, NULL),
(108, 529.15, 'Potosi extra a?ejo', 750, 0.3, 0, 158.745, 0, '2024-01-22', NULL, NULL),
(109, 0, 'Zacapa ?mbar 12 a?os', 750, 0.6, 0, 0, 0, '2024-01-22', NULL, NULL),
(110, 1111.5, 'Zacapa 23 a?os', 750, 0.05, 0, 55.575, 0, '2024-01-22', NULL, NULL),
(111, 0, '', 0, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(112, 809.71, '1800 cristalino', 700, 0.05, 0, 40.4855, 0, '2024-01-22', NULL, NULL),
(113, 688.92, '1800 a?ejo ', 700, 1, 0, 688.92, 0, '2024-01-22', NULL, NULL),
(114, 520.6, '1800 Reposado', 700, 0.05, 0, 26.03, 0, '2024-01-22', NULL, NULL),
(115, 705.83, '7 Leguas blanco', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(116, 589, '7 Leguas blanco', 700, 0.45, 0, 265.05, 0, '2024-01-22', NULL, NULL),
(117, 733.87, '7 Leguas reposado', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(118, 343.52, 'Cazadores reposado', 1000, 0.3, 0, 103.056, 0, '2024-01-22', NULL, NULL),
(119, 907.68, 'Cenote reposado', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(120, 560.69, 'Centenario a?ejo', 695, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(121, 283.1, 'Centenario plata ', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(122, 346.84, 'Centenario reposado', 950, 0.55, 0, 190.762, 0, '2024-01-22', NULL, NULL),
(123, 284.9, 'Centenario reposado ', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(124, 179, 'Codorniz blanco', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(125, 255.27, 'Cuervo especial reposado', 990, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(126, 188.25, 'Cuervo especial reposado', 695, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(127, 1015.55, 'Don julio 70', 700, 0.05, 0, 50.7775, 0, '2024-01-22', NULL, NULL),
(128, 1016.5, 'Don julio a?ejo', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(129, 658.35, 'Don julio blanco', 700, 0.35, 0, 230.423, 0, '2024-01-22', NULL, NULL),
(130, 735.3, 'Don julio reposado', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(131, 353.21, 'Herradura antiguo reposado', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(132, 452.1, 'Herradura antiguo reposado ', 950, 0.75, 0, 339.075, 0, '2024-01-22', NULL, NULL),
(133, 774.82, 'Herradura blanco', 950, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(134, 591.66, 'Herradura blanco ', 700, 1.3, 0, 769.158, 0, '2024-01-22', NULL, NULL),
(135, 0, 'Herradura reposado', 950, 1, 0, 0, 0, '2024-01-22', NULL, NULL),
(136, 624.34, 'Herradura reposado', 700, 0.3, 0, 187.302, 0, '2024-01-22', NULL, NULL),
(137, 441.65, 'Hornitos reposado', 1000, 0.4, 0, 176.66, 0, '2024-01-22', NULL, NULL),
(138, 0, 'IVG ', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(139, 312.55, 'Jimador reposado', 950, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(140, 0, 'Don julio rosado', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(141, 717.82, 'Maestro dobel diamante ', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(142, 0, '', 0, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(143, 299, 'Orendain blanco', 1000, 1.6, 0, 478.4, 0, '2024-01-22', NULL, NULL),
(144, 117.85, 'Rio seco Destilado de agave', 1000, 0.85, 0, 100.173, 0, '2024-01-22', NULL, NULL),
(145, 510.92, 'Tapatio reposado', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(146, 149, 'Tizoc', 375, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(147, 365.08, 'Tradicional plata', 950, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(148, 329.17, 'Tradicional reposado', 695, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(149, 398, 'Tradicional reposado ', 950, 1.2, 0, 477.6, 0, '2024-01-22', NULL, NULL),
(150, 297.85, 'Tradicional plata ', 695, 1.15, 0, 342.527, 0, '2024-01-22', NULL, NULL),
(151, 0, 'Jose cuervo especial ', 695, 0.95, 0, 0, 0, '2024-01-22', NULL, NULL),
(152, 0, '', 0, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(153, 297.73, 'Absolut azul', 750, 0.5, 0, 148.865, 0, '2024-01-22', NULL, NULL),
(154, 301.15, 'Absolut citron', 750, 1, 0, 301.15, 0, '2024-01-22', NULL, NULL),
(155, 691.98, 'Gey goose', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(156, 199.5, 'Smirnoff', 750, 1.7, 0, 339.15, 0, '2024-01-22', NULL, NULL),
(157, 244.15, 'Smirnoff', 1000, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(158, 222.3, 'Smirnoff tamarindo', 750, 0.65, 0, 144.495, 0, '2024-01-22', NULL, NULL),
(159, 300.02, 'Stolichnaya', 750, 1.5, 0, 450.03, 0, '2024-01-22', NULL, NULL),
(160, 257.45, 'Tanqueray Sterling', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(161, 165.68, 'Wiborowa', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(162, 187.94, 'Wiborowa', 1000, 0.9, 0, 169.146, 0, '2024-01-22', NULL, NULL),
(163, 0, '', 0, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(164, 218.5, 'Black & white', 700, 0.95, 0, 207.575, 0, '2024-01-22', NULL, NULL),
(165, 880.65, 'Buchanans 12 a?os', 750, 1.3, 0, 1144.84, 0, '2024-01-22', NULL, NULL),
(166, 2167.9, 'Buchanans 18 a?os', 750, 0.45, 0, 975.555, 0, '2024-01-22', NULL, NULL),
(167, 866.4, 'Buchanans twoo souls', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(168, 572.47, 'Bushmils Black rush', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(169, 809.59, 'Chivas 12 a?os', 750, 1.55, 0, 1254.86, 0, '2024-01-22', NULL, NULL),
(170, 1124.94, 'Glenfiddich 12 a?os', 750, 0.25, 0, 281.235, 0, '2024-01-22', NULL, NULL),
(171, 191.2, 'Golden Glen', 1000, 0.4, 0, 76.48, 0, '2024-01-22', NULL, NULL),
(172, 285.95, 'J & B', 750, 0.6, 0, 171.57, 0, '2024-01-22', NULL, NULL),
(173, 418.57, 'Jameson', 750, 0.45, 0, 188.357, 0, '2024-01-22', NULL, NULL),
(174, 982.3, 'Jhonnie walker black label', 750, 1.45, 0, 1424.33, 0, '2024-01-22', NULL, NULL),
(175, 323.1, 'Jim beam ', 700, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(176, 0, 'Johnnie Wallet red label', 1000, 0.8, 0, 0, 0, '2024-01-22', NULL, NULL),
(177, 353.4, 'Johnnie walker Red label', 700, 0.2, 0, 70.68, 0, '2024-01-22', NULL, NULL),
(178, 721.05, 'Old parr 12 a?os', 750, 0.1, 0, 72.105, 0, '2024-01-22', NULL, NULL),
(179, 0, 'black label ', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(180, 264.38, 'Beronia Crianza', 750, 0.2, 0, 52.876, 0, '2024-01-22', NULL, NULL),
(181, 274.19, 'Balgame dios', 1500, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(182, 414, 'Capetta Asti espumoso', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(183, 222.39, 'Casillero del diablo chardonnay', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(184, 137.75, 'Finca las moras sauvignon blanc', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(185, 189, 'Gallo Family white zinfandel', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(186, 152.42, 'Gran hacienda Chardonnay', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(187, 406.77, 'Kirkland malbec', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(188, 169.24, 'La cacciatora brut', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(189, 236.32, 'La capra Merlot', 750, 1, 0, 236.32, 0, '2024-01-22', NULL, NULL),
(190, 216, 'LA Cetto cabernet sauvignon', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(191, 287, 'LA Cetto Nebbiolo', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(192, 346.75, 'Marques de caceres crianza', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(193, 293.55, 'M?rques del Riscal rioja', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(194, 480, 'NOI', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(195, 310, 'Opera prima brut', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(196, 111.75, 'Peromato tempranillo ', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(197, 333, 'Pozo de luna syrah', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(198, 213, 'Prospero', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(199, 660.25, 'Protos crianza', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(200, 356.25, 'Protos roble', 750, 2.05, 0, 730.312, 0, '2024-01-22', NULL, NULL),
(201, 356.25, 'protos roble ', 750, 1, 0, 0, 0, '2024-01-22', NULL, NULL),
(202, 120.55, 'Reservado cavernet sauvignon', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(203, 440, 'Terraza de los andes', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(204, 405, 'Terrazas malbec', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(205, 0, 'Valgame dios Crianza', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(206, 139, 'XA Tinto', 750, 0, 0, 0, 0, '2024-01-22', NULL, NULL),
(207, 0, 'Viuda de S?nchez ', 1000, 0.35, 0, 0, 0, '2024-01-22', NULL, NULL),
(208, 0, 'V?lgame Dios reserva', 1500, 1, 0, 0, 0, '2024-01-22', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cotillon`
--
ALTER TABLE `cotillon`
  ADD PRIMARY KEY (`id_cotillon`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cotillon`
--
ALTER TABLE `cotillon`
  MODIFY `id_cotillon` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
