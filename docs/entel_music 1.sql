--
-- Estructura de tabla para la tabla `alternativas`
--

CREATE TABLE IF NOT EXISTS `alternativas` (
  `idalternativa` int(11) NOT NULL,
  `alternativa` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alternativas`
--

INSERT INTO `alternativas` (`idalternativa`, `alternativa`, `estado`) VALUES
(1, '1', '1'),
(2, '3', '1'),
(3, '4', '1'),
(4, '8', '1'),
(5, '1', '1'),
(6, '2', '1'),
(7, '3', '1'),
(8, '4', '1'),
(9, 'Samsung Galaxy J7', '1'),
(10, 'Samsung  S6 Edge+', '1'),
(11, 'Samsung Galaxy Ace 4 Neo', '1'),
(12, 'Samsung Galaxy Win', '1'),
(13, 'a, aliquet', '1'),
(14, 'Donec dignissim magna', '1'),
(15, 'egestas ligula.', '1'),
(16, 'ultrices iaculis odio. Nam', '1'),
(17, 'mauris sagittis placerat. Cras', '1'),
(18, 'vitae mauris sit', '1'),
(19, 'a, scelerisque sed,', '1'),
(20, 'dui. Suspendisse ac', '1'),
(21, 'nec ligula consectetuer rhoncus.', '1'),
(22, 'Cum sociis natoque', '1'),
(23, 'habitant morbi tristique', '1'),
(24, 'sed, sapien. Nunc', '1'),
(25, 'amet ornare lectus justo', '1'),
(26, 'Morbi metus. Vivamus', '1'),
(27, 'lectus rutrum urna, nec', '1'),
(28, 'at, velit. Pellentesque ultricies', '1'),
(29, 'gravida nunc sed', '1'),
(30, 'Duis elementum,', '1'),
(31, 'Nam interdum enim', '1'),
(32, 'turpis nec mauris blandit', '1'),
(33, 'non, vestibulum', '1'),
(34, 'amet ante. Vivamus non', '1'),
(35, 'lectus, a sollicitudin orci', '1'),
(36, 'felis orci, adipiscing non,', '1'),
(37, 'urna et arcu', '1'),
(38, 'hendrerit id, ante.', '1'),
(39, 'nonummy ipsum', '1'),
(40, 'ultrices sit amet, risus.', '1'),
(41, 'lorem, sit amet', '1'),
(42, 'Curabitur sed', '1'),
(43, 'nascetur ridiculus mus.', '1'),
(44, 'faucibus id, libero. Donec', '1'),
(45, 'at lacus. Quisque', '1'),
(46, 'senectus et netus', '1'),
(47, 'Sed nunc est, mollis', '1'),
(48, 'Vestibulum ante ipsum primis', '1'),
(49, 'elit. Curabitur', '1'),
(50, 'hendrerit. Donec porttitor', '1'),
(51, 'Nulla tempor', '1'),
(52, 'dui. Cum sociis', '1'),
(53, 'diam vel arcu. Curabitur', '1'),
(54, 'Aliquam nisl.', '1'),
(55, 'nibh. Quisque nonummy ipsum', '1'),
(56, 'Vivamus molestie', '1'),
(57, 'facilisis non, bibendum sed,', '1'),
(58, 'a, auctor non,', '1'),
(59, 'Sed molestie.', '1'),
(60, 'porttitor scelerisque neque. Nullam', '1'),
(61, 'vulputate dui, nec tempus', '1'),
(62, 'Praesent luctus.', '1'),
(63, 'aliquet. Proin velit. Sed', '1'),
(64, 'erat vitae', '1'),
(65, 'Nullam feugiat', '1'),
(66, 'risus. In mi pede,', '1'),
(67, 'neque pellentesque massa', '1'),
(68, 'Phasellus libero', '1'),
(69, 'ligula tortor,', '1'),
(70, 'tristique senectus', '1'),
(71, 'ac mattis velit', '1'),
(72, 'Maecenas libero', '1'),
(73, 'mauris sit amet', '1'),
(74, 'molestie pharetra', '1'),
(75, 'Integer urna.', '1'),
(76, 'magna tellus faucibus', '1'),
(77, 'orci. Ut semper pretium', '1'),
(78, 'erat vitae', '1'),
(79, 'magna. Ut', '1'),
(80, 'magna. Praesent interdum', '1'),
(81, 'orci quis', '1'),
(82, 'a odio semper', '1'),
(83, 'fermentum arcu. Vestibulum', '1'),
(84, 'luctus vulputate, nisi sem', '1'),
(85, 'Fusce dolor quam, elementum', '1'),
(86, 'id ante dictum', '1'),
(87, 'Donec tempor,', '1'),
(88, 'ut odio vel est', '1'),
(89, 'adipiscing ligula. Aenean gravida', '1'),
(90, 'consectetuer euismod est', '1'),
(91, 'velit. Quisque varius.', '1'),
(92, 'feugiat metus sit amet', '1'),
(93, 'et malesuada fames ac', '1'),
(94, 'eget mollis lectus', '1'),
(95, 'sem magna nec quam.', '1'),
(96, 'lectus convallis est,', '1'),
(97, 'nisl. Quisque fringilla', '1'),
(98, 'nisi dictum augue', '1'),
(99, 'eu dolor egestas rhoncus.', '1'),
(100, 'ut aliquam', '1'),
(101, 'sit amet', '1'),
(102, 'Nunc quis arcu vel', '1'),
(103, 'vulputate mauris sagittis', '1'),
(104, 'ac libero nec', '1'),
(105, 'lorem lorem, luctus', '1'),
(106, 'laoreet lectus', '1'),
(107, 'sociis natoque penatibus', '1'),
(108, 'Donec sollicitudin adipiscing ligula.', '1'),
(109, 'Mauris vestibulum, neque sed', '1'),
(110, 'mauris blandit mattis. Cras', '1'),
(111, 'semper rutrum.', '1'),
(112, 'faucibus lectus, a', '1'),
(113, 'Nullam suscipit, est', '1'),
(114, 'sapien molestie', '1'),
(115, 'id sapien.', '1'),
(116, 'Duis risus', '1'),
(117, 'ut erat. Sed nunc', '1'),
(118, 'nulla vulputate', '1'),
(119, 'vehicula et,', '1'),
(120, 'malesuada vel, venenatis vel,', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alternativaxpregunta`
--

CREATE TABLE IF NOT EXISTS `alternativaxpregunta` (
  `idalternativaxpregunta` int(11) NOT NULL,
  `idpregunta` int(11) NOT NULL,
  `idalternativa` int(11) NOT NULL,
  `flagcorrecto` char(1) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alternativaxpregunta`
--

INSERT INTO `alternativaxpregunta` (`idalternativaxpregunta`, `idpregunta`, `idalternativa`, `flagcorrecto`) VALUES
(1, 1, 1, '0'),
(2, 1, 2, '0'),
(3, 1, 3, '1'),
(4, 1, 4, '0'),
(5, 2, 5, '0'),
(6, 2, 6, '1'),
(7, 2, 7, '0'),
(8, 2, 8, '0'),
(9, 3, 9, '0'),
(10, 3, 10, '1'),
(11, 3, 11, '0'),
(12, 3, 12, '0'),
(13, 4, 13, '0'),
(14, 4, 14, '0'),
(15, 4, 15, '0'),
(16, 4, 16, '0'),
(17, 5, 17, '0'),
(18, 5, 18, '0'),
(19, 5, 19, '0'),
(20, 5, 20, '0'),
(21, 6, 21, '0'),
(22, 6, 22, '0'),
(23, 6, 23, '0'),
(24, 6, 24, '0'),
(25, 7, 25, '0'),
(26, 7, 26, '0'),
(27, 7, 27, '0'),
(28, 7, 28, '0'),
(29, 8, 29, '0'),
(30, 8, 30, '0'),
(31, 8, 31, '0'),
(32, 8, 32, '0'),
(33, 9, 33, '0'),
(34, 9, 34, '0'),
(35, 9, 35, '0'),
(36, 9, 36, '0'),
(37, 10, 37, '0'),
(38, 10, 38, '0'),
(39, 10, 39, '0'),
(40, 10, 40, '0'),
(41, 11, 41, '0'),
(42, 11, 42, '0'),
(43, 11, 43, '0'),
(44, 11, 44, '0'),
(45, 12, 45, '0'),
(46, 12, 46, '0'),
(47, 12, 47, '0'),
(48, 12, 48, '0'),
(49, 13, 49, '0'),
(50, 13, 50, '0'),
(51, 13, 51, '0'),
(52, 13, 52, '0'),
(53, 14, 53, '0'),
(54, 14, 54, '0'),
(55, 14, 55, '0'),
(56, 14, 56, '0'),
(57, 15, 57, '0'),
(58, 15, 58, '0'),
(59, 15, 59, '0'),
(60, 15, 60, '0'),
(61, 16, 61, '0'),
(62, 16, 62, '0'),
(63, 16, 63, '0'),
(64, 16, 64, '0'),
(65, 17, 65, '0'),
(66, 17, 66, '0'),
(67, 17, 67, '0'),
(68, 17, 68, '0'),
(69, 18, 69, '0'),
(70, 18, 70, '0'),
(71, 18, 71, '0'),
(72, 18, 72, '0'),
(73, 19, 73, '0'),
(74, 19, 74, '0'),
(75, 19, 75, '0'),
(76, 19, 76, '0'),
(77, 20, 77, '0'),
(78, 20, 78, '0'),
(79, 20, 79, '0'),
(80, 20, 80, '0'),
(81, 21, 81, '0'),
(82, 21, 82, '0'),
(83, 21, 83, '0'),
(84, 21, 84, '0'),
(85, 22, 85, '0'),
(86, 22, 86, '0'),
(87, 22, 87, '0'),
(88, 22, 88, '0'),
(89, 23, 89, '0'),
(90, 23, 90, '0'),
(91, 23, 91, '0'),
(92, 23, 92, '0'),
(93, 24, 93, '0'),
(94, 24, 94, '0'),
(95, 24, 95, '0'),
(96, 24, 96, '0'),
(97, 25, 97, '0'),
(98, 25, 98, '0'),
(99, 25, 99, '0'),
(100, 25, 100, '0'),
(101, 26, 101, '0'),
(102, 26, 102, '0'),
(103, 26, 103, '0'),
(104, 26, 104, '0'),
(105, 27, 105, '0'),
(106, 27, 106, '0'),
(107, 27, 107, '0'),
(108, 27, 108, '0'),
(109, 28, 109, '0'),
(110, 28, 110, '0'),
(111, 28, 111, '0'),
(112, 28, 112, '0'),
(113, 29, 113, '0'),
(114, 29, 114, '0'),
(115, 29, 115, '0'),
(116, 29, 116, '0'),
(117, 30, 117, '0'),
(118, 30, 118, '0'),
(119, 30, 119, '0'),
(120, 30, 120, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganador`
--

CREATE TABLE IF NOT EXISTS `ganador` (
  `idganador` int(11) NOT NULL,
  `idsorteo` int(11) DEFAULT NULL,
  `idparticipante` int(11) DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `idopciones` int(11) NOT NULL,
  `idparticipante` int(11) DEFAULT NULL,
  `numopciones` int(11) DEFAULT '1',
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`idopciones`, `idparticipante`, `numopciones`, `estado`) VALUES
(1, 1, 3, '1'),
(2, 2, 1, '1'),
(3, 3, 3, '1'),
(4, 4, 3, '1'),
(5, 5, 3, '1'),
(6, 6, 3, '1'),
(7, 7, 3, '1'),
(8, 8, 1, '1'),
(9, 9, 1, '1'),
(10, 10, 1, '1'),
(11, 11, 1, '1'),
(12, 12, 3, '1'),
(13, 13, 1, '1'),
(14, 14, 3, '1'),
(15, 15, 1, '1'),
(16, 16, 1, '1'),
(17, 17, 3, '1'),
(18, 18, 3, '1'),
(19, 19, 3, '1'),
(20, 20, 3, '1'),
(21, 21, 1, '1'),
(22, 22, 3, '1'),
(23, 23, 3, '1'),
(24, 24, 1, '1'),
(25, 25, 1, '1'),
(26, 26, 3, '1'),
(27, 27, 1, '1'),
(28, 28, 3, '1'),
(29, 29, 1, '1'),
(30, 30, 1, '1'),
(31, 31, 3, '1'),
(32, 32, 3, '1'),
(33, 33, 3, '1'),
(34, 34, 1, '1'),
(35, 35, 1, '1'),
(36, 36, 1, '1'),
(37, 37, 3, '1'),
(38, 38, 3, '1'),
(39, 39, 3, '1'),
(40, 40, 3, '1'),
(41, 41, 3, '1'),
(42, 42, 1, '1'),
(43, 43, 1, '1'),
(44, 44, 3, '1'),
(45, 45, 3, '1'),
(46, 46, 1, '1'),
(47, 47, 3, '1'),
(48, 48, 1, '1'),
(49, 49, 1, '1'),
(50, 50, 3, '1'),
(51, 51, 3, '1'),
(52, 52, 1, '1'),
(53, 53, 3, '1'),
(54, 54, 3, '1'),
(55, 55, 3, '1'),
(56, 56, 1, '1'),
(57, 57, 1, '1'),
(58, 58, 1, '1'),
(59, 59, 1, '1'),
(60, 60, 1, '1'),
(61, 61, 3, '1'),
(62, 62, 1, '1'),
(63, 63, 3, '1'),
(64, 64, 3, '1'),
(65, 65, 3, '1'),
(66, 66, 3, '1'),
(67, 67, 1, '1'),
(68, 68, 1, '1'),
(69, 69, 3, '1'),
(70, 70, 3, '1'),
(71, 71, 1, '1'),
(72, 72, 1, '1'),
(73, 73, 3, '1'),
(74, 74, 1, '1'),
(75, 75, 1, '1'),
(76, 76, 1, '1'),
(77, 77, 3, '1'),
(78, 78, 1, '1'),
(79, 79, 1, '1'),
(80, 80, 3, '1'),
(81, 81, 3, '1'),
(82, 82, 1, '1'),
(83, 83, 3, '1'),
(84, 84, 3, '1'),
(85, 85, 1, '1'),
(86, 86, 3, '1'),
(87, 87, 1, '1'),
(88, 88, 1, '1'),
(89, 89, 3, '1'),
(90, 90, 3, '1'),
(91, 91, 3, '1'),
(92, 92, 1, '1'),
(93, 93, 1, '1'),
(94, 94, 1, '1'),
(95, 95, 3, '1'),
(96, 96, 3, '1'),
(97, 97, 3, '1'),
(98, 98, 1, '1'),
(99, 99, 3, '1'),
(100, 100, 3, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--

CREATE TABLE IF NOT EXISTS `participante` (
`idparticipante` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tipodocumento` varchar(3) COLLATE utf8_spanish2_ci NOT NULL,
  `numdocumento` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `flagcliente` char(1) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'N',
  `telefono` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `fechanacimiento` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `genero` char(1) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'M',
  `respuesta` int(11) NOT NULL,
  `flaginfo` char(1) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'N',
  `ip` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'A',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`idparticipante`, `nombre`, `correo`, `tipodocumento`, `numdocumento`, `flagcliente`, `telefono`, `fechanacimiento`, `genero`, `respuesta`, `flaginfo`, `ip`, `estado`, `updated_at`, `created_at`) VALUES
(1, 'Bernard', 'magna.a@sagittisDuis.com', 'CE', '1643051029899', '1', '101602558', '1959-07-18 03:05:37', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(2, 'Perry', 'ante.Vivamus@tristique.net', 'DNI', '1661021020199', '0', '642434964', '1971-09-19 17:53:12', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(3, 'Lani', 'dignissim@sem.co.uk', 'DNI', '1665121279699', '1', '003745728', '1963-01-26 08:16:47', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(4, 'Sylvia', 'porttitor.interdum.Sed@duinec.com', 'DNI', '1682052566399', '1', '219845114', '1990-03-02 21:15:10', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(5, 'Lunea', 'iaculis@loremeget.org', 'CE', '1622010455999', '1', '492364447', '1994-04-11 08:09:51', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(6, 'Kermit', 'Lorem.ipsum@tempordiamdictum.com', 'DNI', '1695101131399', '1', '934776543', '1964-03-05 01:13:41', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(7, 'Germane', 'molestie@malesuadafames.ca', 'CE', '1662050854999', '1', '212202700', '1952-01-07 08:03:25', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(8, 'Maia', 'dignissim.Maecenas@faucibusorciluctus.co.uk', 'CE', '1647042361999', '0', '519565070', '1961-05-29 10:21:03', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(9, 'Hilel', 'ligula.Donec.luctus@rutrumeuultrices.edu', 'DNI', '1653060202399', '0', '938199216', '1968-12-25 08:58:30', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(10, 'Miriam', 'porttitor.interdum@volutpatornarefacilisis.edu', 'DNI', '1642102969899', '0', '046481156', '1982-02-01 20:04:12', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(11, 'Laith', 'mattis@faucibusidlibero.ca', 'DNI', '1634051178699', '0', '136657106', '1958-04-13 05:58:23', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(12, 'Harrison', 'Nunc.ullamcorper.velit@tortoratrisus.com', 'DNI', '1658052747699', '1', '660180891', '1971-11-06 07:58:59', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(13, 'Emma', 'elit.pellentesque.a@Nullam.ca', 'CE', '1618062783399', '0', '178155255', '1964-08-08 18:45:43', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(14, 'Janna', 'velit.Aliquam@enim.edu', 'DNI', '1686021343899', '1', '606132675', '1956-07-22 05:46:20', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(15, 'William', 'luctus.Curabitur@enim.ca', 'DNI', '1640061187399', '0', '191165730', '1967-09-12 18:01:43', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(16, 'Kylee', 'a.feugiat.tellus@ipsumCurabiturconsequat.net', 'DNI', '1695051754099', '0', '963449414', '1951-01-25 00:27:34', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(17, 'Cally', 'Sed.molestie@ornare.ca', 'DNI', '1646040803499', '1', '518195739', '1993-05-05 01:26:50', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(18, 'Idona', 'natoque@eleifend.com', 'CE', '1675110417499', '1', '364413116', '1957-10-01 03:54:58', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(19, 'Hop', 'ante@elitAliquamauctor.org', 'DNI', '1610112991399', '1', '414855002', '1951-06-05 12:31:03', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(20, 'Melissa', 'nunc@ac.org', 'CE', '1651110100099', '1', '542993280', '1959-06-07 00:52:26', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(21, 'Kylie', 'dui.Suspendisse.ac@sodalesMauris.org', 'DNI', '1637020440199', '0', '274912387', '1974-04-06 06:59:04', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(22, 'Aaron', 'ligula.Aliquam.erat@odio.ca', 'CE', '1603062118699', '1', '070767686', '1961-09-04 15:23:30', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(23, 'Nehru', 'Aenean.sed.pede@magna.co.uk', 'DNI', '1601060352499', '1', '917470448', '1992-02-22 09:30:42', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(24, 'Kimberly', 'nulla.magna@Phasellusin.org', 'DNI', '1643100588199', '0', '847971559', '1953-08-21 12:21:22', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(25, 'Eve', 'Cum.sociis.natoque@montesnascetur.com', 'DNI', '1617041300099', '0', '518083804', '1968-04-03 19:48:13', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(26, 'Rogan', 'accumsan@temporerat.co.uk', 'DNI', '1642032695199', '1', '331128353', '1964-05-02 16:28:22', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(27, 'Hayley', 'pede.Praesent@Donec.co.uk', 'CE', '1683040142999', '0', '750386326', '1980-08-07 14:17:58', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(28, 'Pearl', 'Etiam.ligula.tortor@duisemperet.co.uk', 'CE', '1656071618699', '1', '276273525', '1958-12-10 11:46:59', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(29, 'Deborah', 'ornare.tortor@In.ca', 'CE', '1684071907399', '0', '939855743', '1991-04-29 23:21:45', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(30, 'Galena', 'pede.Cum.sociis@natoquepenatibuset.org', 'CE', '1663112421099', '0', '970927389', '1967-08-30 03:45:19', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(31, 'Patricia', 'arcu.Curabitur.ut@quispedePraesent.co.uk', 'CE', '1644012126099', '1', '336282026', '1974-12-09 14:02:27', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(32, 'Kadeem', 'feugiat@Craseutellus.co.uk', 'CE', '1683102224599', '1', '782198724', '1955-01-24 15:48:06', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(33, 'Eliana', 'lacus@viverraDonec.co.uk', 'DNI', '1605102366899', '1', '883814961', '1956-01-24 12:04:15', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(34, 'Karyn', 'varius.et.euismod@ornareliberoat.com', 'CE', '1691112059999', '0', '297737294', '1955-12-14 01:44:24', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(35, 'Cadman', 'at.auctor.ullamcorper@Morbisitamet.ca', 'CE', '1691022409899', '0', '184956912', '1959-09-21 03:47:54', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(36, 'Chancellor', 'non@mauris.net', 'DNI', '1656022717899', '0', '318516521', '1954-10-31 02:54:29', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(37, 'Keefe', 'Sed@montesnascetur.org', 'CE', '1681022864099', '1', '289826855', '1971-03-03 16:38:45', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(38, 'Ava', 'Integer.urna.Vivamus@Cumsociis.edu', 'DNI', '1626061101099', '1', '739237668', '1988-02-28 02:27:51', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(39, 'Ulric', 'Duis@temporest.org', 'CE', '1645010416699', '1', '517902775', '1966-02-18 05:54:22', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(40, 'Lee', 'Suspendisse.aliquet@semconsequat.net', 'DNI', '1664042982399', '1', '309907306', '1982-06-15 20:55:31', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(41, 'Giselle', 'Nunc@urnaVivamus.com', 'DNI', '1632121572399', '1', '994796546', '1985-09-12 09:09:40', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(42, 'Anastasia', 'nec.mollis.vitae@sem.com', 'DNI', '1695022565499', '0', '834222473', '1989-01-12 11:14:33', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(43, 'Josiah', 'dignissim.magna.a@sempertellus.edu', 'DNI', '1629072771699', '0', '159571233', '1995-05-06 14:15:56', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(44, 'Sawyer', 'amet.ornare@Proin.net', 'DNI', '1678040368299', '1', '532879302', '1975-07-05 11:16:23', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(45, 'Galena', 'sed@orci.edu', 'CE', '1688062953799', '1', '515946650', '1996-03-09 06:19:47', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(46, 'Derek', 'nec@pedenonummy.edu', 'CE', '1659061882499', '0', '135835166', '1963-09-15 17:33:07', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(47, 'Yolanda', 'Vivamus.nisi@amet.org', 'CE', '1654092177699', '1', '037892267', '1968-01-04 00:57:27', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(48, 'Candice', 'metus@necdiam.edu', 'DNI', '1601071784499', '0', '283476019', '1953-10-07 19:09:41', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(49, 'Luke', 'accumsan.sed@variusorciin.com', 'DNI', '1631062326199', '0', '236177426', '1971-08-12 18:48:39', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(50, 'Piper', 'cursus@lectusconvallisest.ca', 'CE', '1653012020799', '1', '629091587', '1981-07-20 06:22:09', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(51, 'Patience', 'Morbi.quis@nulla.org', 'CE', '1663022722699', '1', '241518984', '1981-04-19 13:56:41', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(52, 'Stephanie', 'urna.Vivamus@sagittis.ca', 'CE', '1614060576799', '0', '103447442', '1952-02-26 02:29:16', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(53, 'Danielle', 'magnis.dis@anteiaculis.ca', 'DNI', '1657120359899', '1', '633661882', '1997-11-08 06:10:40', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(54, 'Pascale', 'vehicula.risus@orci.net', 'CE', '1670030350599', '1', '410656055', '1953-03-05 14:12:55', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(55, 'Timothy', 'Nullam@in.ca', 'DNI', '1695122481399', '1', '570069613', '1950-06-05 06:15:59', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(56, 'Pamela', 'vitae@ultricesposuere.org', 'DNI', '1670072378899', '0', '916431648', '1974-08-21 01:49:23', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(57, 'Giacomo', 'Sed.molestie.Sed@cursuset.org', 'DNI', '1678082840099', '0', '967542184', '1979-03-16 13:26:48', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(58, 'Demetria', 'id@ProinmiAliquam.edu', 'DNI', '1646060958999', '0', '140291853', '1979-11-30 10:09:58', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(59, 'Amos', 'urna.suscipit.nonummy@esttempor.edu', 'CE', '1660021757799', '0', '289913745', '1952-04-02 16:57:02', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(60, 'Hashim', 'a.neque.Nullam@PhasellusornareFusce.edu', 'CE', '1601040161099', '0', '024116183', '1986-05-18 04:58:12', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(61, 'Dexter', 'nec.urna.suscipit@anuncIn.org', 'CE', '1612032155499', '1', '905551604', '1950-06-15 14:52:12', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(62, 'Benedict', 'Nam.ac@Maecenasmi.org', 'CE', '1679110636899', '0', '872620772', '1988-03-09 14:53:35', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(63, 'Vanna', 'lectus.pede.ultrices@tinciduntDonecvitae.net', 'DNI', '1686040579799', '1', '220591677', '1956-02-29 01:54:25', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(64, 'Zachary', 'dolor@consectetuereuismodest.edu', 'DNI', '1654120978199', '1', '032048383', '1950-03-31 14:35:39', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(65, 'Macey', 'luctus.et@iaculisaliquetdiam.com', 'DNI', '1639112380899', '1', '547608102', '1991-10-30 04:50:29', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(66, 'Kasimir', 'lorem.Donec.elementum@aliquamiaculislacus.ca', 'CE', '1606090281099', '1', '753478757', '1974-06-02 01:44:51', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(67, 'Deanna', 'Maecenas.ornare@velit.org', 'DNI', '1679090607899', '0', '523883444', '1990-11-14 06:34:10', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(68, 'Nell', 'dolor@nonjustoProin.co.uk', 'DNI', '1609022987699', '0', '153566509', '1980-12-10 13:44:26', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(69, 'Brenden', 'Sed@Integerinmagna.net', 'CE', '1622032218199', '1', '622026521', '1988-10-17 21:36:28', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(70, 'Lacy', 'purus@egestaslacinia.org', 'CE', '1680060648399', '1', '196694325', '1977-10-22 19:29:25', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(71, 'Mechelle', 'aliquet.vel@musDonec.org', 'DNI', '1653100576999', '0', '843847911', '1973-02-18 01:48:57', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(72, 'Wylie', 'vel@at.co.uk', 'DNI', '1686042232199', '0', '711476814', '1982-11-26 21:16:37', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(73, 'Fitzgerald', 'ipsum@leo.com', 'CE', '1628040374499', '1', '436193988', '1990-03-27 02:51:03', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(74, 'Chelsea', 'adipiscing.non.luctus@Proinmi.ca', 'DNI', '1693040435599', '0', '869321522', '1957-05-20 08:44:48', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(75, 'Simon', 'Fusce.fermentum.fermentum@velarcuCurabitur.net', 'DNI', '1664112982299', '0', '407218237', '1976-12-20 20:47:06', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(76, 'Patrick', 'arcu.et.pede@pedenec.net', 'CE', '1683102585899', '0', '538478639', '1995-05-21 13:14:45', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(77, 'Lunea', 'adipiscing@Fuscefermentum.org', 'CE', '1603111070899', '1', '758201384', '1984-07-25 16:43:25', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(78, 'Xantha', 'libero.dui.nec@ullamcorpermagna.edu', 'DNI', '1628011657199', '0', '207132217', '1987-07-01 19:55:06', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(79, 'Roth', 'Nunc@laciniaat.net', 'CE', '1652081291399', '0', '961642199', '1960-10-17 07:27:55', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(80, 'Josiah', 'Cum.sociis.natoque@Duisac.ca', 'CE', '1644051212899', '1', '793792091', '1964-05-26 21:54:40', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(81, 'Cassady', 'placerat@maurisipsum.co.uk', 'CE', '1628032846599', '1', '332434355', '1988-01-10 06:32:43', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(82, 'Grace', 'dui.Fusce.diam@Donec.edu', 'CE', '1602091113299', '0', '994854867', '1961-04-03 00:30:01', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(83, 'Chantale', 'at.sem.molestie@eratvolutpatNulla.net', 'DNI', '1678010162299', '1', '124521484', '1979-02-13 17:31:39', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(84, 'Farrah', 'egestas@rutrumlorem.ca', 'DNI', '1664122669199', '1', '037868322', '1958-09-26 04:57:24', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(85, 'Cain', 'habitant@neque.com', 'DNI', '1614061539699', '0', '964195206', '1993-05-24 06:23:51', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(86, 'Shelby', 'tincidunt@vel.edu', 'DNI', '1620110991499', '1', '632677774', '1967-12-16 08:06:15', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(87, 'Quinlan', 'malesuada@necurna.edu', 'DNI', '1638010918599', '0', '993606300', '1963-10-13 06:01:25', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(88, 'Christen', 'tempor@aliquetvelvulputate.org', 'CE', '1672081482999', '0', '742116312', '1965-06-16 17:01:40', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(89, 'Nasim', 'ipsum.dolor@arcu.co.uk', 'DNI', '1635101757399', '1', '622757269', '1988-02-27 16:22:24', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(90, 'Ivor', 'Etiam.ligula.tortor@risusat.net', 'DNI', '1623041153799', '1', '175551994', '1978-07-22 07:12:28', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(91, 'Quinn', 'mauris.ipsum@risusDonec.ca', 'DNI', '1631091857399', '1', '830697157', '1974-08-10 09:30:57', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(92, 'Ivy', 'consequat.lectus.sit@dictummiac.co.uk', 'CE', '1666070159499', '0', '151626762', '1976-06-16 03:21:38', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(93, 'Sage', 'Cras.dolor.dolor@consectetuerrhoncusNullam.ca', 'DNI', '1656041427699', '0', '216197520', '1984-11-07 21:39:52', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(94, 'Jonah', 'vitae.erat@sapienNuncpulvinar.co.uk', 'CE', '1676050131999', '0', '837100972', '1980-12-04 23:18:11', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(95, 'Kameko', 'cursus@vitaedolor.org', 'DNI', '1659071394999', '1', '302659564', '1969-07-20 20:47:34', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(96, 'Dahlia', 'rutrum.lorem.ac@Mauris.net', 'DNI', '1670120467699', '1', '941034417', '1972-06-13 10:22:56', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(97, 'Ella', 'quam.quis@lectus.org', 'DNI', '1672122287499', '1', '875107559', '1971-06-10 21:09:12', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(98, 'Rowan', 'vulputate.ullamcorper.magna@nonhendreritid.net', 'DNI', '1668120276299', '0', '487773204', '1957-05-05 18:15:14', 'M', 0, '0', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(99, 'Cherokee', 'semper@consectetuer.org', 'CE', '1666112585199', '1', '686229902', '1982-08-25 15:57:02', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(100, 'Herrod', 'faucibus.Morbi.vehicula@justositamet.com', 'CE', '1610031504599', '1', '218462433', '1963-07-04 20:21:31', 'M', 0, '1', '192.168.1.1', '1', '0000-00-00 00:00:00', '2016-01-15 17:29:27'),
(104, 'Juan', 'quintanilla.peru@gmail.com', 'dni', '41363363', '1', '987684468', '1981-03-14', 'm', 0, 'N', '::1', 'A', '2016-01-26 21:32:36', '2016-01-25 21:32:36'),
(105, 'PEDRO', 'pedro.salas.peru@gmail.com', 'ce', '12345678', '0', '987454454', '1997-12-31', 'm', 5, 'N', '::1', 'A', '2016-01-26 21:38:19', '2016-01-26 21:38:19'),
(106, 'Alex', 'alex1820m@gmail.com', 'pas', '1234567888', '0', '321547878', '1998-01-01', 'm', 5, 'N', '::1', 'A', '2016-01-26 21:43:38', '2016-01-25 21:43:38'),
(108, 'Juan', 'quintanilla.peru@gmail.com', 'dni', '41363363', '1', '987684468', '1997-07-07', 'm', 5, 'N', '::1', 'A', '2016-01-26 23:06:28', '2016-01-26 23:06:28'),
(109, 'Juan', 'quintanilla.peru@gmail.com', 'dni', '41363363', '1', '987684468', '1997-08-05', 'm', 5, 'N', '::1', 'A', '2016-01-26 23:08:27', '2016-01-26 23:08:27'),
(110, 'Juan', 'quintanilla.peru@gmail.com', 'dni', '41363363', '1', '987684468', '1997-05-01', 'm', 5, 'N', '::1', 'A', '2016-01-26 23:12:05', '2016-01-26 23:12:05'),
(111, 'Juan', 'quintanilla.peru@gmail.com', 'dni', '41363363', '1', '987684468', '1997-05-09', 'm', 5, 'N', '::1', 'A', '2016-01-26 23:28:04', '2016-01-26 23:28:04'),
(112, 'Alex Sifuentes', 'alex1820m@gmail.com', '', '41258963', '0', '950323265', NULL, 'M', 5, 'N', '::1', 'A', '2016-01-27 00:33:09', '2016-01-27 00:33:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantexsorteo`
--

CREATE TABLE IF NOT EXISTS `participantexsorteo` (
  `idparticipantexsorteo` int(11) NOT NULL,
  `idsorteo` int(11) DEFAULT NULL,
  `idalternativaxpregunta` int(11) DEFAULT NULL,
  `idparticipante` int(11) DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `participantexsorteo`
--

INSERT INTO `participantexsorteo` (`idparticipantexsorteo`, `idsorteo`, `idalternativaxpregunta`, `idparticipante`, `estado`) VALUES
(1, 1, 3, 21, '1'),
(2, 1, 2, 30, '1'),
(3, 1, 4, 72, '1'),
(4, 1, 1, 35, '1'),
(5, 1, 1, 16, '1'),
(6, 1, 4, 89, '1'),
(7, 1, 1, 91, '1'),
(8, 1, 3, 100, '1'),
(9, 1, 3, 8, '1'),
(10, 1, 1, 40, '1'),
(11, 1, 4, 3, '1'),
(12, 1, 3, 29, '1'),
(13, 1, 4, 94, '1'),
(14, 1, 3, 66, '1'),
(15, 1, 4, 64, '1'),
(16, 1, 4, 48, '1'),
(17, 1, 1, 39, '1'),
(19, 1, 1, 12, '1'),
(20, 1, 3, 61, '1'),
(21, 1, 1, 19, '1'),
(23, 1, 1, 56, '1'),
(24, 1, 1, 77, '1'),
(25, 1, 2, 26, '1'),
(26, 1, 3, 38, '1'),
(27, 1, 4, 24, '1'),
(29, 1, 4, 75, '1'),
(30, 1, 1, 2, '1'),
(31, 1, 4, 62, '1'),
(32, 1, 3, 67, '1'),
(33, 1, 3, 10, '1'),
(34, 1, 2, 90, '1'),
(35, 1, 3, 88, '1'),
(36, 1, 2, 86, '1'),
(37, 1, 4, 93, '1'),
(38, 1, 2, 84, '1'),
(40, 1, 4, 58, '1'),
(43, 1, 4, 57, '1'),
(44, 1, 4, 33, '1'),
(46, 1, 3, 80, '1'),
(47, 1, 1, 60, '1'),
(48, 1, 4, 52, '1'),
(50, 1, 3, 5, '1'),
(51, 1, 2, 85, '1'),
(52, 1, 3, 51, '1'),
(53, 1, 4, 74, '1'),
(55, 1, 1, 23, '1'),
(58, 1, 2, 28, '1'),
(59, 1, 3, 42, '1'),
(62, 1, 3, 18, '1'),
(65, 1, 4, 55, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `idpregunta` int(11) NOT NULL,
  `pregunta` text COLLATE utf8_spanish2_ci,
  `fecha` date DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idpregunta`, `pregunta`, `fecha`, `estado`) VALUES
(1, '¿Cuántos logos de los Rolling Stones aparecen en el home de <a href="http://www.entel.pe/" target="_blank">www.entel.pe</a>?', '2016-01-25', '1'),
(2, '¿En qué cuadrante del banner principal del home de <a href="http://www.entel.pe/" target="_blank">www.entel.pe</a> se encuentra Keith Richards?', '2016-01-26', '1'),
(3, 'En la sección de equipos dentro de <a href="http://www.entel.pe/" target="_blank">www.entel.pe</a> ¿En qué equipo se encuentra la guitarra rockera?', '2016-01-27', '1'),
(4, 'mollis vitae, posuere at, velit.', '2016-03-04', '1'),
(5, 'In tincidunt congue turpis.', '2016-03-05', '1'),
(6, 'iaculis aliquet diam. Sed diam', '2016-03-06', '1'),
(7, 'volutpat. Nulla dignissim. Maecenas ornare egestas', '2016-03-07', '1'),
(8, 'diam. Sed diam lorem, auctor quis,', '2016-03-08', '1'),
(9, 'tellus. Phasellus elit pede, malesuada', '2016-03-09', '1'),
(10, 'enim. Nunc ut erat.', '2016-03-10', '1'),
(11, 'ut nisi a odio', '2016-03-11', '1'),
(12, 'sollicitudin commodo ipsum. Suspendisse', '2016-03-12', '1'),
(13, 'diam. Pellentesque habitant morbi tristique senectus', '2016-03-13', '1'),
(14, 'in molestie tortor nibh', '2016-03-14', '1'),
(15, 'semper erat, in consectetuer', '2016-03-15', '1'),
(16, 'nibh dolor, nonummy ac, feugiat', '2016-03-16', '1'),
(17, 'adipiscing. Mauris molestie pharetra nibh.', '2016-03-17', '1'),
(18, 'eget metus. In nec', '2016-03-18', '1'),
(19, 'lacinia vitae, sodales at,', '2016-03-19', '1'),
(20, 'scelerisque sed, sapien. Nunc pulvinar', '2016-03-20', '1'),
(21, 'mauris sit amet lorem semper auctor.', '2016-03-21', '1'),
(22, 'feugiat placerat velit. Quisque varius. Nam', '2016-03-22', '1'),
(23, 'Aliquam erat volutpat. Nulla dignissim. Maecenas', '2016-03-23', '1'),
(24, 'enim nec tempus scelerisque, lorem', '2016-03-24', '1'),
(25, 'malesuada malesuada. Integer id magna', '2016-03-25', '1'),
(26, 'pellentesque. Sed dictum. Proin eget odio.', '2016-03-26', '1'),
(27, 'elit. Etiam laoreet, libero et', '2016-03-27', '1'),
(28, 'Nulla eget metus eu erat semper', '2016-03-28', '1'),
(29, 'cursus purus. Nullam scelerisque neque sed', '2016-03-29', '1'),
(30, 'lectus. Cum sociis natoque penatibus et', '2016-03-30', '1'),
(31, 'eget, venenatis a, magna. Lorem', '2016-03-31', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sorteo`
--

CREATE TABLE IF NOT EXISTS `sorteo` (
  `idsorteo` int(11) NOT NULL,
  `tipo` char(1) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechasorteo` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sorteo`
--

INSERT INTO `sorteo` (`idsorteo`, `tipo`, `fechasorteo`, `estado`) VALUES
(1, 'a', '2016-01-13 03:31:32', '1'),
(2, 'b', '2016-01-13 03:31:32', '0'),
(3, 'a', '2016-01-14 02:01:14', '0'),
(4, 'a', '2016-01-14 02:01:14', '0'),
(5, 'a', '2016-01-14 02:02:06', '0'),
(6, 'a', '2016-01-14 02:02:06', '0'),
(7, 'a', '2016-01-14 02:02:30', '0'),
(8, 'a', '2016-01-14 02:02:30', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alternativas`
--
ALTER TABLE `alternativas`
 ADD PRIMARY KEY (`idalternativa`);

--
-- Indices de la tabla `alternativaxpregunta`
--
ALTER TABLE `alternativaxpregunta`
 ADD PRIMARY KEY (`idalternativaxpregunta`), ADD KEY `fk_alternativaxpregunta_alternativas1_idx` (`idalternativa`), ADD KEY `fk_alternativaxpregunta_preguntas1_idx` (`idpregunta`);

--
-- Indices de la tabla `ganador`
--
ALTER TABLE `ganador`
 ADD PRIMARY KEY (`idganador`), ADD KEY `fk_GANADOR_SORTEO1_idx` (`idsorteo`), ADD KEY `fk_GANADOR_PARTICIPANTE1_idx` (`idparticipante`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
 ADD PRIMARY KEY (`idopciones`), ADD KEY `fk_OPCIONES_PARTICIPANTE_idx` (`idparticipante`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
 ADD PRIMARY KEY (`idparticipante`);

--
-- Indices de la tabla `participantexsorteo`
--
ALTER TABLE `participantexsorteo`
 ADD PRIMARY KEY (`idparticipantexsorteo`), ADD KEY `fk_PARTICIPANTEXSORTEO_SORTEO1_idx` (`idsorteo`), ADD KEY `fk_PARTICIPANTEXSORTEO_PARTICIPANTE1_idx` (`idparticipante`), ADD KEY `fk_PARTICIPANTEXSORTEO_alternativaxpregunta1_idx` (`idalternativaxpregunta`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
 ADD PRIMARY KEY (`idpregunta`);

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
MODIFY `idalternativa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT de la tabla `alternativaxpregunta`
--
ALTER TABLE `alternativaxpregunta`
MODIFY `idalternativaxpregunta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT de la tabla `ganador`
--
ALTER TABLE `ganador`
MODIFY `idganador` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
MODIFY `idopciones` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `participante`
--
ALTER TABLE `participante`
MODIFY `idparticipante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT de la tabla `participantexsorteo`
--
ALTER TABLE `participantexsorteo`
MODIFY `idparticipantexsorteo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `sorteo`
--
ALTER TABLE `sorteo`
MODIFY `idsorteo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alternativaxpregunta`
--
ALTER TABLE `alternativaxpregunta`
ADD CONSTRAINT `fk_alternativaxpregunta_alternativas1` FOREIGN KEY (`idalternativa`) REFERENCES `alternativas` (`idalternativa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_alternativaxpregunta_preguntas1` FOREIGN KEY (`idpregunta`) REFERENCES `preguntas` (`idpregunta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ganador`
--
ALTER TABLE `ganador`
ADD CONSTRAINT `fk_GANADOR_PARTICIPANTE1` FOREIGN KEY (`idparticipante`) REFERENCES `participante` (`idparticipante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_GANADOR_SORTEO1` FOREIGN KEY (`idsorteo`) REFERENCES `sorteo` (`idsorteo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
ADD CONSTRAINT `fk_OPCIONES_PARTICIPANTE` FOREIGN KEY (`idparticipante`) REFERENCES `participante` (`idparticipante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `participantexsorteo`
--
ALTER TABLE `participantexsorteo`
ADD CONSTRAINT `fk_PARTICIPANTEXSORTEO_PARTICIPANTE1` FOREIGN KEY (`idparticipante`) REFERENCES `participante` (`idparticipante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_PARTICIPANTEXSORTEO_SORTEO1` FOREIGN KEY (`idsorteo`) REFERENCES `sorteo` (`idsorteo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_PARTICIPANTEXSORTEO_alternativaxpregunta1` FOREIGN KEY (`idalternativaxpregunta`) REFERENCES `alternativaxpregunta` (`idalternativaxpregunta`) ON DELETE NO ACTION ON UPDATE NO ACTION;
