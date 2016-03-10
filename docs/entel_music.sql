-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2016 a las 12:58:42
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `entel_musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alternativas`
--

CREATE TABLE `alternativas` (
  `idalternativa` int(11) NOT NULL,
  `idreto` int(11) NOT NULL,
  `alternativa` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alternativas`
--

INSERT INTO `alternativas` (`idalternativa`, `idreto`, `alternativa`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(2, 1, '3', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(3, 1, '4', '1', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(4, 1, '8', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(5, 2, '1', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(6, 2, '2', '1', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(7, 2, '3', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(8, 2, '4', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(9, 3, 'Samsung Galaxy J7', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(10, 3, 'Samsung  S6 Edge+', '1', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(11, 3, 'Samsung Galaxy Ace 4 Neo', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(12, 3, 'Samsung Galaxy Win', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(13, 4, '2', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(14, 4, 'Ninguno', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(15, 4, '8', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(16, 4, '5', '1', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(17, 5, '1', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(18, 5, '3', '1', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(19, 5, '14', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(20, 5, '7', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(21, 6, 'Sympathy for the devil', '1', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(22, 6, 'Paint in Black', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(23, 6, 'Satisfaction', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(24, 6, 'Angie', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(25, 7, 'Roja', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(26, 7, 'Blanca', '1', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(27, 7, 'Azul', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00'),
(28, 7, 'Naranja', '0', '2016-01-28 10:20:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganadores`
--

CREATE TABLE `ganadores` (
  `idganador` int(11) NOT NULL,
  `idsorteo` int(11) DEFAULT NULL,
  `idparticipante` int(11) DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT NULL COMMENT 'Ganador|Suplente',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE `participante` (
  `idparticipante` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `numdocumento` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `flagcliente` char(1) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'N',
  `telefono` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `respuesta` int(11) NOT NULL COMMENT 'idalternativa',
  `ip` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`idparticipante`, `nombre`, `correo`, `numdocumento`, `flagcliente`, `telefono`, `respuesta`, `ip`, `estado`, `updated_at`, `created_at`) VALUES
(1, 'Bernard', 'magna.a@sagittisDuis.com', '1643051029899', '1', '101602558', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(2, 'Perry', 'ante.Vivamus@tristique.net', '1661021020199', '0', '642434964', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(3, 'Lani', 'dignissim@sem.co.uk', '1665121279699', '1', '003745728', 4, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(4, 'Sylvia', 'porttitor.interdum.Sed@duinec.com', '1682052566399', '1', '219845114', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(5, 'Lunea', 'iaculis@loremeget.org', '1622010455999', '1', '492364447', 2, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(6, 'Kermit', 'Lorem.ipsum@tempordiamdictum.com', '1695101131399', '1', '934776543', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(7, 'Germane', 'molestie@malesuadafames.ca', '1662050854999', '1', '212202700', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(8, 'Maia', 'dignissim.Maecenas@faucibusorciluctus.co.uk', '1647042361999', '0', '519565070', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(9, 'Hilel', 'ligula.Donec.luctus@rutrumeuultrices.edu', '1653060202399', '0', '938199216', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(10, 'Miriam', 'porttitor.interdum@volutpatornarefacilisis.edu', '1642102969899', '0', '046481156', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(11, 'Laith', 'mattis@faucibusidlibero.ca', '1634051178699', '0', '136657106', 2, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(12, 'Harrison', 'Nunc.ullamcorper.velit@tortoratrisus.com', '1658052747699', '1', '660180891', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(13, 'Emma', 'elit.pellentesque.a@Nullam.ca', '1618062783399', '0', '178155255', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(14, 'Janna', 'velit.Aliquam@enim.edu', '1686021343899', '1', '606132675', 4, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(15, 'William', 'luctus.Curabitur@enim.ca', '1640061187399', '0', '191165730', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(16, 'Kylee', 'a.feugiat.tellus@ipsumCurabiturconsequat.net', '1695051754099', '0', '963449414', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(17, 'Cally', 'Sed.molestie@ornare.ca', '1646040803499', '1', '518195739', 4, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(18, 'Idona', 'natoque@eleifend.com', '1675110417499', '1', '364413116', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(19, 'Hop', 'ante@elitAliquamauctor.org', '1610112991399', '1', '414855002', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(20, 'Melissa', 'nunc@ac.org', '1651110100099', '1', '542993280', 2, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(21, 'Kylie', 'dui.Suspendisse.ac@sodalesMauris.org', '1637020440199', '0', '274912387', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(22, 'Aaron', 'ligula.Aliquam.erat@odio.ca', '1603062118699', '1', '070767686', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(23, 'Nehru', 'Aenean.sed.pede@magna.co.uk', '1601060352499', '1', '917470448', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(24, 'Kimberly', 'nulla.magna@Phasellusin.org', '1643100588199', '0', '847971559', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(25, 'Eve', 'Cum.sociis.natoque@montesnascetur.com', '1617041300099', '0', '518083804', 4, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(26, 'Rogan', 'accumsan@temporerat.co.uk', '1642032695199', '1', '331128353', 2, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(27, 'Hayley', 'pede.Praesent@Donec.co.uk', '1683040142999', '0', '750386326', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(28, 'Pearl', 'Etiam.ligula.tortor@duisemperet.co.uk', '1656071618699', '1', '276273525', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(29, 'Deborah', 'ornare.tortor@In.ca', '1684071907399', '0', '939855743', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(30, 'Galena', 'pede.Cum.sociis@natoquepenatibuset.org', '1663112421099', '0', '970927389', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(31, 'Patricia', 'arcu.Curabitur.ut@quispedePraesent.co.uk', '1644012126099', '1', '336282026', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(32, 'Kadeem', 'feugiat@Craseutellus.co.uk', '1683102224599', '1', '782198724', 2, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(33, 'Eliana', 'lacus@viverraDonec.co.uk', '1605102366899', '1', '883814961', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(34, 'Karyn', 'varius.et.euismod@ornareliberoat.com', '1691112059999', '0', '297737294', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(35, 'Cadman', 'at.auctor.ullamcorper@Morbisitamet.ca', '1691022409899', '0', '184956912', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(36, 'Chancellor', 'non@mauris.net', '1656022717899', '0', '318516521', 2, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(37, 'Keefe', 'Sed@montesnascetur.org', '1681022864099', '1', '289826855', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(38, 'Ava', 'Integer.urna.Vivamus@Cumsociis.edu', '1626061101099', '1', '739237668', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(39, 'Ulric', 'Duis@temporest.org', '1645010416699', '1', '517902775', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(40, 'Lee', 'Suspendisse.aliquet@semconsequat.net', '1664042982399', '1', '309907306', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(41, 'Giselle', 'Nunc@urnaVivamus.com', '1632121572399', '1', '994796546', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(42, 'Anastasia', 'nec.mollis.vitae@sem.com', '1695022565499', '0', '834222473', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(43, 'Josiah', 'dignissim.magna.a@sempertellus.edu', '1629072771699', '0', '159571233', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(44, 'Sawyer', 'amet.ornare@Proin.net', '1678040368299', '1', '532879302', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(45, 'Galena', 'sed@orci.edu', '1688062953799', '1', '515946650', 2, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(46, 'Derek', 'nec@pedenonummy.edu', '1659061882499', '0', '135835166', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(47, 'Yolanda', 'Vivamus.nisi@amet.org', '1654092177699', '1', '037892267', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(48, 'Candice', 'metus@necdiam.edu', '1601071784499', '0', '283476019', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(49, 'Luke', 'accumsan.sed@variusorciin.com', '1631062326199', '0', '236177426', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(50, 'Piper', 'cursus@lectusconvallisest.ca', '1653012020799', '1', '629091587', 4, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(51, 'Patience', 'Morbi.quis@nulla.org', '1663022722699', '1', '241518984', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(52, 'Stephanie', 'urna.Vivamus@sagittis.ca', '1614060576799', '0', '103447442', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(53, 'Danielle', 'magnis.dis@anteiaculis.ca', '1657120359899', '1', '633661882', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(54, 'Pascale', 'vehicula.risus@orci.net', '1670030350599', '1', '410656055', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(55, 'Timothy', 'Nullam@in.ca', '1695122481399', '1', '570069613', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(56, 'Pamela', 'vitae@ultricesposuere.org', '1670072378899', '0', '916431648', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(57, 'Giacomo', 'Sed.molestie.Sed@cursuset.org', '1678082840099', '0', '967542184', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(58, 'Demetria', 'id@ProinmiAliquam.edu', '1646060958999', '0', '140291853', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(59, 'Amos', 'urna.suscipit.nonummy@esttempor.edu', '1660021757799', '0', '289913745', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(60, 'Hashim', 'a.neque.Nullam@PhasellusornareFusce.edu', '1601040161099', '0', '024116183', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(61, 'Dexter', 'nec.urna.suscipit@anuncIn.org', '1612032155499', '1', '905551604', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(62, 'Benedict', 'Nam.ac@Maecenasmi.org', '1679110636899', '0', '872620772', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(63, 'Vanna', 'lectus.pede.ultrices@tinciduntDonecvitae.net', '1686040579799', '1', '220591677', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(64, 'Zachary', 'dolor@consectetuereuismodest.edu', '1654120978199', '1', '032048383', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(65, 'Macey', 'luctus.et@iaculisaliquetdiam.com', '1639112380899', '1', '547608102', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(66, 'Kasimir', 'lorem.Donec.elementum@aliquamiaculislacus.ca', '1606090281099', '1', '753478757', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(67, 'Deanna', 'Maecenas.ornare@velit.org', '1679090607899', '0', '523883444', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(68, 'Nell', 'dolor@nonjustoProin.co.uk', '1609022987699', '0', '153566509', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(69, 'Brenden', 'Sed@Integerinmagna.net', '1622032218199', '1', '622026521', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(70, 'Lacy', 'purus@egestaslacinia.org', '1680060648399', '1', '196694325', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(71, 'Mechelle', 'aliquet.vel@musDonec.org', '1653100576999', '0', '843847911', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(72, 'Wylie', 'vel@at.co.uk', '1686042232199', '0', '711476814', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(73, 'Fitzgerald', 'ipsum@leo.com', '1628040374499', '1', '436193988', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(74, 'Chelsea', 'adipiscing.non.luctus@Proinmi.ca', '1693040435599', '0', '869321522', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(75, 'Simon', 'Fusce.fermentum.fermentum@velarcuCurabitur.net', '1664112982299', '0', '407218237', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(76, 'Patrick', 'arcu.et.pede@pedenec.net', '1683102585899', '0', '538478639', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(77, 'Lunea', 'adipiscing@Fuscefermentum.org', '1603111070899', '1', '758201384', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(78, 'Xantha', 'libero.dui.nec@ullamcorpermagna.edu', '1628011657199', '0', '207132217', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(79, 'Roth', 'Nunc@laciniaat.net', '1652081291399', '0', '961642199', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(80, 'Josiah', 'Cum.sociis.natoque@Duisac.ca', '1644051212899', '1', '793792091', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(81, 'Cassady', 'placerat@maurisipsum.co.uk', '1628032846599', '1', '332434355', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(82, 'Grace', 'dui.Fusce.diam@Donec.edu', '1602091113299', '0', '994854867', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(83, 'Chantale', 'at.sem.molestie@eratvolutpatNulla.net', '1678010162299', '1', '124521484', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(84, 'Farrah', 'egestas@rutrumlorem.ca', '1664122669199', '1', '037868322', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(85, 'Cain', 'habitant@neque.com', '1614061539699', '0', '964195206', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(86, 'Shelby', 'tincidunt@vel.edu', '1620110991499', '1', '632677774', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(87, 'Quinlan', 'malesuada@necurna.edu', '1638010918599', '0', '993606300', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(88, 'Christen', 'tempor@aliquetvelvulputate.org', '1672081482999', '0', '742116312', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(89, 'Nasim', 'ipsum.dolor@arcu.co.uk', '1635101757399', '1', '622757269', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(90, 'Ivor', 'Etiam.ligula.tortor@risusat.net', '1623041153799', '1', '175551994', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(91, 'Quinn', 'mauris.ipsum@risusDonec.ca', '1631091857399', '1', '830697157', 2, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(92, 'Ivy', 'consequat.lectus.sit@dictummiac.co.uk', '1666070159499', '0', '151626762', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(93, 'Sage', 'Cras.dolor.dolor@consectetuerrhoncusNullam.ca', '1656041427699', '0', '216197520', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(94, 'Jonah', 'vitae.erat@sapienNuncpulvinar.co.uk', '1676050131999', '0', '837100972', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(95, 'Kameko', 'cursus@vitaedolor.org', '1659071394999', '1', '302659564', 3, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(96, 'Dahlia', 'rutrum.lorem.ac@Mauris.net', '1670120467699', '1', '941034417', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(97, 'Ella', 'quam.quis@lectus.org', '1672122287499', '1', '875107559', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(98, 'Rowan', 'vulputate.ullamcorper.magna@nonhendreritid.net', '1668120276299', '0', '487773204', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(99, 'Cherokee', 'semper@consectetuer.org', '1666112585199', '1', '686229902', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(100, 'Herrod', 'faucibus.Morbi.vehicula@justositamet.com', '1610031504599', '1', '218462433', 1, '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-25 21:32:36'),
(104, 'Juan', 'quintanilla.peru@gmail.com', '41363363', '1', '987684468', 3, '::1', '1', '2016-01-26 21:32:36', '2016-01-25 21:32:36'),
(105, 'PEDRO', 'pedro.salas.peru@gmail.com', '12345678', '0', '987454454', 4, '::1', '1', '2016-01-26 21:38:19', '2016-01-25 21:38:19'),
(106, 'Alex', 'alex1820m@gmail.com', '1234567888', '0', '321547878', 3, '::1', '1', '2016-01-26 21:43:38', '2016-01-25 21:43:38'),
(108, 'Juan', 'quintanilla.peru@gmail.com', '41363363', '1', '987684468', 5, '::1', '1', '2016-01-26 23:06:28', '2016-01-26 23:06:28'),
(109, 'Juan', 'quintanilla.peru@gmail.com', '41363363', '1', '987684468', 5, '::1', '1', '2016-01-26 23:08:27', '2016-01-26 23:08:27'),
(110, 'Juan', 'quintanilla.peru@gmail.com', '41363363', '1', '987684468', 6, '::1', '1', '2016-01-26 23:12:05', '2016-01-26 23:12:05'),
(111, 'Juan', 'quintanilla.peru@gmail.com', '41363363', '1', '987684468', 7, '::1', '1', '2016-01-26 23:28:04', '2016-01-26 23:28:04'),
(112, 'Alex Sifuentes', 'alex1820m@gmail.com', '41258963', '0', '950323265', 6, '::1', '1', '2016-01-27 00:33:09', '2016-01-27 00:33:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retos`
--

CREATE TABLE `retos` (
  `idreto` int(11) NOT NULL,
  `reto` text COLLATE utf8_spanish2_ci,
  `fecha` date DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `retos`
--

INSERT INTO `retos` (`idreto`, `reto`, `fecha`, `estado`, `created_at`, `updated_at`) VALUES
(1, '¿Cuántos logos de los Rolling Stones aparecen en el home de <a href="http://www.entel.pe/" target="_blank">www.entel.pe</a>?', '2016-01-25', '1', '2016-01-28 10:19:47', '0000-00-00 00:00:00'),
(2, '¿En qué cuadrante del banner principal del home de <a href="http://www.entel.pe/" target="_blank">www.entel.pe</a> se encuentra Keith Richards?', '2016-01-26', '1', '2016-01-28 10:19:47', '0000-00-00 00:00:00'),
(3, 'En la sección de equipos dentro de <a href="http://www.entel.pe/" target="_blank">www.entel.pe</a> ¿En qué equipo se encuentra la guitarra rockera?', '2016-01-27', '1', '2016-01-28 10:19:47', '0000-00-00 00:00:00'),
(4, '¿Cuántas portadas de álbumes salen en el gif de los rolling stones en la <a href="https://www.facebook.com/EntelPeru" target="_blank">fan page oficial de Entel Perú</a>?', '2016-01-28', '1', '2016-01-28 10:19:47', '0000-00-00 00:00:00'),
(5, '¿Cuántos fans de los Rolling Stones aparecen en la última foto del <a href="https://www.instagram.com/entel_peru/" target="_blank">Instagram oficial de Entel Perú</a>?', '2016-01-29', '1', '2016-01-28 10:19:47', '0000-00-00 00:00:00'),
(6, '¿Cuál es el título de la canción que hemos colocado en el último tweet del <a href="https://twitter.com/EntelPeru" target="_blank">Twitter oficial de Entel Perú</a>?', '2016-01-30', '1', '2016-01-28 10:19:47', '0000-00-00 00:00:00'),
(7, '¿De qué color tiene la camisa Mick Jagger en el último video publicado de los Rolling Stones en el <a href="https://www.youtube.com/user/PeruEntel" target="_blank">canal oficial de Youtube de Entel Perú</a>?', '2016-01-31', '1', '2016-01-28 10:19:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sorteo`
--

CREATE TABLE `sorteo` (
  `idsorteo` int(11) NOT NULL,
  `fechasorteo` date DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alternativas`
--
ALTER TABLE `alternativas`
  ADD PRIMARY KEY (`idalternativa`),
  ADD KEY `idreto` (`idreto`);

--
-- Indices de la tabla `ganadores`
--
ALTER TABLE `ganadores`
  ADD PRIMARY KEY (`idganador`),
  ADD KEY `idsorteo` (`idsorteo`),
  ADD KEY `idparticipante` (`idparticipante`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`idparticipante`),
  ADD KEY `respuesta` (`respuesta`);

--
-- Indices de la tabla `retos`
--
ALTER TABLE `retos`
  ADD PRIMARY KEY (`idreto`);

--
-- Indices de la tabla `sorteo`
--
ALTER TABLE `sorteo`
  ADD PRIMARY KEY (`idsorteo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alternativas`
--
ALTER TABLE `alternativas`
  MODIFY `idalternativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT de la tabla `ganadores`
--
ALTER TABLE `ganadores`
  MODIFY `idganador` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
  MODIFY `idparticipante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT de la tabla `retos`
--
ALTER TABLE `retos`
  MODIFY `idreto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `sorteo`
--
ALTER TABLE `sorteo`
  MODIFY `idsorteo` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alternativas`
--
ALTER TABLE `alternativas`
  ADD CONSTRAINT `alternativas_ibfk_1` FOREIGN KEY (`idreto`) REFERENCES `retos` (`idreto`);

--
-- Filtros para la tabla `ganadores`
--
ALTER TABLE `ganadores`
  ADD CONSTRAINT `ganadores_ibfk_1` FOREIGN KEY (`idsorteo`) REFERENCES `sorteo` (`idsorteo`),
  ADD CONSTRAINT `ganadores_ibfk_2` FOREIGN KEY (`idparticipante`) REFERENCES `participante` (`idparticipante`);

--
-- Filtros para la tabla `participante`
--
ALTER TABLE `participante`
  ADD CONSTRAINT `participante_ibfk_1` FOREIGN KEY (`respuesta`) REFERENCES `alternativas` (`idalternativa`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
