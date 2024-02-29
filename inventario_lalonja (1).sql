-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2024 a las 20:35:29
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
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id_almacen` int(20) NOT NULL,
  `costo_tot` float DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `mililitros` float DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `costo_act` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`id_almacen`, `costo_tot`, `producto`, `mililitros`, `cantidad`, `costo_act`) VALUES
(1, 288.99, 'Byass 12', 700, 0, 0),
(2, 171.85, 'Azteca de oro', 700, -2, -343.7),
(3, 1147.79, 'Cardenal mendoza', 700, 0, 0),
(4, 945.25, 'Carlos I', 700, 0, 0),
(5, 169.67, 'Don pedro', 1000, 0, 0),
(6, 210.41, 'Fundador', 700, 0, 0),
(7, 975.74, 'Lepanto 12 a?os', 700, 0, 0),
(8, 477.18, 'Magno ', 700, 0, 0),
(9, 520, 'Magno gran reserva ', 700, 0, 0),
(10, 112.95, 'Presidente solera', 700, 0, 0),
(11, 383.04, 'Terry centenario', 700, 0, 0),
(12, 357.86, 'Torres 10', 700, 1, 357.86),
(13, 451, 'Torres 10 ', 1000, 0, 0),
(14, 219.92, 'Torres 5', 700, 0, 0),
(15, 1409.8, 'Courvosier vsop', 700, 0, 0),
(16, 974.13, 'Martell vsop', 700, 0, 0),
(17, 1309.05, 'Hennessy vsop', 700, 1, 1309.05),
(18, 265, 'Amaretto marcati', 700, 0, 0),
(19, 357.2, 'Ancho reyes', 750, 0, 0),
(20, 366.69, 'Angostura Orange ', 118, 0, 0),
(21, 303.71, 'Anis chinchon dulce', 1000, 0, 0),
(22, 303.71, 'Anis chinchon seco', 1000, 1, 303.71),
(23, 152.28, 'Anis mico dulce', 1000, 0, 0),
(24, 337.25, 'Aperol', 700, 0, 0),
(25, 365.75, 'Baileys', 700, 0, 0),
(26, 284.05, 'Blanco madero', 900, 1.95, 553.898),
(27, 407.75, 'Campari', 750, 1, 407.75),
(28, 452.33, 'Carpano Punt e mes ', 750, 0, 0),
(29, 1164.6, 'Chartreuse verde ', 700, 0, 0),
(30, 245.6, 'Cinzano rosso', 700, 0, 0),
(31, 182.12, 'Controy', 1000, 1, 182.12),
(32, 233, 'Dolci licor de carajillo', 750, 0, 0),
(33, 370.4, 'Doubonnet', 750, 0.15, 55.56),
(34, 543.97, 'Fernet branca', 750, 1, 543.97),
(35, 509, 'Fernet cazanove', 750, 1, 509),
(36, 206.15, 'Fernet Dolci', 750, 1, 206.15),
(37, 149.34, 'Flamingo crema de cacao blanca ', 1000, 0, 0),
(38, 417.05, 'Frangelico', 700, 0, 0),
(39, 243, 'Isla controy', 1000, 0, 0),
(40, 425.79, 'Jagermeister', 700, 0.4, 170.316),
(41, 88.44, 'Jerez 3 coronas', 1000, 0, 0),
(42, 195.98, 'Kahlua Licor de caf?', 1000, 0, 0),
(43, 489.91, 'Licor 43', 700, 0, 0),
(44, 101, 'Licor de manzana dolci', 1000, 0, 0),
(45, 682.75, 'Licor Marraschino Pallini', 700, 0, 0),
(46, 726.94, 'Licor ST Germain', 750, 0, 0),
(47, 412.48, 'Lillet blanc', 750, 0, 0),
(48, 279.73, 'Martini bianco', 750, 0, 0),
(49, 279.73, 'Martini extra dry', 750, 0, 0),
(50, 406.69, 'Oporto Ferreira tawny ', 750, 0, 0),
(51, 199, 'Sisi Licor de hierbas', 1000, 1, 199),
(52, 388.55, 'Tio pepe', 750, 0, 0),
(53, 468.73, 'Beefeater', 1000, 0, 0),
(54, 467.87, 'Beefeater ', 750, 0, 0),
(55, 470.06, 'Bombay saphire', 750, 0, 0),
(56, 166.01, 'Coldstream', 700, 1, 166.01),
(57, 216.68, 'Gibsons ', 700, 0, 0),
(58, 324.15, 'Tanqueray flor de sevilla', 750, 0, 0),
(59, 490.2, 'Tanqueray london dry', 750, 0, 0),
(60, 0, 'Tanqueray london extra dry', 750, 0, 0),
(61, 324.15, 'Tanqueray rangpur', 750, 0, 0),
(62, 0, '', 0, 0, 0),
(63, 481.08, '400 Conejos', 750, 0, 0),
(64, 565, 'Alacran cristal', 750, 0.5, 282.5),
(65, 652, 'Burrito fiestero', 750, 1, 652),
(66, 0, 'Cuco abocado con pigmento negro', 750, 5.8, 0),
(67, 290, 'Cuco salmiana', 750, 0, 0),
(68, 281, 'Fandango blanco', 750, 0.4, 112.4),
(69, 0, 'Garfias salmiana', 750, 0, 0),
(70, 244.99, 'Jaral', 930, 0.8, 195.992),
(71, 603.25, 'Jurame salmiana', 750, 0, 0),
(72, 0, 'Laguna seca numero 20', 1000, 0, 0),
(73, 402.8, 'Laguna seca salmiana', 750, 0, 0),
(74, 670.98, 'Montelobos espadin', 750, 0, 0),
(75, 179, 'Numero 20', 750, 0, 0),
(76, 944.95, 'Ojo de tigre', 750, 0, 0),
(77, 450, 'Pe?asco  Salmiana', 750, 0, 0),
(78, 831.25, 'Real de magueyes a?ejo', 750, 1, 831.25),
(79, 592.8, 'Real de magueyes blanco', 750, 1, 592.8),
(80, 145, 'Santa muerte', 750, 0, 0),
(81, 455.05, 'Abuelo 7 a?os', 750, 0, 0),
(82, 209.95, 'Appleton blanco', 950, 1, 209.95),
(83, 187.91, 'Appleton dorado', 950, 2, 375.82),
(84, 291.17, 'Appleton estate', 750, 0, 0),
(85, 605.24, 'Bacardi 8 a?os', 750, 1, 605.24),
(86, 219.07, 'Bacardi a?ejo', 750, 0, 0),
(87, 174.3, 'Bacardi blanco', 750, 0, 0),
(88, 254.43, 'Bacardi blanco ', 980, 5, 1272.15),
(89, 434.5, 'Bacardi blanco ', 1750, 1, 434.5),
(90, 260.58, 'Bacardi solera', 1000, 1, 260.58),
(91, 522.69, 'Botran 12 a?os', 750, 0, 0),
(92, 166.25, 'Captain morgan', 700, 0, 0),
(93, 208.32, 'Flor de ca?a 4 extra dry', 750, 0, 0),
(94, 0, 'Flor de ca?a 7 gran reserva', 750, 1, 0),
(95, 267.14, 'Flor de ca?a 5 a?os', 750, 0, 0),
(96, 180.59, 'Havana club 3 a?os', 700, 0, 0),
(97, 410.22, 'Havana club 7 a?os', 700, 0, 0),
(98, 236.45, 'Havana club especial', 700, 0, 0),
(99, 282.05, 'Matusalem clasico', 750, 1, 282.05),
(100, 409, 'Matusalem gran reserva 15 a?os', 750, 0, 0),
(101, 204.41, 'Matusalem platino ', 750, 0, 0),
(102, 260.77, 'potosi a?ejo', 750, 0, 0),
(103, 156.46, 'Potosi blanco ', 750, 2, 312.92),
(104, 529.15, 'Potosi extra a?ejo', 750, 2, 1058.3),
(105, 0, 'Zacapa ?mbar 12 a?os', 750, 0, 0),
(106, 1111.5, 'Zacapa 23 a?os', 750, 1, 1111.5),
(107, 809.71, '1800 cristalino', 700, 2, 1619.42),
(108, 688.92, '1800 a?ejo ', 700, 0, 0),
(109, 520.6, '1800 Reposado', 700, 0, 0),
(110, 705.83, '7 Leguas blanco', 1000, 0, 0),
(111, 589, '7 Leguas blanco', 700, 0, 0),
(112, 733.87, '7 Leguas reposado', 750, 0.95, 697.177),
(113, 343.52, 'Cazadores reposado', 1000, 1, 343.52),
(114, 907.68, 'Cenote reposado', 700, 2, 1815.36),
(115, 560.69, 'Centenario a?ejo', 695, 1, 560.69),
(116, 283.1, 'Centenario plata ', 700, 0, 0),
(117, 346.84, 'Centenario reposado', 950, 0, 0),
(118, 284.9, 'Centenario reposado ', 700, 0, 0),
(119, 179, 'Codorniz blanco', 1000, 0, 0),
(120, 255.27, 'Cuervo especial reposado', 990, 0, 0),
(121, 188.25, 'Cuervo especial reposado', 695, 0, 0),
(122, 1015.55, 'Don julio 70', 700, 0, 0),
(123, 1016.5, 'Don julio a?ejo', 750, 2, 2033),
(124, 658.35, 'Don julio blanco', 700, 2, 1316.7),
(125, 735.3, 'Don julio reposado', 750, 0, 0),
(126, 353.21, 'Herradura antiguo reposado', 700, 0, 0),
(127, 452.1, 'Herradura antiguo reposado ', 950, 0, 0),
(128, 774.82, 'Herradura blanco', 950, 0, 0),
(129, 591.66, 'Herradura blanco ', 700, 0, 0),
(130, 0, 'Herradura reposado', 950, 0, 0),
(131, 624.34, 'Herradura reposado', 700, 1, 624.34),
(132, 441.65, 'Hornitos reposado', 1000, 0, 0),
(133, 0, 'IVG ', 1000, 0, 0),
(134, 312.55, 'Jimador reposado', 950, 0, 0),
(135, 0, 'Don julio rosado', 750, 0.55, 0),
(136, 717.82, 'Maestro dobel diamante ', 700, 0, 0),
(137, 299, 'Orendain blanco', 1000, 1, 299),
(138, 117.85, 'Rio seco Destilado de agave', 1000, 0, 0),
(139, 510.92, 'Tapatio reposado', 750, 0.45, 229.914),
(140, 149, 'Tizoc', 375, 0, 0),
(141, 365.08, 'Tradicional plata', 950, 0, 0),
(142, 329.17, 'Tradicional reposado', 695, 0, 0),
(143, 398, 'Tradicional reposado ', 950, 1, 398),
(144, 297.85, 'Tradicional plata ', 695, 1, 297.85),
(145, 0, 'Jose cuervo especial ', 695, 0, 0),
(146, 297.73, 'Absolut azul', 750, 0, 0),
(147, 301.15, 'Absolut citron', 750, 1, 301.15),
(148, 691.98, 'Gey goose', 750, 0.15, 103.797),
(149, 199.5, 'Smirnoff', 750, 3, 598.5),
(150, 244.15, 'Smirnoff', 1000, 0, 0),
(151, 222.3, 'Smirnoff tamarindo', 750, 2, 444.6),
(152, 300.02, 'Stolichnaya', 750, 0, 0),
(153, 257.45, 'Tanqueray Sterling', 750, 0.4, 102.98),
(154, 165.68, 'Wiborowa', 750, 1, 165.68),
(155, 187.94, 'Wiborowa', 1000, 0, 0),
(156, 218.5, 'Black & white', 700, 0, 0),
(157, 880.65, 'Buchanans 12 a?os', 750, 0, 0),
(158, 2167.9, 'Buchanans 18 a?os', 750, 0, 0),
(159, 866.4, 'Buchanans twoo souls', 750, 0, 0),
(160, 572.47, 'Bushmils Black rush', 750, 1, 572.47),
(161, 809.59, 'Chivas 12 a?os', 750, 1, 809.59),
(162, 1124.94, 'Glenfiddich 12 a?os', 750, 0, 0),
(163, 191.2, 'Golden Glen', 1000, 0, 0),
(164, 285.95, 'J & B', 750, 3, 857.85),
(165, 418.57, 'Jameson', 750, 1, 418.57),
(166, 982.3, 'Jhonnie walker black label', 750, 0, 0),
(167, 323.1, 'Jim beam ', 700, 0, 0),
(168, 0, 'Johnnie Wallet red label', 1000, 0, 0),
(169, 353.4, 'Johnnie walker Red label', 700, 4, 1413.6),
(170, 721.05, 'Old parr 12 a?os', 750, 0, 0),
(171, 0, 'black label ', 750, 0, 0),
(172, 264.38, 'Beronia Crianza', 750, 0, 0),
(173, 274.19, 'Balgame dios', 1500, 0, 0),
(174, 414, 'Capetta Asti espumoso', 750, 0, 0),
(175, 222.39, 'Casillero del diablo chardonnay', 750, 0, 0),
(176, 137.75, 'Finca las moras sauvignon blanc', 750, 0, 0),
(177, 189, 'Gallo Family white zinfandel', 750, 0, 0),
(178, 152.42, 'Gran hacienda Chardonnay', 750, 0, 0),
(179, 406.77, 'Kirkland malbec', 750, 0, 0),
(180, 169.24, 'La cacciatora brut', 750, 0, 0),
(181, 236.32, 'La capra Merlot', 750, 0, 0),
(182, 216, 'LA Cetto cabernet sauvignon', 750, 1, 216),
(183, 287, 'LA Cetto Nebbiolo', 750, 1, 287),
(184, 346.75, 'Marques de caceres crianza', 750, 0, 0),
(185, 293.55, 'M?rques del Riscal rioja', 750, 0, 0),
(186, 480, 'NOI', 750, 0, 0),
(187, 310, 'Opera prima brut', 750, 0, 0),
(188, 111.75, 'Peromato tempranillo ', 750, 0, 0),
(189, 333, 'Pozo de luna syrah', 750, 0, 0),
(190, 213, 'Prospero', 750, 0, 0),
(191, 660.25, 'Protos crianza', 750, 0, 0),
(192, 356.25, 'Protos roble', 750, 0, 0),
(193, 356.25, 'protos roble ', 750, 0, 0),
(194, 120.55, 'Reservado cavernet sauvignon', 750, 0, 0),
(195, 440, 'Terraza de los andes', 750, 0, 0),
(196, 405, 'Terrazas malbec', 750, 0, 0),
(197, 0, 'Valgame dios Crianza', 750, 0, 0),
(198, 139, 'XA Tinto', 750, 0, 0),
(199, 0, 'Viuda de S?nchez ', 1000, 0, 0),
(200, 0, 'V?lgame Dios reserva', 1500, 0, 0),
(201, 212, 'Jabon', 800, 0, 0),
(202, 300, 'vino', 700, 1, 300),
(203, 300, 'vino', 700, 1, 300),
(204, 300, 'vino', 700, 1, 300),
(205, 300, 'vino', 700, 1, 300),
(206, 300, 'vino', 700, 1, 300),
(207, 300, 'vino', 700, 1, 300),
(208, 300, 'vino', 700, 1, 300),
(209, 300, 'vino', 700, 1, 300);

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
(208, 0, 'V?lgame Dios reserva', 1500, 1, 0, 0, 0, '2024-01-22', NULL, NULL),
(209, 300, 'vino', 700, 1, 0, 300, 0, NULL, NULL, NULL),
(210, 300, 'vino', 700, 1, 0, 300, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(50) NOT NULL,
  `provedor` varchar(50) DEFAULT NULL,
  `comentarios` varchar(200) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `litros` float DEFAULT NULL,
  `mililitros` float DEFAULT NULL,
  `cost_unitario` float DEFAULT NULL,
  `cost_iva` float DEFAULT NULL,
  `cpc` float DEFAULT NULL,
  `id_bar` int(10) DEFAULT NULL,
  `cantidad_botellas` float NOT NULL,
  `I_I` float NOT NULL,
  `I_F` float NOT NULL,
  `V_A` float NOT NULL,
  `V_R` float NOT NULL,
  `dif_venta` float NOT NULL,
  `preexistencia` float DEFAULT NULL,
  `traslados` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `provedor`, `comentarios`, `producto`, `litros`, `mililitros`, `cost_unitario`, `cost_iva`, `cpc`, `id_bar`, `cantidad_botellas`, `I_I`, `I_F`, `V_A`, `V_R`, `dif_venta`, `preexistencia`, `traslados`) VALUES
(1, 'Vinos America', 'Tequila', '7 Leguas Blanco', 0.7, 700, 507.76, 589, 88.57, 1, 1, 1, 0.8, 0, 0, 0, 1, NULL),
(2, 'Vinos America', 'Tequila', '1800 añejo', 0.7, 700, 595.39, 690.65, 98.66, 2, 1, 1, 0.8, 0, 0, 0, 1, NULL);

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

--
-- Volcado de datos para la tabla `provedores`
--

INSERT INTO `provedores` (`id_provedor`, `provedor`, `direccion`, `telefono`, `correo`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, 'l', 'lll', 767, 'leo@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id_socios` int(20) NOT NULL,
  `costo_tot` float DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `mililitros` float DEFAULT NULL,
  `i_i` float DEFAULT NULL,
  `i_f` float DEFAULT NULL,
  `costo_act` float DEFAULT NULL,
  `venta_r` float DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `temp_venta_aproximada` decimal(10,2) DEFAULT NULL,
  `temp_diferencia_venta` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id_socios`, `costo_tot`, `producto`, `mililitros`, `i_i`, `i_f`, `costo_act`, `venta_r`, `fecha_actualizacion`, `temp_venta_aproximada`, `temp_diferencia_venta`) VALUES
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
(208, 0, 'V?lgame Dios reserva', 1500, 1, 0, 0, 0, '2024-01-22', NULL, NULL),
(209, 300, 'vino', 700, 1, NULL, 300, NULL, NULL, NULL, NULL),
(210, 300, 'vino', 700, 1, NULL, 300, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_vinos`
--

