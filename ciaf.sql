-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2024 a las 03:34:58
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
-- Base de datos: `ciaf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `createdAt`, `updatedAt`) VALUES
(1, 'BlackBerry 7100t', 'BlackBerry', '$33.78', '0000-00-00', '0000-00-00'),
(2, 'Lenovo A60', 'Lenovo', '$78.28', '0000-00-00', '0000-00-00'),
(3, 'Yezz Andy 3G 3.5 YZ1110', 'Yezz', '$14.24', '0000-00-00', '0000-00-00'),
(4, 'Wiko Y80', 'Wiko', '$75.94', '0000-00-00', '0000-00-00'),
(5, 'LG GD330', 'LG', '$90.03', '0000-00-00', '0000-00-00'),
(6, 'Samsung P6200 Galaxy Tab 7.0 Plus', 'Samsung', '$14.06', '0000-00-00', '0000-00-00'),
(7, 'alcatel OT 735', 'alcatel', '$86.19', '0000-00-00', '0000-00-00'),
(8, 'Spice M 4580', 'Spice', '$95.27', '0000-00-00', '0000-00-00'),
(9, 'ZTE Axon Pro', 'ZTE', '$95.13', '0000-00-00', '0000-00-00'),
(10, 'Plum Boot 2', 'Plum', '$27.76', '0000-00-00', '0000-00-00'),
(11, 'vivo V15 Pro', 'vivo', '$80.85', '0000-00-00', '0000-00-00'),
(12, 'Panasonic Eluga Turbo', 'Panasonic', '$49.38', '0000-00-00', '0000-00-00'),
(13, 'LG Optimus Sol E730', 'LG', '$88.66', '0000-00-00', '0000-00-00'),
(14, 'i-mobile 8500', 'i-mobile', '$68.79', '0000-00-00', '0000-00-00'),
(15, 'Samsung Galaxy Tab 2 7.0 I705', 'Samsung', '$83.19', '0000-00-00', '0000-00-00'),
(16, 'Samsung S3550 Shark 3', 'Samsung', '$77.30', '0000-00-00', '0000-00-00'),
(17, 'Micromax A50 Ninja', 'Micromax', '$23.97', '0000-00-00', '0000-00-00'),
(18, 'Samsung Galaxy I8250', 'Samsung', '$33.06', '0000-00-00', '0000-00-00'),
(19, 'Acer Chromebook Tab 10', 'Acer', '$15.53', '0000-00-00', '0000-00-00'),
(20, 'Samsung Galaxy Note5', 'Samsung', '$23.38', '0000-00-00', '0000-00-00'),
(21, 'BenQ-Siemens CF61', 'BenQ-Siemens', '$62.32', '0000-00-00', '0000-00-00'),
(22, 'Motorola V.box(V100)', 'Motorola', '$58.98', '0000-00-00', '0000-00-00'),
(23, 'ZTE F107', 'ZTE', '$71.38', '0000-00-00', '0000-00-00'),
(24, 'Sony Ericsson Aspen', 'Sony', '$52.23', '0000-00-00', '0000-00-00'),
(25, 'Samsung R260 Chrono', 'Samsung', '$30.50', '0000-00-00', '0000-00-00'),
(26, 'Motorola E895', 'Motorola', '$23.16', '0000-00-00', '0000-00-00'),
(27, 'Maxon MX-6879', 'Maxon', '$3.02', '0000-00-00', '0000-00-00'),
(28, 'Spice M-5180', 'Spice', '$9.21', '0000-00-00', '0000-00-00'),
(29, 'Motorola One 5G', 'Motorola', '$65.83', '0000-00-00', '0000-00-00'),
(30, 'Samsung i350 Intrepid', 'Samsung', '$12.39', '0000-00-00', '0000-00-00'),
(31, 'Sharp Aquos S3', 'Sharp', '$56.52', '0000-00-00', '0000-00-00'),
(32, 'Micromax Q1', 'Micromax', '$5.58', '0000-00-00', '0000-00-00'),
(33, 'ZTE F101', 'ZTE', '$75.82', '0000-00-00', '0000-00-00'),
(34, 'alcatel Go Flip V', 'alcatel', '$11.94', '0000-00-00', '0000-00-00'),
(35, 'Apple iPhone 5c', 'Apple', '$51.34', '0000-00-00', '0000-00-00'),
(36, 'Samsung Rugby Smart I847', 'Samsung', '$81.33', '0000-00-00', '0000-00-00'),
(37, 'Allview X2 Soul Style + Platinum', 'Allview', '$56.55', '0000-00-00', '0000-00-00'),
(38, 'Nokia 6822', 'Nokia', '$45.94', '0000-00-00', '0000-00-00'),
(39, 'Samsung Galaxy Note5 Duos', 'Samsung', '$89.28', '0000-00-00', '0000-00-00'),
(40, 'Vodafone Smart X9', 'Vodafone', '$0.32', '0000-00-00', '0000-00-00'),
(41, 'Bird D515', 'Bird', '$5.08', '0000-00-00', '0000-00-00'),
(42, 'Motorola ATRIX', 'Motorola', '$42.47', '0000-00-00', '0000-00-00'),
(43, 'vivo X20 Plus', 'vivo', '$99.58', '0000-00-00', '0000-00-00'),
(44, 'Samsung X550', 'Samsung', '$90.63', '0000-00-00', '0000-00-00'),
(45, 'BenQ-Siemens EL71', 'BenQ-Siemens', '$87.77', '0000-00-00', '0000-00-00'),
(46, 'Motorola Moto G5 Plus', 'Motorola', '$3.69', '0000-00-00', '0000-00-00'),
(47, 'ZTE Maven 2', 'ZTE', '$68.18', '0000-00-00', '0000-00-00'),
(48, 'BlackBerry Porsche Design P\'9983', 'BlackBerry', '$64.35', '0000-00-00', '0000-00-00'),
(49, 'BLU Samba Elite', 'BLU', '$62.55', '0000-00-00', '0000-00-00'),
(50, 'Wiko Rainbow', 'Wiko', '$49.77', '0000-00-00', '0000-00-00'),
(51, 'alcatel OT 531', 'alcatel', '$14.72', '0000-00-00', '0000-00-00'),
(52, 'HTC EVO Design 4G', 'HTC', '$18.57', '0000-00-00', '0000-00-00'),
(53, 'Celkon A225', 'Celkon', '$76.39', '0000-00-00', '0000-00-00'),
(54, 'Huawei P Smart+ 2019', 'Huawei', '$54.17', '0000-00-00', '0000-00-00'),
(55, 'Orange Monte Carlo', 'Orange', '$48.73', '0000-00-00', '0000-00-00'),
(56, 'BLU Studio 5.0 HD LTE', 'BLU', '$76.65', '0000-00-00', '0000-00-00'),
(57, 'Lava Iris 505', 'Lava', '$8.97', '0000-00-00', '0000-00-00'),
(58, 'Sagem VS2', 'Sagem', '$76.77', '0000-00-00', '0000-00-00'),
(59, 'Celkon C777', 'Celkon', '$74.74', '0000-00-00', '0000-00-00'),
(60, 'Samsung Galaxy Note Edge', 'Samsung', '$22.22', '0000-00-00', '0000-00-00'),
(61, 'alcatel 1s', 'alcatel', '$7.92', '0000-00-00', '0000-00-00'),
(62, 'Samsung Galaxy Note N7000', 'Samsung', '$12.85', '0000-00-00', '0000-00-00'),
(63, 'Samsung Array M390', 'Samsung', '$6.12', '0000-00-00', '0000-00-00'),
(64, 'BlackBerry Curve 3G 9330', 'BlackBerry', '$90.62', '0000-00-00', '0000-00-00'),
(65, 'QMobile Noir X800', 'QMobile', '$10.48', '0000-00-00', '0000-00-00'),
(66, 'LG KG200', 'LG', '$88.14', '0000-00-00', '0000-00-00'),
(67, 'ZTE nubia Z11 Max', 'ZTE', '$85.92', '0000-00-00', '0000-00-00'),
(68, 'Vodafone Smart E9', 'Vodafone', '$49.38', '0000-00-00', '0000-00-00'),
(69, 'vivo Y12', 'vivo', '$2.81', '0000-00-00', '0000-00-00'),
(70, 'Emporia Glam', 'Emporia', '$26.95', '0000-00-00', '0000-00-00'),
(71, 'Micromax X100', 'Micromax', '$99.12', '0000-00-00', '0000-00-00'),
(72, 'LG G Watch R W110', 'LG', '$18.22', '0000-00-00', '0000-00-00'),
(73, 'Prestigio MultiPhone 5503 Duo', 'Prestigio', '$62.79', '0000-00-00', '0000-00-00'),
(74, 'Motorola V360', 'Motorola', '$96.55', '0000-00-00', '0000-00-00'),
(75, 'Samsung A500', 'Samsung', '$30.08', '0000-00-00', '0000-00-00'),
(76, 'QMobile Noir i5i', 'QMobile', '$68.32', '0000-00-00', '0000-00-00'),
(77, 'LG GW300', 'LG', '$4.73', '0000-00-00', '0000-00-00'),
(78, 'Nokia 5.4', 'Nokia', '$95.84', '0000-00-00', '0000-00-00'),
(79, 'Realme 5', 'Realme', '$0.85', '0000-00-00', '0000-00-00'),
(80, 'Micromax X118', 'Micromax', '$2.95', '0000-00-00', '0000-00-00'),
(81, 'BenQ-Siemens S68', 'BenQ-Siemens', '$98.79', '0000-00-00', '0000-00-00'),
(82, 'verykool i316', 'verykool', '$6.90', '0000-00-00', '0000-00-00'),
(83, 'alcatel OT-819 Soul', 'alcatel', '$14.55', '0000-00-00', '0000-00-00'),
(84, 'LG KM710', 'LG', '$17.21', '0000-00-00', '0000-00-00'),
(85, 'Maxwest Astro JR', 'Maxwest', '$86.98', '0000-00-00', '0000-00-00'),
(86, 'Eten P300', 'Eten', '$10.29', '0000-00-00', '0000-00-00'),
(87, 'Nokia 7610 Supernova', 'Nokia', '$62.99', '0000-00-00', '0000-00-00'),
(88, 'LG Cookie 3G T320', 'LG', '$62.57', '0000-00-00', '0000-00-00'),
(89, 'Realme Narzo 20A', 'Realme', '$36.22', '0000-00-00', '0000-00-00'),
(90, 'Motorola P30', 'Motorola', '$87.72', '0000-00-00', '0000-00-00'),
(91, 'Celkon A40', 'Celkon', '$89.41', '0000-00-00', '0000-00-00'),
(92, 'Micromax Canvas Tab P666', 'Micromax', '$80.90', '0000-00-00', '0000-00-00'),
(93, 'Vodafone 226', 'Vodafone', '$38.85', '0000-00-00', '0000-00-00'),
(94, 'Samsung ZV10', 'Samsung', '$93.58', '0000-00-00', '0000-00-00'),
(95, 'NEC N920', 'NEC', '$55.19', '0000-00-00', '0000-00-00'),
(96, 'Lava Iris 310 Style', 'Lava', '$68.54', '0000-00-00', '0000-00-00'),
(97, 'Nokia N97 mini', 'Nokia', '$51.52', '0000-00-00', '0000-00-00'),
(98, 'Bird S580', 'Bird', '$76.56', '0000-00-00', '0000-00-00'),
(99, 'YU Yutopia', 'YU', '$49.06', '0000-00-00', '0000-00-00'),
(100, 'Motorola WX260', 'Motorola', '$43.44', '0000-00-00', '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
