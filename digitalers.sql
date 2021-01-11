-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2021 a las 13:23:38
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `digitalers`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(0, 'Relojes'),
(1, 'Notebooks'),
(2, 'Celulares'),
(3, 'Tablets'),
(4, 'Drones'),
(5, 'Netbooks'),
(6, 'Smartwatches'),
(7, 'Teclados'),
(8, 'Monitores'),
(9, 'Lavarropas'),
(10, 'Secarropas'),
(11, 'Lavasecarropas'),
(12, 'Planchas'),
(13, 'Licuadoras'),
(14, 'Multiprocesadoras'),
(15, 'Hornos a gas'),
(16, 'Hornos eléctricos'),
(17, 'Microondas'),
(18, 'Ollas eléctricas'),
(19, 'Fábricas de pan'),
(20, 'Freidoras eléctricas'),
(21, 'Freidoras de aire'),
(22, 'Consolas'),
(23, 'Home Theaters'),
(24, 'Planchas verticales'),
(25, 'Planchas verticales'),
(26, 'Planchas verticales'),
(27, 'Parlante portátil'),
(28, 'Ventiladores turbo'),
(29, 'nombre inválido'),
(30, 'Ventiladores turbo'),
(31, 'Parrillas eléctricas'),
(32, 'Joysticks'),
(33, 'Parlantes para computadoras'),
(34, 'Masajeadores de mano'),
(35, 'goyo 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `sitio_web` varchar(150) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `observaciones` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre`, `sitio_web`, `telefono`, `observaciones`) VALUES
(2, 'apple', 'www.apple.com/la/', '3513414078', 'Apple Latinoamérica'),
(3, 'LG', 'lg.com.ar', '1800lgArg', ''),
(4, 'google', 'google.com.ar', '1800google', ''),
(5, 'ge', 'generalelectric.com', '1800ge', ''),
(6, 'xiaomi', 'xiaomi.com.ar', '1800xiaomi', ''),
(7, 'microsoft', 'microsoft.com.ar', '187982383', ''),
(8, 'uft', 'uft.com', '1800uft', ''),
(9, 'hp', 'hp.com.ar', '1800hp', ''),
(10, 'credicoop', 'credicoop.com.ar', '187982383', ''),
(30, 'Arcor', 'http://arcor.com', '0800-333-3033', ''),
(31, 'Dulcor', 'https://dulcoralimentos.com.ar/dulcor/', '3576 421790', ''),
(32, 'Metalsur', 'https://metalsur.com.ar/', '0341 492-1041', ''),
(33, 'Troyano', 'http://www.josetroyano.com.ar/', '0341 492-1421', ''),
(34, 'Niccoló', 'https://rossisrl.com.ar/', '0341 530-1303', ''),
(35, 'Saldivia', 'https://saldiviabuses.com.ar/', '341 921-135', ''),
(36, 'Ugarte', 'http://autobusugarte.com.ar/', '11 4686-5000', ''),
(37, 'La Favorita', 'https://www.carroceriafavorita.com.ar/', '11 4911-2234', ''),
(38, 'Marcopolo', 'https://www.marcopolo.com.br/marcopolo/', ' 0800 707 00 78', 'Brasil'),
(39, 'Comil', 'http://comilonibus.com.br/', '55 54 3520-8700', 'Brasil'),
(40, 'Busscar', 'http://novabusscar.com.br/', '11 4170-5646', ''),
(41, 'Bagley', 'https://bagley.com.ar/', '0350-800-2245', ''),
(42, 'La Serenisima', 'https://www.laserenisima.com.ar/', '237 485-9000', ''),
(43, 'Fiat', 'https://fiat.com.ar', '0800-777-8000', ''),
(44, 'Chevrolet', 'https://www.chevrolet.com.ar/', '0800-888-2438', ''),
(45, 'Renault', 'https://www.renault.com.ar/', '0800-333-7362', ''),
(46, 'Ford', 'https://www.ford.com.ar/', '0800-888-3673', ''),
(47, 'Toyota', 'https://www.toyota.com.ar/', '0800-888-8696', ''),
(48, 'Volkswagen', 'www.volkswagen.com.ar/', '3513414078', ''),
(50, 'Toshiba', 'https://www.toshiba.com/tai/', '91 218 23 00', NULL),
(52, 'Playstation', ' https://www.playstation.com/es-ar/ ', '011-5984-4090', NULL),
(53, 'Nintendo', 'https://www.nintendo.com/es_AR/', '1-800-255-3700', NULL),
(54, 'Maybelline', 'https://www.maybelline.com.ar/', '', 'solo formulario de at. al cliente'),
(55, 'Revlon', 'http://www.revlon.com.ar/', '080077-REVLON', 'Cosmeticos'),
(56, 'Nivea', 'https://www.nivea.com.ar/', '0800-555-0142', NULL),
(57, 'Pantene', 'https://www.pantene.com.ar/', '08009997625', NULL),
(58, 'Loreal', 'https://www.lorealparis.com.ar/', '1127899955', NULL),
(59, 'GA.MA Italy', 'https://www.gamaitaly.com.ar/', '3221-6862', NULL),
(60, 'Nestle', 'https://www.nestle.com.ar/ ', '0800-999-8100', NULL),
(61, 'La Serenisima', 'https://www.laserenisima.com.ar/', '0237-4859000', NULL),
(62, 'Havanna', 'https://www.havanna.com.ar/', '0800-666-1371', NULL),
(63, 'Jorgito', 'https://www.alfajores-jorgito.com/', '0800-222-5674', NULL),
(64, 'Singer', 'https://singerargentina.com.ar/', '4573-0888', 'Maquinas de coser'),
(65, 'Muaa', 'https://www.muaa.com.ar/', '1558551252', NULL),
(66, 'Tropea', 'https://tropea.com.ar/', '1151977750', NULL),
(67, 'Honda', 'http://www.honda.com.ar/', '0800-1221-HONDA', NULL),
(68, 'Yamaha', 'https://www.yamaha-motor.com.ar/', '', 'buscar telefono'),
(69, 'Audi', 'https://www.audi.com.ar/', '0800-888-2834', NULL),
(70, 'Canon', 'https://www.canon.es/', '', 'chequear sede en Argentina'),
(71, 'Faber Castell ', 'https://www.faber-castell.com.ar/', '', 'solo mail de at. al cliente'),
(72, 'LG', 'https://www.lg.com/ar', '011 5352-5400', 'atencion al cliente de lun a vie de 8 a 14 hs'),
(73, 'Samsung', 'https://www.samsung.com/ar/', '011-4109-4000', 'consultar stock de productos'),
(74, 'Apple', 'https://www.apple.com/la/', '1-800-275-2273', 'sin observaciones'),
(75, 'DJI', 'https://www.dji.com/', '1-800-DJI-2222', 'sin observaciones'),
(76, 'Google', 'https://www.google.com/', '1-877-355-5787', 'sin observaciones'),
(77, 'Microsoft Argentina', 'https://www.microsoft.com/es-ar/', '5411-4316-1900', 'telefono para consultas'),
(78, 'General Electric', 'https://www.ge.com/', '011 5556-2000', 'no contactarse sabados y domingos'),
(79, 'Whirlpool Argentina ', 'http://www.whirlpool.com.ar/', '4480-8888', 'telefono de reparaciones'),
(80, 'Sanyo', 'http://www.sanyo.com.ar/', '011 4863-9300', 'sanyo tienda oficial y servicio tecnico oficial'),
(81, 'Apple', 'https://locate.apple.com/ar/es/', '0800 107 6285', 'consultar stock de productos'),
(82, 'VAIO', 'https://ar.vaio.com/', '0800 122 5353', 'vaio tienda oficial'),
(83, 'Xiaomi', 'https://www.xiaomiarg.com.ar/', '1144395512', 'solo whatsapp'),
(84, 'IBM', 'https://www.ibm.com/ar-es', '011 5286-4898', 'IBM tienda oficial'),
(85, 'Intel', 'https://www.intel.com.ar', '011 5284-0100', 'Intel solo procesadores'),
(86, 'Phillips', 'https://www.philips.com.ar', '011 4546-7777', 'consultar stock de productos'),
(87, 'HP', 'https://www8.hp.com/ar/es/home.html', '011 5246-5064', 'solo telefono de consultas'),
(88, 'Asus', 'https://www.asus.com/ar/', '0800-122-0563', 'verificar más telefonos'),
(89, 'Nikon', 'https://www.nikon.com.ar/home/home.php', '54 9-11-2477-8269', 'telefono para consultas'),
(90, 'BenQ', 'https://www.benq.com/es-ar/index.html', '0810 122 2396', 'atencion al cliente lun a vie de 10 a 17 hs'),
(91, 'Noga', 'http://noganet.com/', '54 11- 5237-0770', 'consultar stock de productos'),
(92, 'DELL', 'https://www.dell.com.ar/', '0800-666-0789', 'sin observaciones'),
(93, 'Epson', 'https://epson.com.ar/', '011 5167-0350', 'atencion al cliente lun a vie 9 a 18 hs'),
(94, 'Genius', 'https://es.geniusnet.com/', '0810 345 0118', 'consultar stock de productos'),
(95, 'kingston', 'https://www.kingston.com/es', '54-0800-800-1418', 'reclamos unicamente de lun a vie de 10 a 16 hs'),
(96, 'lenovo', 'https://www.lenovo.com/ar/es/', '011 5293-7800', 'centro de atencion al cliente'),
(97, 'wacom', 'https://www.wacom.com/es-ar', '0800-333-0108', 'consultar stock de productos'),
(98, 'xerox', 'https://www.xerox.com/index/esar.html', '011 4703-7700', 'consultas por cambios'),
(99, 'bgh', 'https://bgh.com.ar/', '011 4309-2001', 'consultar stock de productos'),
(100, 'noblex', 'https://www.noblex.com.ar/', '0810 444 6625', '0810 perteneciente a CABA'),
(101, 'Casio', 'https://www.casio-intl.com/latin/es/', '011 5252-3434', 'unicamente para comunicarse por relojes'),
(102, 'GoPro', 'https://gopro.com.ar/', '011 4813-3643', 'la web es la tienda oficial GoPro'),
(103, 'Sigma', 'https://www.sigma-photo.com.ar/', '11-4925-5006', 'unicamente whatsApp'),
(104, 'Ken Brown', 'https://ken-brown.com.ar/', '011 4788-4959', 'telefono de atencion al cliente'),
(105, 'Hisense', 'https://www.hisense.com.ar/', '0810-222-1244', 'contacto telefonico unicamente reclamos'),
(106, 'Pioneer', 'https://pioneer-latin.com/', '011 4522-1238', 'horario de atencion de l a v de 10 a 18 hs'),
(107, 'LG', 'https://www.lg.com/ar', '011 5352-5400', NULL),
(108, 'Samsung', 'https://www.samsung.com/ar/', '011-4109-4000', NULL),
(109, 'Apple', 'https://www.apple.com/la/', '1-800-275-2273', NULL),
(110, 'DJI', 'https://www.dji.com/', '1-800-DJI-2222', NULL),
(111, 'Google', 'https://www.google.com/', '1-877-355-5787', NULL),
(112, 'Microsoft Argentina', 'https://www.microsoft.com/es-ar/', '5411-4316-1900', NULL),
(113, 'General Electric', 'https://www.ge.com/', '011 5556-2000', NULL),
(114, 'Whirlpool Argentina ', 'http://www.whirlpool.com.ar/', '4480-8888', '*Teléfono para Capital Federal y Gran Bs.As.\r\nResto del país: 0810-666-6266'),
(115, 'Sanyo', 'http://www.sanyo.com.ar/', '0810-444-SANYO', ''),
(116, 'Panasonic', 'https://www.panasonic.com/es/', '+34 902 15 30 60', ''),
(117, 'Motorola', 'https://www.motorola.com.ar/', '0-800-666-8676', ''),
(118, 'Gibson', 'https://www.gibson.com/', '1-800-4GIBSON', '*Teléfono: US & Canada.'),
(119, 'Philips', 'https://www.philips.com.ar/', '0800-888-7532', ''),
(120, 'Nokia', 'https://www.nokia.com/phones/es_ar', '0810 333 6654', ''),
(121, 'Fender', 'https://shop.fender.com/es/intl/start', '+34 915914700', '*Teléfono: Servicio al Cliente - 9AM to 5:30PM Lúnes- Viernes.'),
(122, 'JBL', 'https://ar.jbl.com/', '0-800-362-0008', ''),
(123, 'Bosch', 'https://www.bosch.com.ar/', '0800-4444-26724', ''),
(124, 'HP', 'https://store.hp.com/ar-es/default/', '11-5984-1240 ', '*Teléfono: Soporte - Opción 1, 1, 1.'),
(125, 'Dell', 'https://www.dell.com/ar/empresas/p/laptops?~ck=bt&', '0810-444-3355', ''),
(126, 'Xiaomi', 'https://www.mi.com/global/', '900 128 128', NULL),
(127, 'Noblex', 'https://www.noblex.com.ar/', '0-810-444-6625', '*Teléfono: Soporte - Horario de Atención de 8 a 17hs Lunes-Viernes'),
(128, 'Black+Decker', 'https://ar.blackanddecker.global/es', '(011) 4726-4400', NULL),
(129, 'Sony', 'https://www.sony.com.ar/', '011 5077-1321', '*Teléfono: Ventas: Opción 1, Atención al Cliente: Opción 2'),
(130, 'Nike', 'https://www.nike.com/ar/', '0810-555-NIKE', NULL),
(131, 'SOHO', 'https://www.sohodenim.com.ar/', '11 3296-1110', NULL),
(132, 'Adidas', 'https://www.adidas.com.ar/', '(11)59845167', NULL),
(133, 'Vans', 'https://www.vans.com.ar/homevans/', '11-3989-7326', NULL),
(134, 'Yamaha (Make Waves)', 'https://es.yamaha.com/index.html', '11 4119-7000', 'Olga Cossettini 1553 Piso 4 Norte Madero Este-C1107CEK Buenos Aires, Argentina'),
(135, 'Lego', 'https://www.lego.com/es-ar', '1-800-835-4386', '*Teléfono: La asistencia en español está disponible de lunes a viernes de 10 a.m. a 8 p.m. ET'),
(136, 'Casio', 'https://www.casio-intl.com/latin/es/', '1-800-706-2534', ''),
(137, 'Mattel', 'https://www.mattel.com/en-us', '902-203-010', ''),
(138, 'Gafa', 'https://www.tienda.gafa.com.ar/', '0810-122-0238', ''),
(139, 'Intel', 'https://www.intel.la/content/www/xl/es/homepage.html', '0800-666-1274', NULL),
(140, 'Kingston', 'https://www.kingston.com/es', '0800-800-1418', NULL),
(141, 'Motomel', 'https://motomel.com.ar/', '0810 444 1892', NULL),
(142, 'BGH', 'https://bgh.com.ar/', '(54 11) 4309-2000', '*Teléfono: Atención al Cliente - Contacto Institucional'),
(143, 'Bestway', 'https://m.bestwaycorp.com.ar/', '(+54) 1159843871', NULL),
(144, 'TP-Link', 'https://www.tp-link.com/ar/', '11-4312-5176', NULL),
(145, 'Ibanez', 'https://www.ibanez.com/na/', '54-11-4508-2700', 'Fax: 54-11-4508-2715\r\nAVDA. SANTA FE 2055 - BUENOS AIRES, ARGENTINA CP 1123'),
(146, 'Lenovo', 'https://www.lenovo.com/ar/es/', '0800-222-0279', NULL),
(147, 'New Balance', 'https://www.newbalance.com.ar/', '0810-999-0553', NULL),
(148, 'Lacoste', 'https://www.lacoste.com/ar/', '(+54) 11 2-040-0808', 'Contacta con nuestro servicio de atención al cliente de lunes a viernes de 09.00 a 18.00 horas.\r\n*Tarifa local de tu operador telefónico.'),
(149, 'Cisco', 'https://www.cisco.com/c/es_ar/index.html', '011 4341-0100', NULL),
(150, 'Marshall', 'https://marshall.com/?languageCode=es', '+44(0)1908 375411', 'Puede contactarnos por el número teléfonico o para cualquier otra consulta envíe un correo electrónico a: contactus@marshall.com'),
(151, 'AMD', 'https://www.amd.com/es', '+54-11-59842576', NULL),
(152, 'Vox', 'https://voxamps.com/', '(631) 390-6800', 'Horario: Lunes a Viernes 10:00 am - 6:00 pm'),
(153, 'Nux', 'https://www.nuxefx.com/index.html', '+1 626-357-1275', '*Teléfono: Sede USA - Teléfono de oficina.\r\nTeléfono de Soporte Técnico: +1 626-800-7466'),
(154, 'Arcor', 'http://arcor.com', '0800-333-3033', 'Número Gratuito'),
(155, 'Dulcor', 'https://dulcoralimentos.com.ar/', '3576 421790', 'Casa central Arroyito'),
(156, 'Metalsur', 'https://metalsur.com.ar/', '341 492-1041', ''),
(157, 'Troyano', 'http://www.josetroyano.com.ar/', '341 492-1421', ''),
(158, 'Niccoló', 'https://rossisrl.com.ar/', '341 530-1303', ''),
(159, 'Saldivia', 'https://saldiviabuses.com.ar/', '341 921-135', ''),
(160, 'Ugarte', 'http://autobusugarte.com.ar/', '11 4686-5000', ''),
(161, 'La Favorita', 'https://www.carroceriafavorita.com.ar/', '11 4911-2234', ''),
(162, 'Marcopolo', 'https://www.marcopolo.com.br/marcopolo/', ' 0800-707-0078', 'Numero Internacional (Brasil)'),
(163, 'Comil', 'http://comilonibus.com.br/', '+55 54 3520-8700', ''),
(164, 'Busscar', 'http://novabusscar.com.br/', '11 4170-5646', 'Representante en Argentina'),
(165, 'Bagley', 'https://bagley.com.ar/', '0800-222-224539', ''),
(166, 'La Serenisima', 'https://www.laserenisima.com.ar/', '237 485-9000', ''),
(167, 'Fiat', 'https://fiat.com.ar', '0800-777-8000', ''),
(168, 'Chevrolet', 'https://www.chevrolet.com.ar/', '0800-888-2438', ''),
(169, 'Renault', 'https://www.renault.com.ar/', '0800-333-7362', ''),
(170, 'Ford', 'https://www.ford.com.ar/', '0800-888-3673', ''),
(171, 'Toyota', 'https://www.toyota.com.ar/', '0800-888-8696', ''),
(172, 'Volkswagen', 'https://www.volkswagen.com.ar/', '0800-888-8338', 'Lunes a viernes'),
(173, 'Coca-Cola', 'https://www.cocacoladeargentina.com.ar/', '0800-888-8888', ''),
(174, 'Agrale', 'http://www.agraleargentina.com.ar/', '11 4876-1800', ''),
(175, 'Mercedes-Benz', 'https://www.mercedes-benz.com.ar/', '0800-666-2369', ''),
(176, 'SanCor', 'http://www.sancor.com/', '0800-777-26267', 'Atención al consumidor'),
(177, 'Grido', 'https://www.gridohelado.com/', '351 497-1600', 'Planta central Córdoba'),
(178, 'Dupont', 'https://www.dupont.com.ar/', '800-333-8766', 'Línea gratuita'),
(179, 'Zanella', 'https://zanella.com.ar/', '11 4716-8200', ''),
(180, 'AGD', 'https://www.agd.com.ar/', '358 955-100', 'Administración central'),
(181, 'Natura', 'http://www.natura.com.ar/', '0800-888-0243', ''),
(182, 'CBSé', 'https://www.cbse.com.ar/', '0800-999-2273', ''),
(183, 'Drean', 'https://www.drean.com.ar/', '0800-888-37326', 'Consultas y reclamos'),
(184, 'Atma', 'https://www.atma.com.ar/', '0810-444-2862', NULL),
(185, 'Atma', 'https://www.atma.com.ar/', '0810-444-2862', NULL),
(186, 'Atma', 'https://www.atma.com.ar/', '0810-444-2862', 'Esto es una_prueba para el LIKE =)'),
(187, 'Philips Argentina', 'https://www.philips.com.ar/', '011 4546-7777', NULL),
(188, 'Atma', 'https://www.atma.com.ar/', '0810-444-2862', NULL),
(189, 'Noblex', 'https://www.noblex.com.ar/', '0810-444-6625', NULL),
(190, 'Samsung', 'samsung.com', '1165656565', ''),
(191, 'apple', 'apple.com', '1800apple', ''),
(192, 'LG', 'lg.com.ar', '1800lgArg', ''),
(193, 'google', 'google.com.ar', '1800google', ''),
(194, 'ge', 'generalelectric.com', '1800ge', ''),
(195, 'xiaomi', 'xiaomi.com.ar', '1800xiaomi', ''),
(196, 'microsoft', 'microsoft.com.ar', '187982383', ''),
(197, 'uft', 'uft.com', '1800uft', ''),
(198, 'hp', 'hp.com.ar', '1800hp', ''),
(199, 'credicoop', 'credicoop.com.ar', '187982383', ''),
(200, 'Arcor', 'http://arcor.com', '0800-333-3033', ''),
(201, 'Dulcor', 'https://dulcoralimentos.com.ar/dulcor/', '3576 421790', ''),
(202, 'Metalsur', 'https://metalsur.com.ar/', '0341 492-1041', ''),
(203, 'Troyano', 'http://www.josetroyano.com.ar/', '0341 492-1421', ''),
(204, 'Niccoló', 'https://rossisrl.com.ar/', '0341 530-1303', ''),
(205, 'Saldivia', 'https://saldiviabuses.com.ar/', '341 921-135', ''),
(206, 'Ugarte', 'http://autobusugarte.com.ar/', '11 4686-5000', ''),
(207, 'La Favorita', 'https://www.carroceriafavorita.com.ar/', '11 4911-2234', ''),
(208, 'Marcopolo', 'https://www.marcopolo.com.br/marcopolo/', ' 0800 707 00 78', 'Brasil'),
(209, 'Comil', 'http://comilonibus.com.br/', '55 54 3520-8700', 'Brasil'),
(210, 'Busscar', 'http://novabusscar.com.br/', '11 4170-5646', ''),
(211, 'Bagley', 'https://bagley.com.ar/', '0350-800-2245', ''),
(212, 'La Serenisima', 'https://www.laserenisima.com.ar/', '237 485-9000', ''),
(213, 'Fiat', 'https://fiat.com.ar', '0800-777-8000', ''),
(214, 'Chevrolet', 'https://www.chevrolet.com.ar/', '0800-888-2438', ''),
(215, 'Renault', 'https://www.renault.com.ar/', '0800-333-7362', ''),
(216, 'Ford', 'https://www.ford.com.ar/', '0800-888-3673', ''),
(217, 'Toyota', 'https://www.toyota.com.ar/', '0800-888-8696', ''),
(218, 'Volkswagen', 'https://www.volkswagen.com.ar/', '0800-888-8338', ''),
(219, 'Toshiba', 'https://www.toshiba.com/tai/', '91 218 23 00', NULL),
(220, 'Playstation', ' https://www.playstation.com/es-ar/ ', '011-5984-4090', NULL),
(221, 'Nintendo', 'https://www.nintendo.com/es_AR/', '1-800-255-3700', NULL),
(222, 'Maybelline', 'https://www.maybelline.com.ar/', '', 'solo formulario de at. al cliente'),
(223, 'Revlon', 'http://www.revlon.com.ar/', '080077-REVLON', 'Cosmeticos'),
(224, 'Nivea', 'https://www.nivea.com.ar/', '0800-555-0142', NULL),
(225, 'Pantene', 'https://www.pantene.com.ar/', '08009997625', NULL),
(226, 'Loreal', 'https://www.lorealparis.com.ar/', '1127899955', NULL),
(227, 'GA.MA Italy', 'https://www.gamaitaly.com.ar/', '3221-6862', NULL),
(228, 'Nestle', 'https://www.nestle.com.ar/ ', '0800-999-8100', NULL),
(229, 'La Serenisima', 'https://www.laserenisima.com.ar/', '0237-4859000', NULL),
(230, 'Havanna', 'https://www.havanna.com.ar/', '0800-666-1371', NULL),
(231, 'Jorgito', 'https://www.alfajores-jorgito.com/', '0800-222-5674', NULL),
(232, 'Singer', 'https://singerargentina.com.ar/', '4573-0888', 'Maquinas de coser'),
(233, 'Muaa', 'https://www.muaa.com.ar/', '1558551252', NULL),
(234, 'Tropea', 'https://tropea.com.ar/', '1151977750', NULL),
(235, 'Honda', 'http://www.honda.com.ar/', '0800-1221-HONDA', NULL),
(236, 'Yamaha', 'https://www.yamaha-motor.com.ar/', '', 'buscar telefono'),
(237, 'Audi', 'https://www.audi.com.ar/', '0800-888-2834', NULL),
(238, 'Canon', 'https://www.canon.es/', '', 'chequear sede en Argentina'),
(239, 'Faber Castell ', 'https://www.faber-castell.com.ar/', '', 'solo mail de at. al cliente'),
(240, 'LG', 'https://www.lg.com/ar', '011 5352-5400', 'atencion al cliente de lun a vie de 8 a 14 hs'),
(241, 'Samsung', 'https://www.samsung.com/ar/', '011-4109-4000', 'consultar stock de productos'),
(242, 'Apple', 'https://www.apple.com/la/', '1-800-275-2273', 'sin observaciones'),
(243, 'DJI', 'https://www.dji.com/', '1-800-DJI-2222', 'sin observaciones'),
(244, 'Google', 'https://www.google.com/', '1-877-355-5787', 'sin observaciones'),
(245, 'Microsoft Argentina', 'https://www.microsoft.com/es-ar/', '5411-4316-1900', 'telefono para consultas'),
(246, 'General Electric', 'https://www.ge.com/', '011 5556-2000', 'no contactarse sabados y domingos'),
(247, 'Whirlpool Argentina ', 'http://www.whirlpool.com.ar/', '4480-8888', 'telefono de reparaciones'),
(248, 'Sanyo', 'http://www.sanyo.com.ar/', '011 4863-9300', 'sanyo tienda oficial y servicio tecnico oficial'),
(249, 'Apple', 'https://locate.apple.com/ar/es/', '0800 107 6285', 'consultar stock de productos'),
(250, 'VAIO', 'https://ar.vaio.com/', '0800 122 5353', 'vaio tienda oficial'),
(251, 'Xiaomi', 'https://www.xiaomiarg.com.ar/', '1144395512', 'solo whatsapp'),
(252, 'IBM', 'https://www.ibm.com/ar-es', '011 5286-4898', 'IBM tienda oficial'),
(253, 'Intel', 'https://www.intel.com.ar', '011 5284-0100', 'Intel solo procesadores'),
(254, 'Phillips', 'https://www.philips.com.ar', '011 4546-7777', 'consultar stock de productos'),
(255, 'HP', 'https://www8.hp.com/ar/es/home.html', '011 5246-5064', 'solo telefono de consultas'),
(256, 'Asus', 'https://www.asus.com/ar/', '0800-122-0563', 'verificar más telefonos'),
(257, 'Nikon', 'https://www.nikon.com.ar/home/home.php', '54 9-11-2477-8269', 'telefono para consultas'),
(258, 'BenQ', 'https://www.benq.com/es-ar/index.html', '0810 122 2396', 'atencion al cliente lun a vie de 10 a 17 hs'),
(259, 'Noga', 'http://noganet.com/', '54 11- 5237-0770', 'consultar stock de productos'),
(260, 'DELL', 'https://www.dell.com.ar/', '0800-666-0789', 'sin observaciones'),
(261, 'Epson', 'https://epson.com.ar/', '011 5167-0350', 'atencion al cliente lun a vie 9 a 18 hs'),
(262, 'Genius', 'https://es.geniusnet.com/', '0810 345 0118', 'consultar stock de productos'),
(263, 'kingston', 'https://www.kingston.com/es', '54-0800-800-1418', 'reclamos unicamente de lun a vie de 10 a 16 hs'),
(264, 'lenovo', 'https://www.lenovo.com/ar/es/', '011 5293-7800', 'centro de atencion al cliente'),
(265, 'wacom', 'https://www.wacom.com/es-ar', '0800-333-0108', 'consultar stock de productos'),
(266, 'xerox', 'https://www.xerox.com/index/esar.html', '011 4703-7700', 'consultas por cambios'),
(267, 'bgh', 'https://bgh.com.ar/', '011 4309-2001', 'consultar stock de productos'),
(268, 'noblex', 'https://www.noblex.com.ar/', '0810 444 6625', '0810 perteneciente a CABA'),
(269, 'Casio', 'https://www.casio-intl.com/latin/es/', '011 5252-3434', 'unicamente para comunicarse por relojes'),
(270, 'GoPro', 'https://gopro.com.ar/', '011 4813-3643', 'la web es la tienda oficial GoPro'),
(271, 'Sigma', 'https://www.sigma-photo.com.ar/', '11-4925-5006', 'unicamente whatsApp'),
(272, 'Ken Brown', 'https://ken-brown.com.ar/', '011 4788-4959', 'telefono de atencion al cliente'),
(273, 'Hisense', 'https://www.hisense.com.ar/', '0810-222-1244', 'contacto telefonico unicamente reclamos'),
(274, 'Pioneer', 'https://pioneer-latin.com/', '011 4522-1238', 'horario de atencion de l a v de 10 a 18 hs'),
(275, 'LG', 'https://www.lg.com/ar', '011 5352-5400', NULL),
(276, 'Samsung', 'https://www.samsung.com/ar/', '011-4109-4000', NULL),
(277, 'Apple', 'https://www.apple.com/la/', '1-800-275-2273', NULL),
(278, 'DJI', 'https://www.dji.com/', '1-800-DJI-2222', NULL),
(279, 'Google', 'https://www.google.com/', '1-877-355-5787', NULL),
(280, 'Microsoft Argentina', 'https://www.microsoft.com/es-ar/', '5411-4316-1900', NULL),
(281, 'General Electric', 'https://www.ge.com/', '011 5556-2000', NULL),
(282, 'Whirlpool Argentina ', 'http://www.whirlpool.com.ar/', '4480-8888', '*Teléfono para Capital Federal y Gran Bs.As.\r\nResto del país: 0810-666-6266'),
(283, 'Sanyo', 'http://www.sanyo.com.ar/', '0810-444-SANYO', ''),
(284, 'Panasonic', 'https://www.panasonic.com/es/', '+34 902 15 30 60', ''),
(285, 'Motorola', 'https://www.motorola.com.ar/', '0-800-666-8676', ''),
(286, 'Gibson', 'https://www.gibson.com/', '1-800-4GIBSON', '*Teléfono: US & Canada.'),
(287, 'Philips', 'https://www.philips.com.ar/', '0800-888-7532', ''),
(288, 'Nokia', 'https://www.nokia.com/phones/es_ar', '0810 333 6654', ''),
(289, 'Fender', 'https://shop.fender.com/es/intl/start', '+34 915914700', '*Teléfono: Servicio al Cliente - 9AM to 5:30PM Lúnes- Viernes.'),
(290, 'JBL', 'https://ar.jbl.com/', '0-800-362-0008', ''),
(291, 'Bosch', 'https://www.bosch.com.ar/', '0800-4444-26724', ''),
(292, 'HP', 'https://store.hp.com/ar-es/default/', '11-5984-1240 ', '*Teléfono: Soporte - Opción 1, 1, 1.'),
(293, 'Dell', 'https://www.dell.com/ar/empresas/p/laptops?~ck=bt&', '0810-444-3355', ''),
(294, 'Xiaomi', 'https://www.mi.com/global/', '900 128 128', NULL),
(295, 'Noblex', 'https://www.noblex.com.ar/', '0-810-444-6625', '*Teléfono: Soporte - Horario de Atención de 8 a 17hs Lunes-Viernes'),
(296, 'Black+Decker', 'https://ar.blackanddecker.global/es', '(011) 4726-4400', NULL),
(297, 'Sony', 'https://www.sony.com.ar/', '011 5077-1321', '*Teléfono: Ventas: Opción 1, Atención al Cliente: Opción 2'),
(298, 'Nike', 'https://www.nike.com/ar/', '0810-555-NIKE', NULL),
(299, 'SOHO', 'https://www.sohodenim.com.ar/', '11 3296-1110', NULL),
(300, 'Adidas', 'https://www.adidas.com.ar/', '(11)59845167', NULL),
(301, 'Vans', 'https://www.vans.com.ar/homevans/', '11-3989-7326', NULL),
(302, 'Yamaha (Make Waves)', 'https://es.yamaha.com/index.html', '11 4119-7000', 'Olga Cossettini 1553 Piso 4 Norte Madero Este-C1107CEK Buenos Aires, Argentina'),
(303, 'Lego', 'https://www.lego.com/es-ar', '1-800-835-4386', '*Teléfono: La asistencia en español está disponible de lunes a viernes de 10 a.m. a 8 p.m. ET'),
(304, 'Casio', 'https://www.casio-intl.com/latin/es/', '1-800-706-2534', ''),
(305, 'Mattel', 'https://www.mattel.com/en-us', '902-203-010', ''),
(306, 'Gafa', 'https://www.tienda.gafa.com.ar/', '0810-122-0238', ''),
(307, 'Intel', 'https://www.intel.la/content/www/xl/es/homepage.html', '0800-666-1274', NULL),
(308, 'Kingston', 'https://www.kingston.com/es', '0800-800-1418', NULL),
(309, 'Motomel', 'https://motomel.com.ar/', '0810 444 1892', NULL),
(310, 'BGH', 'https://bgh.com.ar/', '(54 11) 4309-2000', '*Teléfono: Atención al Cliente - Contacto Institucional'),
(311, 'Bestway', 'https://m.bestwaycorp.com.ar/', '(+54) 1159843871', NULL),
(312, 'TP-Link', 'https://www.tp-link.com/ar/', '11-4312-5176', NULL),
(313, 'Ibanez', 'https://www.ibanez.com/na/', '54-11-4508-2700', 'Fax: 54-11-4508-2715\r\nAVDA. SANTA FE 2055 - BUENOS AIRES, ARGENTINA CP 1123'),
(314, 'Lenovo', 'https://www.lenovo.com/ar/es/', '0800-222-0279', NULL),
(315, 'New Balance', 'https://www.newbalance.com.ar/', '0810-999-0553', NULL),
(316, 'Lacoste', 'https://www.lacoste.com/ar/', '(+54) 11 2-040-0808', 'Contacta con nuestro servicio de atención al cliente de lunes a viernes de 09.00 a 18.00 horas.\r\n*Tarifa local de tu operador telefónico.'),
(317, 'Cisco', 'https://www.cisco.com/c/es_ar/index.html', '011 4341-0100', NULL),
(318, 'Marshall', 'https://marshall.com/?languageCode=es', '+44(0)1908 375411', 'Puede contactarnos por el número teléfonico o para cualquier otra consulta envíe un correo electrónico a: contactus@marshall.com'),
(319, 'AMD', 'https://www.amd.com/es', '+54-11-59842576', NULL),
(320, 'Vox', 'https://voxamps.com/', '(631) 390-6800', 'Horario: Lunes a Viernes 10:00 am - 6:00 pm'),
(321, 'Nux', 'https://www.nuxefx.com/index.html', '+1 626-357-1275', '*Teléfono: Sede USA - Teléfono de oficina.\r\nTeléfono de Soporte Técnico: +1 626-800-7466'),
(322, 'Arcor', 'http://arcor.com', '0800-333-3033', 'Número Gratuito'),
(323, 'Dulcor', 'https://dulcoralimentos.com.ar/', '3576 421790', 'Casa central Arroyito'),
(324, 'Metalsur', 'https://metalsur.com.ar/', '341 492-1041', ''),
(325, 'Troyano', 'http://www.josetroyano.com.ar/', '341 492-1421', ''),
(326, 'Niccoló', 'https://rossisrl.com.ar/', '341 530-1303', ''),
(327, 'Saldivia', 'https://saldiviabuses.com.ar/', '341 921-135', ''),
(328, 'Ugarte', 'http://autobusugarte.com.ar/', '11 4686-5000', ''),
(329, 'La Favorita', 'https://www.carroceriafavorita.com.ar/', '11 4911-2234', ''),
(330, 'Marcopolo', 'https://www.marcopolo.com.br/marcopolo/', ' 0800-707-0078', 'Numero Internacional (Brasil)'),
(331, 'Comil', 'http://comilonibus.com.br/', '+55 54 3520-8700', ''),
(332, 'Busscar', 'http://novabusscar.com.br/', '11 4170-5646', 'Representante en Argentina'),
(333, 'Bagley', 'https://bagley.com.ar/', '0800-222-224539', ''),
(334, 'La Serenisima', 'https://www.laserenisima.com.ar/', '237 485-9000', ''),
(335, 'Fiat', 'https://fiat.com.ar', '0800-777-8000', ''),
(336, 'Chevrolet', 'https://www.chevrolet.com.ar/', '0800-888-2438', ''),
(337, 'Renault', 'https://www.renault.com.ar/', '0800-333-7362', ''),
(338, 'Ford', 'https://www.ford.com.ar/', '0800-888-3673', ''),
(339, 'Toyota', 'https://www.toyota.com.ar/', '0800-888-8696', ''),
(340, 'Volkswagen', 'https://www.volkswagen.com.ar/', '0800-888-8338', 'Lunes a viernes'),
(341, 'Coca-Cola', 'https://www.cocacoladeargentina.com.ar/', '0800-888-8888', ''),
(342, 'Agrale', 'http://www.agraleargentina.com.ar/', '11 4876-1800', ''),
(343, 'Mercedes-Benz', 'https://www.mercedes-benz.com.ar/', '0800-666-2369', ''),
(344, 'SanCor', 'http://www.sancor.com/', '0800-777-26267', 'Atención al consumidor'),
(345, 'Grido', 'https://www.gridohelado.com/', '351 497-1600', 'Planta central Córdoba'),
(346, 'Dupont', 'https://www.dupont.com.ar/', '800-333-8766', 'Línea gratuita'),
(347, 'Zanella', 'https://zanella.com.ar/', '11 4716-8200', ''),
(348, 'AGD', 'https://www.agd.com.ar/', '358 955-100', 'Administración central'),
(349, 'Natura', 'http://www.natura.com.ar/', '0800-888-0243', ''),
(350, 'CBSé', 'https://www.cbse.com.ar/', '0800-999-2273', ''),
(351, 'Drean', 'https://www.drean.com.ar/', '0800-888-37326', 'Consultas y reclamos'),
(352, 'Atma', 'https://www.atma.com.ar/', '0810-444-2862', NULL),
(353, 'Atma', 'https://www.atma.com.ar/', '0810-444-2862', NULL),
(354, 'Atma', 'https://www.atma.com.ar/', '0810-444-2862', 'Esto es una_prueba para el LIKE =)'),
(355, 'Philips Argentina', 'https://www.philips.com.ar/', '011 4546-7777', NULL),
(356, 'Atma', 'https://www.atma.com.ar/', '0810-444-2862', NULL),
(357, 'Noblex', 'https://www.noblex.com.ar/', '0810-444-6625', NULL),
(364, 'primera marca', 'www.google.com', '012345678920', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `precio` decimal(10,2) UNSIGNED NOT NULL,
  `stock` mediumint(9) NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `id_marca` int(10) UNSIGNED NOT NULL,
  `garantia` tinyint(3) UNSIGNED NOT NULL,
  `envio_sin_cargo` tinyint(3) UNSIGNED NOT NULL,
  `nombre_foto` varchar(100) NOT NULL,
  `fecha_de_alta` datetime NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `observaciones` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`, `stock`, `id_categoria`, `id_marca`, `garantia`, `envio_sin_cargo`, `nombre_foto`, `fecha_de_alta`, `descripcion`, `observaciones`) VALUES
(6, 'Licuadora de 3 velocidades', '222235.00', 3, 4, 2, 36, 1, 'licuadora003.jpg', '2020-03-19 20:24:37', 'Con función pica-hielo y enrollacables', ''),
(44, 'Galaxy S9 64GB', '54725.00', 1, 2, 1, 3, 1, 'jpg', '2020-11-04 19:51:16', 'Oferta! Samsung Galaxy S9 con 64GB de RAM', NULL),
(45, 'Mavic Mini', '54450.00', 13, 5, 4, 24, 1, 'jpg', '2020-11-04 19:51:16', 'Con tan solo 249 g, Mavic Mini ofrece 30 min de vuelo, transmisión HD de 2 km y un estabilizador en 3 ejes con una cámara 2.7K.', ''),
(47, 'Mavic 2 Pro', '350900.00', 100, 5, 4, 6, 1, 'jpg', '2020-11-04 19:51:16', 'El Mavic 2 Pro viene equipado con la nueva cámara Hasselblad L1D-20c, que posee la tecnología Hasselblad Natural Color Solution (HNCS), exclusiva de Hasselblad, que ayuda a los usuarios a capturar magníficas tomas aéreas de 20 megapíxeles con detalles de color asombrosos.', NULL),
(48, 'Series 5 Ultra', '63800.00', 90, 3, 2, 24, 0, 'jpg', '2020-11-04 19:51:16', 'Ultrabook superdelgada y liviana con menos de 1,5kg de peso.', NULL),
(49, 'Microsoft Windows 10 Pro', '13970.00', 138, 6, 7, 12, 1, 'jpg', '2020-11-04 19:51:16', 'Sistema operativo Windows 10 Pro', NULL),
(50, 'SmartTV 42', '40920.00', 8, 1, 1, 12, 0, 'png', '2020-11-04 19:51:16', 'Excelente calidad de imagen. Apps: Netflix, entre otras.', 'esta es una tv de 42 pulgdas'),
(51, 'Office Professional 2019', '30140.00', 970, 6, 7, 24, 1, 'jpg', '2020-11-04 19:51:16', 'Incluye Word, Excel, PowerPoint, Outlook, Publisher y Access. Licencia para uso doméstico y comercial del producto estrella de Microsoft.', NULL),
(52, 'X72F LED 4K Ultra', '75900.00', 15, 1, 8, 24, 1, 'jpg', '2020-11-04 19:51:16', 'X72F| LED | 4K Ultra HD | Alto rango dinámico (HDR) | Smart TV', NULL),
(53, 'TV X85F', '126500.00', 3, 1, 8, 24, 1, 'jpg', '2020-11-04 19:51:16', 'Una imagen más clara y colorida. Un chip increíblemente realista. Con la tecnología Object-based HDR remaster y Super Bit Mapping 4K HDR, nuestro 4K HDR Processor X1™ reproduce una profundidad y unas texturas mejoradas, además de unos colores naturales. Disfruta de colores puros y un mayor nivel de brillo en imágenes ultrarrealistas.', NULL),
(54, 'Parlante JBL Flip 5', '15730.00', 72, 8, 5, 6, 1, 'jpg', '2020-11-04 19:51:16', 'Portátil inalámbrico blue', NULL),
(55, 'Parlante Bluetooth JBL GO 2 Red', '5564.90', 153, 8, 5, 6, 1, 'jpg', '2020-11-04 19:51:16', 'El parlante Bluetooth JBL GO 2 cuenta con un diseño ultra compacto de forma cuadrada y viene en llamativos colores. Gracias a sus medidas (7,1 cm de alto x 8,6 cm de ancho x 3,1 cm de profundidad) y a su peso, de tan solo 130 gramos, vas a poder transportarlo fácilmente y llevar tu música favorita a donde vayas. Ademas, es resistente al agua IPX7, lo cual te permitira llevar tu música llevar a la pileta o a la playa.', NULL),
(56, 'Apple Watch Series 5', '130900.00', 33, 4, 3, 12, 1, 'jpg', '2020-11-04 19:51:16', 'Un reloj como nunca antes viste. Con la pantalla Retina siempre activa, puedes ver la hora y la carátula todo el tiempo. Monitorea rápidamente tu frecuencia cardiaca y recibe notificaciones si parece estar demasiado alta o baja.', NULL),
(57, 'Drone XLR40 cámara con autofoco', '103092.00', 0, 5, 4, 12, 1, 'jpg', '2020-11-04 19:51:16', 'Drone con cámara con autofoco y estabilizador de 3 ejes', NULL),
(58, 'Drone Mavic 2', '88499.40', 3, 5, 4, 12, 1, 'jpg', '2020-11-04 19:51:16', 'Drone ultra liviano con buen alcance', NULL),
(60, 'Drone Mavic 2 b', '88644.60', 5, 5, 4, 24, 1, 'jpg', '2020-11-04 19:51:16', 'Drone con control remoto de repuesto', NULL),
(61, 'Windows 10 pro', '8844.00', 5, 6, 7, 12, 1, 'jpg', '2020-11-04 19:51:16', 'licencia digital', NULL),
(62, 'Office 2019 Home & Student', '20152.00', 5, 6, 12, 24, 1, 'jpg', '2020-11-04 19:51:16', 'word, excel, powerpoint', NULL),
(63, 'Windows 7 oferta', '2240.00', 4, 6, 7, 12, 1, 'jpg', '2020-11-04 19:51:16', 'Con soporte por 2 años', NULL),
(64, 'Otro Drone super fast', '39627.50', 40, 5, 4, 12, 1, 'jpg', '2020-11-04 19:51:16', '', NULL),
(65, 'Otro Drone chiquito', '32670.00', 0, 5, 4, 24, 1, 'jpg', '2020-11-04 19:51:16', '', NULL),
(66, 'Drone Mavic Mini 2', '95920.00', 5, 5, 4, 12, 1, 'jpg', '2020-11-04 19:51:16', 'Nuevo modelo 2020', NULL),
(67, 'Drone Mavic Mini 2', '95920.00', 5, 5, 4, 12, 1, 'jpg', '2020-11-04 19:51:16', '', NULL),
(68, 'Drone Mavic Mini 2', '8800.00', 5, 5, 4, 12, 1, 'jpg', '2020-11-04 19:51:16', '', NULL),
(75, 'Wave 110 S', '120000.00', 5, 17, 1, 36, 0, 'wave1.jpg', '2020-11-01 22:14:36', 'Renovada por completo, sus líneas aerodinámicas proyectan un estilo más deportivo y moderno. Su motor 110cc refrigerado por aire, brinda mayor eficiencia en tus viajes, además de una mayor durabilidad y resistencia. Con la historia de ser unos de los modelos insignia del segmento Cub de Honda, la New Wave te brinda toda la tranquilidad y confianza de la marca, reflejadas en una mayor resistencia y vida útil del producto. Fabricada con excelentes materiales, su comprobada durabilidad se refleja e', NULL),
(76, 'Biz 125', '210000.00', 4, 17, 1, 36, 0, 'biz1.jpg', '2020-11-01 22:04:57', 'La Nueva Biz es económica como siempre. Su tanque de 5,1 litros brinda un rendimiento apto para jornadas largas sin necesidad de recargar combustible por varios días. La Nueva Biz trae energía para cargar tu celular. Con su toma de 12V ubicado dentro del porta objetos, este modelo está más moderno que nunca.', NULL),
(77, 'Titan CG150', '260000.00', 6, 17, 1, 36, 0, 'titan1.jpg', '2020-11-01 22:08:15', 'Honda CG150 Titan, una motocicleta confiable con un óptimo desempeño para tu día a día. Motor de 150cm3, sistema de balancines a rodillo y transmisión de 5 velocidades, que generan agilidad y suavidad al andar. La CG150 Titan es la elección perfecta para transitar cómodo y seguro, cortas y largas distancias.', NULL),
(78, 'XR 150L', '297000.00', 5, 17, 1, 36, 0, 'xr1.jpg', '2020-11-01 22:20:19', 'Con una combinación de estilo y eficiencia, la nueva Honda XR150 está pensada para acompañarte en cualquier ocasión. Este nuevo modelo te permite realizar tus recorridos multipropósito con estilo. Viene con un diseño gráfico novedoso, siguiendo la línea de su hermana mayor, la XR190L. Mayor torque y más eficiente gracias a su mejor rendimiento y transmisión mecánica de 5 velocidades. Potencia de 12,1HP a 7750RPM y un torque de 12,93Nm a 5000RPM. Gastarás menos y te moverás más rápido a diferenci', 'A nadie se le cae la baba?'),
(79, 'Tornado', '510000.00', 3, 17, 1, 36, 0, 'tornado1.jpg', '2020-11-01 22:25:41', 'La potencia y versatilidad de la Honda XR 250 Tornado la convierten en una motocicleta con dos personalidades que conviven en perfecta armonía. Se desplaza con total naturalidad en el día a día como una ágil moto de calle y ofrece una increíble explosión de adrenalina en cada salida off-road. Con un potente motor DOHC de 249 cm3, con doble árbol de levas refrigerado por aire y una caja de 6 velocidades que le permiten explotar al máximo su desempeño.', NULL),
(80, 'CB 190R', '300000.00', 4, 17, 1, 36, 0, 'cb1901.jpg', '2020-11-01 22:28:33', 'En la Nueva CB 190R lo sentirás como nunca antes. Su configuración formada por un cuadro tipo diamante, suspensión monoshock y escape corto, genera una distribución de pesos y centro de gravedad ideal, que combinada con una postura de manejo deportiva, ofrece una experiencia llena de adrenalina. De cuatro tiempos refrigerado por aire de 190cc e inyección electrónica PGM-FI. Con una potencia de 15,82 HP a 8.000 rpm, 15 Nm de par máximo a 7.000 rpm asociado a un cambio de 5 velocidades. Una evoluc', NULL),
(81, 'Crypton', '160000.00', 6, 17, 2, 36, 0, 'crypton1.jpg', '2020-11-01 22:39:42', 'Con un andar cómodo y sencillo, es una excelente opción para la movilidad urbana diaria. Posee un motor 4 tiempos que optimiza el consumo y brinda un andar suave y con excelentes prestaciones. Por su estética y dimensiones es un vehículo versátil y fácil de conducir en trayectos cortos y medianos. Además posee un completo tablero, caballete central y lateral así como baúl portaobjetos bajo el asiento.', NULL),
(82, 'YBR 125ED', '200000.00', 6, 17, 2, 36, 0, 'ybr1.jpg', '2020-11-01 22:41:09', 'Líder en su segmento por sus prestaciones y durabilidad, con un motor de 124cc balanceado y de andar suave. Posee freno delantero a disco y llantas de aleación ligera de cinco rayos.\nEl diseño destaca a la línea YBR dentro de su segmento por incluir formas atractivas y compactas, logrando un perfecto balance entre diseño y practicidad para la conducción en la ciudad. ', NULL),
(83, 'FZ', '270000.00', 4, 17, 2, 36, 0, 'fz1.jpg', '2020-11-01 22:42:17', 'El modelo definitivo para el uso urbano: combina diseño, calidad y optimización de rendimiento.  Con un diseño único y bajo el concepto Blue Core, el FZ FI brinda agilidad en su conducción a la vez que permite un andar suave y eficiente para el ámbito urbano diario. Referente en su segmento, este modelo ofrece una propuesta atractiva y tecnológicamente diferente.', NULL),
(84, 'MT-03', '1100000.00', 2, 17, 2, 36, 0, 'mt1.jpg', '2020-11-01 22:44:17', 'La poderosa y agresiva MT-03 representa una nueva dirección en el diseño de motocicletas. De carácter versátil y estilo deportivo, que se complementan con una excelente posición de manejo y líneas compactas, hacen que esta HYPER NAKED sea por demás ágil, siendo una excelente opción tanto para principiantes como para usuarios exigentes o para los que pretenden escalar en cilindrada.', NULL),
(85, 'XTZ 125', '300000.00', 6, 17, 2, 36, 0, 'xtzsm1.jpg', '2020-11-01 22:48:26', 'Es un modelo que se adapta a cualquier tipo de conductor y terreno debido a sus características de Doble propósito (On/Off). XTZ125 es una unidad de producción nacional, la cual se destaca por su excelente calidad y su atractivo diseño, siendo ya un referente de la categoría. Se trata de un vehículo versátil y confiable, que brinda además comodidad y un andar suave y balanceado en todo momento.', NULL),
(86, 'XTZ 250', '620000.00', 4, 17, 2, 36, 0, 'xtzxl1.jpg', '2020-11-01 22:50:05', 'Las prestaciones de este modelo lo convierten en una opción versátil y eficaz no sólo para el tránsito urbano si no también para adaptarse a terrenos irregulares.\nLa tecnología y diseño son dos aspectos característicos del XTZ250. Cuenta con sistema de inyección electrónica que garantiza un óptimo funcionamiento en todo momento, y suspensiones configuradas para garantizar una conducción efectiva y con buena capacidad de maniobra.', NULL),
(87, 'Rouser 180', '163000.00', 2, 17, 3, 24, 0, 'r1801.jpg', '2020-11-01 22:53:32', 'La Rouser 180 fue diseñada para descatarse y demostrar sus avances tecnológicos. Una motocicleta de renombre que ha sido parte de la cuadrilla Rouser desde su concepción en 2001. Ha sido apreciada permanentemente por su aspecto sólido y robusto y por su rendimiento lleno de energía.', NULL),
(88, 'Rouser AS200', '257000.00', 4, 17, 3, 24, 0, 'ras2001.jpg', '2020-11-01 22:55:38', 'Aventura no es algo que se puede aprender, no es un hobby, es un modo de vida. La nueva Rouser AS200 está dirigida a aquellos que están en busca de aventura y emociones sin precedentes. Es una máquina diseñada para el motociclista que no tiene miedo de ir más allá. Gracias al alcance de su potencia podrás llegar a donde nadie ha podido hasta ahora. ', NULL),
(89, 'Rouser NS125', '150000.00', 4, 17, 3, 24, 0, 'Rns1251.jpg', '2020-11-01 22:57:11', 'La nueva Rouser NS125 es MÁS POTENTE ya que cuenta con 12 HP, MÁS SEGURA gracias a sus frenos CBS, MÁS PRÁCTICA por su caja de 5ta y ademas, te brinda un aspecto MÁS AGRESIVA con su diseño deportivo sin igual. La NS 125 va a ser definitivamente, TU PRIMER NS.', NULL),
(90, 'Rouser NS 160', '200000.00', 4, 17, 3, 24, 0, 'rns1601.jpg', '2020-11-01 23:13:09', 'La Rouser NS160 TD lleva tu experiencia Rouser a otro nivel. Con sus 15.5 HP es la moto mas potente de su segmento. Incorpora un motor de doble bujía y 4 válvulas con tecnología DTS-i y está diseñada para sorprendernos con su apariencia agresiva y su avanzada tecnología. ', NULL),
(91, 'Rouser NS200', '275000.00', 4, 17, 3, 24, 0, 'rns200.jpg', '2020-11-01 23:14:27', 'La Rouser NS200 lleva tu experiencia Rouser a otro nivel. Uno moto hecha para buscar aventura todos los días. Utilizando el primer motor de triple bujía y 4 válvulas con DTS-i del mundo, la Rouser NS200 está diseñada para sorprendernos con su tecnología y su apariencia agresiva. ', NULL),
(92, 'Blitz 110', '70000.00', 5, 17, 4, 12, 0, 'blitz1.jpg', '2020-11-01 23:41:16', 'La nueva Blitz 110 V8, presenta un diseño totalmente renovado, de estilo joven y urbano; con divertidas y variadas gráficas para el hombre y la mujer de hoy en día. Equipada con un nuevo sistema de balizas, asiento biplaza de doble costura y material antideslizante, un espacioso baúl porta casco, tablero completo y una amplia gama de colores combinados. Se encuentra disponible en una variedad de colores, con pinturas de terminación perlada: Ocean Blue, Rock Gray, Sky Blue, Black, White y Red.', NULL),
(93, 'DLX 110', '65000.00', 5, 17, 4, 12, 0, 'dlx1.jpg', '2020-11-01 23:43:34', 'Una moto ideal para el recorrido diario de casa al trabajo y el devenir cotidiano. Montada sobre un motor 110cc con arranque eléctrico de excelente autonomía, parrilla porta equipaje.', NULL),
(94, 'S2 150', '94000.00', 3, 17, 4, 12, 0, 's21.jpg', '2020-11-01 23:47:39', 'Con un nuevo diseño deportivo destacado por sobre las motos de su gama, manteniendo la calidad y robustez de sus componentes y la amplia disponibilidad de repuestos que la convirtieron en la moto urbana por excelencia. La S2 es una opción más que óptima a la hora de buscar una alternativa de medio de transporte o trabajo.', NULL),
(95, 'Skua 150 V6', '120000.00', 7, 17, 4, 12, 0, 'skua1.jpg', '2020-11-01 23:49:22', 'La Skua 150 V6 es reconocida por ser la moto ON-OFF más eficaz del mercado, literalmente una “máquina legendaria”. Presentando un diseño deportivo con estilo único, nuevo diseño de óptica, nuevo tablero, espejos y guardabarros. Manteniendo a su vez la confiabilidad y calidad de su motor y componentes. La Skua 150 V6 resulta ser una moto muy equilibrada para el uso ON/OFF urbano.', NULL),
(96, 'Skua 250', '190000.00', 4, 17, 4, 12, 0, 'skuaxl1.jpg', '2020-11-01 23:50:42', 'Las motos de la línea Skua se desarrollaron para que explores terrenos desconocidos.\n\nÁgil, potente y confiable, la Skua 250 base resulta ser la moto nacional más eficiente en el uso ON/OFF. Con un potente motor monocilíndrico, arranque eléctrico, freno de disco delantero y trasero, tablero análogo digital y alarma hacen de la Skua 250 la moto ideal para aquellos que buscan una mayor exigencia en terrenos difíciles y en la movilidad urbana.', NULL),
(97, 'RX 150', '95000.00', 3, 17, 5, 6, 0, 'rx1.jpg', '2020-11-02 00:02:29', 'Durable y eficiente', NULL),
(98, 'ZR 150', '115000.00', 5, 17, 5, 6, 0, 'zrs1.jpg', '2020-11-02 00:04:26', 'Preparada para tus Aventuras', NULL),
(99, 'Patagonian Eagle 250', '300000.00', 3, 17, 5, 6, 0, 'peagle1.jpg', '2020-11-02 00:07:51', 'Tu Próximo kilómetro está acá', NULL),
(100, 'Smash 110', '75000.00', 4, 17, 6, 6, 0, 'smash1.jpg', '2020-11-02 00:18:45', '', NULL),
(101, 'AC4 250', '218000.00', 2, 17, 6, 6, 0, 'ac41.jpg', '2020-11-02 09:52:02', '', NULL),
(102, 'Sahel 150', '115000.00', 5, 17, 6, 6, 0, 'sahel1.jpg', '2020-11-02 09:52:04', '', NULL),
(103, 'SMX 250', '235000.00', 4, 17, 6, 6, 0, 'smx1.jpg', '2020-11-02 09:54:03', '', NULL),
(104, 'Energy 110', '70000.00', 5, 490, 7, 12, 0, 'energy1.jpg', '2020-11-02 10:26:31', 'La Energy 110 R2 es la mejor opción a la hora de elegir una motocicleta ágil y fácil de conducir, que te aporte la libertad que necesitas para tu movimiento cotidiano. Disponible también en versión con llantas de rayos y frenos a tambor.', NULL),
(105, 'Hunter 150', '95000.00', 4, 17, 7, 12, 0, 'hunter1.jpg', '2020-11-02 10:27:55', 'Con su renovado diseño, combina agilidad, rendimiento y prestaciones con una ideal economía de uso.', NULL),
(106, 'Indiana 256', '295000.00', 6, 17, 7, 12, 0, 'indiana1.jpg', '2020-11-02 10:29:26', 'Corven Indiana 256, el camino es tuyo.', NULL),
(107, 'Triax 150 r3', '150000.00', 6, 17, 7, 12, 0, 'triaxsm1.jpg', '2020-11-02 10:30:58', 'Nueva gráficas, faros delanteros y traseros de nuevo diseño, guiños de LED, sistema de luces siempre encendidas, tablero con medidor de combustible, nuevo cubre escape y portaequipaje trasero en aluminio.', NULL),
(108, 'Triax 250 R3', '170000.00', 5, 17, 7, 12, 0, 'triaxl1.jpg', '2020-11-02 10:33:49', 'Nueva gráficas, faros delanteros y traseros de nuevo diseño, guiños de LED, sistema de luces siempre encendidas, tablero con medidor de combustible, nuevo cubre escape y portaequipaje trasero en aluminio.', NULL),
(109, 'Triax TXR 250 X', '330000.00', 4, 17, 7, 12, 0, 'trx1.jpg', '2020-11-02 10:35:35', 'Una dimensión superior en calidad y prestaciones.', NULL),
(110, 'Z400', '1400000.00', 1, 17, 8, 24, 0, 'z4001.jpg', '2020-11-02 10:50:50', '', NULL),
(111, 'Ninja 400', '1800000.00', 1, 17, 8, 24, 0, 'ninja1.jpg', '2020-11-02 10:50:53', '', NULL),
(112, 'Vulcan S', '2700000.00', 1, 17, 8, 24, 0, 'vulcan1.jpg', '2020-11-02 10:50:55', '', NULL),
(113, 'R 1250 GS ADVENTURE', '4300000.00', 1, 17, 10, 36, 0, 'radventure1.jpg', '2020-11-02 10:55:33', 'TU CAMINO ES LA META.', NULL),
(114, 'G 310 R', '840000.00', 2, 17, 10, 36, 0, 'g3101.jpg', '2020-11-02 10:59:12', 'EL PLACER DE LA CONDUCCIÓN MÁS INTENSO', NULL),
(115, 'Scrambler', '3250000.00', 1, 17, 10, 36, 0, 'scrambler1.jpg', '2020-11-02 11:01:47', 'HONESTA. INDÓMITA. REFRIGERADA POR AIRE.', NULL),
(116, '180S', '305000.00', 3, 17, 11, 12, 0, '180s1.jpg', '2020-11-02 11:07:09', '', NULL),
(117, 'TNT 135', '230000.00', 3, 17, 11, 12, 0, 'tnt1351.jpg', '2020-11-02 11:08:55', 'Es deportiva, ligera y fácil de manejar, la TNT135 es la primera motocicleta con estilo Big-Bike que tú y tus amigos estaban esperando para salir y dominar la noche.\nTodo comienza con el motor de 135 c.c, 13 caballos de fuerza y doble bujías, logrando una potencia única y una larga vida del motor gracias a su enfriamiento mediante un moderno radiador de aceite. Una caja de 5 velocidades y transmisión con cadena lo que ofrece una rápida respuesta al piloto. Un sistema silencioso de doble escape, ', NULL),
(118, 'TNT 15', '160000.00', 3, 17, 11, 12, 0, 'tnt151.jpg', '2020-11-02 11:10:23', 'El mejor amigo de un nuevo conductor. El motociclismo puede ser intimidante para un nuevo piloto. Pero con la nueva TNT 15 de Benelli no hay preocupaciones, debido a que la TNT 15 ofrece la confianza de manejo, ligereza y la suave potencia que los nuevos motociclistas necesitan para tener éxito.\nTodo comienza con el motor de 149 cc refrigerado por aire de la TNT 15, que entrega potencia agradable y fácil de usar, a través de su caja de cambios de 5 velocidades. El motor es a prueba de balas, tam', NULL),
(119, 'TNT 25', '370000.00', 3, 17, 11, 12, 0, 'tnt251.jpg', '2020-11-02 11:11:36', 'De diseño sensual e inteligente, La TNT 25 es una naked de carácter deportivo que ofrece un valor increíble, además de un estilo atractivo y un rendimiento estimulante.\nLa TNT 25 está impulsada por un ligero y divertido motor monocilíndrico de cuatro tiempos de 250 cc, refrigerado por líquido, con cabeza de doble árbol de levas y 4 válvulas. Un bastidor de tubo de acero derivado de nuestras superbikes, le permite a la TNT 25 un manejo ágil. Elegantes rines y una avanzada suspensión la mantienen ', NULL),
(120, 'TR 2.0', '200000.00', 3, 17, 12, 12, 0, 'tr201.jpg', '2020-11-02 11:22:24', 'Diseño doble propósito. Cómoda, práctica y ágil para todo tipo de camino. Ideal para disfrutar del campo y la ciudad', NULL),
(121, 'Boy', '100000.00', 3, 17, 12, 12, 0, 'boy1.jpg', '2020-11-02 11:23:46', 'Boy 100. La moto pensada para sentirse siempre de vacaciones. Diseño compacto y materiales de calidad para jóvenes de todas las edades.', NULL),
(122, 'HyperMotard 939', '2600000.00', 1, 17, 13, 24, 0, 'hyperm1.jpg', '2020-11-02 11:41:02', 'Diversión sin límites. Una moto que convierte cada momento en una experiencia de conducción de regocijo total.', NULL),
(123, 'Panigale V4', '5000000.00', 1, 17, 13, 24, 0, 'panigale1.jpg', '2020-11-02 11:44:46', 'Se llama Panigale V4 y marca un nuevo e importante capítulo en la historia Ducati, una “sinfonía” de prestaciones y emociones completamente italiana. La Panigale V4 es la primera moto Ducati producida en serie que está equipada con un motor 4 cilindros, estrictamente derivado del Desmosedici de la MotoGP.', NULL),
(124, 'Diavel', '6000000.00', 1, 17, 13, 24, 0, 'diavel1.jpg', '2020-11-02 11:46:19', 'La Diavel une características de auténtica moto deportiva a un placer de conducción único, regalando una conducción realmente emocionante.', NULL),
(125, 'Trip 110', '75000.00', 4, 17, 14, 6, 0, 'trip1.jpg', '2020-11-02 11:50:11', '', NULL),
(126, 'GXL 150', '115000.00', 3, 17, 14, 6, 0, 'gxl1.jpg', '2020-11-02 11:51:15', '', NULL),
(127, '200 Duke', '320000.00', 3, 17, 15, 24, 0, '2001.jpg', '2020-11-02 12:03:35', 'Gracias a un ultracompacto motor monocilíndrico de 4 tiempos y un ligero chasis multitubular, la KTM 200 DUKE ofrece unas contundentes prestaciones. Su actualizado y agresivo diseño muestra con orgullo su ADN inspirado en la BEAST y grita bien alto que es una DUKE. No te equivoques: la KTM 200 DUKE es una guerrillera urbana.', NULL),
(128, '390 Duke', '1200000.00', 2, 17, 15, 24, 0, '3901.jpg', '2020-11-02 12:04:41', 'La KTM 390 DUKE es un puro ejemplo del porqué tanta gente se siente atraída por la emoción del motociclismo urbano. Este proyectil en curvas maximiza el placer de pilotaje con la relación calidad precio, llevándose todos los elogios cuando lo que cuenta es la agilidad. Ligera como una pluma, potente y contando con lo último en tecnología, garantiza la mejor diversión dinámica, tanto si estás luchando en la jungla urbana como dejando tu marca en un bosque de curvas.', NULL),
(129, '790 ADVENTURE R', '3600000.00', 2, 17, 15, 24, 0, '7901.jpg', '2020-11-02 12:05:58', 'Desarrollada a partir del ADN de competición offroad de KTM, la KTM 790 ADVENTURE R es una genuina moto offroad apta para viajar y equipada para enfrentarse a los terrenos más extremos. Con los aventureros más exigentes en mente, equilibra la potencia de una bicilíndrica con la ligereza y la agilidad de una monocilíndrica offroad para abrir nuevas posibilidades al pilotaje. Ofrece una impresionante autonomía de combustible sin comprometer la agilidad, disfrutando de un motor potente, compacto, s', NULL),
(130, '690 Enduro R', '2700000.00', 3, 17, 15, 24, 0, '690r1.jpg', '2020-11-02 12:08:12', 'Sal de casa con ella y siente la adrenalina mientras devoras la carretera de curvas que te lleva hasta tu terreno offroad favorito. Olvídate del remolque, solo gira el acelerador de la nueva KTM 690 ENDURO R, que se encuentra realmente a gusto cuando empieza la tierra y el camino se vuelve más extremo. Su ligera parte ciclo, su agresivo estilo y el fiable motor 690 LC4 se benefician también de una electrónica de última generación y de unas suspensiones WP XPLOR. Domina los terrenos más exigentes', NULL),
(131, 'Max 110', '75000.00', 4, 17, 17, 6, 0, 'max1.jpg', '2020-11-02 12:16:15', '', NULL),
(132, 'TD 150', '110000.00', 5, 17, 17, 6, 0, 'tds1.jpg', '2020-11-02 12:16:18', '', NULL),
(133, 'TD 250', '160000.00', 4, 17, 17, 6, 0, 'tdl1.jpg', '2020-11-02 12:16:21', '', NULL),
(134, 'HD 250', '290000.00', 3, 17, 17, 6, 0, 'hd1.jpg', '2020-11-02 12:16:23', '', NULL),
(163, 'Que esta pasando ?', '2.00', 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '', ''),
(164, 'Licuadora', '4235.00', 7, 4, 2, 12, 0, 'Hp.jpg', '0000-00-00 00:00:00', '3 elocidades', ''),
(165, 'carga2', '4.00', 12, 13, 14, 6, 1, 'Hp.jpg', '0000-00-00 00:00:00', 'Nuevo selector de categoria y marca', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(8) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(200) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`, `nombre`, `apellido`) VALUES
(1, 'goyo', 'besos', 'Gregorio', 'Diaz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios2`
--

CREATE TABLE `usuarios2` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(200) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios2`
--

INSERT INTO `usuarios2` (`id`, `usuario`, `contraseña`, `nombre`, `apellido`, `email`) VALUES
(4, 'Elena', '', 'Nico', 'Robin', 'mugiwara@imail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios2`
--
ALTER TABLE `usuarios2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios2`
--
ALTER TABLE `usuarios2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