CREATE TABLE `tipos_vinos` (
  `id_vinos` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_vinos`
--

INSERT INTO `tipos_vinos` (`id_vinos`, `nombre`, `tipo`) VALUES
(1, '7 LEGUAS BLANCO ', 'TEQUILA'),
(2, '1800 A?EJO', 'TEQUILA'),
(3, 'CENTENARIO PLATA ', 'TEQUILA'),
(4, 'CENTENARIO REPOSADO', 'TEQUILA'),
(5, 'TRADICIONAL REPOSADO', 'TEQUILA'),
(6, 'TRADICIONAL PLATA', 'TEQUILA'),
(7, 'DON JULIO 70', 'TEQUILA'),
(8, 'HERRADURA ANTIGUO REPOSADO', 'TEQUILA'),
(9, 'HERADURA BLANCO', 'TEQUILA'),
(10, 'HERADURA BLANCO', 'TEQUILA'),
(11, 'HERRADURA REPOSADO', 'TEQUILA'),
(12, 'DOBEL DIAMANTE ', 'TEQUILA'),
(13, '400 CONEJOS JOVEN', 'MEZCAL'),
(14, 'JURAME JOVEN', 'MEZCAL'),
(15, 'LAGUNA SECA BLANCO', 'MEZCAL'),
(16, 'MONTELOBOS ESPADIN', 'MEZCAL'),
(17, 'UNION UNO', 'MEZCAL'),
(18, 'CUCO SALMIANA', ''),
(19, 'CUCO ABOCADO', ''),
(20, 'BUCHANANS 12', 'WHISKY BLEND'),
(21, 'CHIVAS 12 ', 'WHISKY BLEND'),
(22, 'J&B', 'WHISKY BLEND'),
(23, 'JOHNNIE WALKER RED LABEL', 'WHISKY BLEND'),
(24, 'JOHNNIE WALKER BLACK LABEL', 'WHISKY BLEND'),
(25, 'GLENFIDDICH 12 ', 'WHISKY SINGLE MALT '),
(26, 'JACK DANIELS', 'WHISKY SINGLE MALT '),
(27, 'BOURBON WILD TURKEY RYE', 'WHISKY SINGLE MALT '),
(28, 'JIM BEAM WHITE', 'WHISKY SINGLE MALT '),
(29, 'JOHN JAMESON', 'WHISKY IRLANDES'),
(30, 'BACARDI BLANCO', 'RON'),
(31, 'BACARDI BLANCO', 'RON'),
(32, 'CAPTAIN MORGAN SPICY', 'RON'),
(33, 'FLOR DE CA?A 4 EXTRA DRY', 'RON'),
(34, 'HAVANA A?EJO ESPECIAL ', 'RON'),
(35, 'HAVANA CLUB 7', 'RON'),
(36, 'MATUSALEM CLASICO', 'RON'),
(37, 'MATUSALEM PLATINO ', 'RON'),
(38, 'POTOSI A?EJO', 'RON'),
(39, 'POTOSI BLANCO ', 'RON'),
(40, 'POTOSI EXTRA A?EJO', 'RON'),
(41, 'ZACAPA 23', 'RON'),
(42, 'BEEFEATER', 'GIN'),
(43, 'BOMBAY SAPHIRE', ''),
(44, 'GIBSONS', ''),
(45, 'HENDRICKS', ''),
(46, 'TANQUERAY', ''),
(47, 'ABSOLUT AZUL', 'VODKA'),
(48, 'ERISTOFF', ''),
(49, 'SMIRNOFF', ''),
(50, 'SMIRNOFF TAMARINDO', ''),
(51, 'STOLICHNAYA ', ''),
(52, 'TORRES 10', ''),
(53, 'TORRES 15', ''),
(54, 'TERRY CENTENARIO ', ''),
(55, 'HENNESSY V.S.', 'COGNAC'),
(56, 'AMARO AVERNA', ''),
(57, 'APEROL', ''),
(58, 'CAMPARI', 'APERITIVOS'),
(59, 'CARPANO CLASICO ROSSO', ''),
(60, 'CARPANO DRY BLANCO ', ''),
(61, 'CHARTREUSE AMARILLO', ''),
(62, 'CHAMBORD', ''),
(63, 'FERNET BRANCA', ''),
(64, 'LILLET BLANC ', ''),
(65, 'MARTINI BIANCO DULCE ', ''),
(66, 'PUNT E MES ', ''),
(67, 'ANGOSTURA AROMATICO', 'BITTER'),
(68, 'ANGOSTURA COCOA', 'BITTER'),
(69, 'ANGOSTURA ORANGE', 'BITTER'),
(70, 'AMARETTO DI SARONNO', 'DIGESTIVOS'),
(71, 'ANCHO REYES ROJO', ''),
(72, 'BAILEYS', ''),
(73, 'CHINCHON DULCE ', ''),
(74, 'CHINCHON SECO', ''),
(75, 'FLAMINGO DE CEREZA ', ''),
(76, 'FLAMINGO CACAO OSCURA', ''),
(77, 'FLAMINGO CACAO BLANCA', ''),
(78, 'FLAMINGO FRESA', ''),
(79, 'GIFFARD VIOLET', ''),
(80, 'KAHLUA', ''),
(81, 'LICOR 43', ''),
(82, 'MARRASCHINO PALLINI', ''),
(83, 'SAMBUCA VACCARI NERO', ''),
(84, 'ST. GERMAIN', ''),
(85, 'STREGA', ''),
(86, 'JEREZ TIO PEPE', ''),
(87, 'V.E. CINZANO PRO SPRITZ', ''),
(88, 'V.R. GROUND HILL ROSE WHITE SINFANDEL', ''),
(89, 'VINO TINTO CALIFORNIA', '');

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
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id_almacen`);

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
-- Indices de la tabla `cotillon`
--
ALTER TABLE `cotillon`
  ADD PRIMARY KEY (`id_cotillon`);

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
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id_socios`);

--
-- Indices de la tabla `tipos_vinos`
--
ALTER TABLE `tipos_vinos`
  ADD PRIMARY KEY (`id_vinos`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id_almacen` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT de la tabla `bar`
--
ALTER TABLE `bar`
  MODIFY `id_bar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cotillon`
--
ALTER TABLE `cotillon`
  MODIFY `id_cotillon` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `provedores`
--
ALTER TABLE `provedores`
  MODIFY `id_provedor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id_socios` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de la tabla `tipos_vinos`
--
ALTER TABLE `tipos_vinos`
  MODIFY `id_vinos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
