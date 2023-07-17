-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-07-2023 a las 15:17:21
-- Versión del servidor: 5.7.42
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wwwolima_olimarteam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `web` varchar(100) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `contacto` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `fecha`, `web`, `descripcion`, `contacto`) VALUES
(2, 'Olimpo FreshMarket', '2014-12-20', 'https://www.facebook.com/profile.php?id=100008829994788&ref=ts&fref=ts', 'Autoservice', 'Lorenzo Silveira'),
(3, 'Sisler S.A.', '2015-01-26', 'http://www.sisler.com.uy/', 'Venta y alquiler de maquinaria para la construccion', 'Raul Gonzalez'),
(4, 'Reduts S.A.', '2015-01-26', 'http://www.reduts.com.uy', 'Venta de entradas', 'Andres Szafran'),
(5, 'Punta Frozen', '2015-10-08', 'https://www.facebook.com/puntafrozen?fref=ts', 'Aires acondicionados', 'Marcelo Cardozo'),
(6, 'Sepae Ltda.', '2015-11-02', 'http://www.sepae.com.uy', 'Servicios de acompañantes y equipamiento medico', 'Maria Silvera'),
(7, 'Led Advertising', '2015-10-01', 'https://www.facebook.com/DC4PUBLICIDAD?fref=ts', 'Publicidad y Marketing', 'Danilo Da Costa'),
(8, 'Cecilia Morales, Psicologa', '2015-12-01', 'http://www.psicologomontevideo.com', 'Psicologa', 'Cecilia Morales'),
(9, 'Advertising Led', '2015-10-01', 'https://www.facebook.com/Advertising-led-eventos-446374698876068/?fref=ts', 'Publicidad y Marketing', 'Martin Varela'),
(10, 'Comfort\'s Way', '2016-09-08', 'http://www.comfortsway.com', 'Importaciones', 'Danilo Da Costa'),
(12, 'Fernando Avila, Arquitecto', '2017-01-08', '#', 'Arquitecto', 'Fernando Avila'),
(13, 'Guillermo Fregueiro, Contador', '2017-03-01', '#', 'Estudio Contable', 'Guillermo Fregueiro'),
(1, '0', '2015-04-01', '#', '-', '-'),
(16, 'Yerbalito', '2017-03-01', 'https://es-la.facebook.com/Club-Yerbalito-Baby-Futbol-168478420651397/', 'Club Yerbalito Baby de Fútbol', 'Guillermo Fregueiro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id_contacto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id_contacto`, `nombre`, `email`, `comentario`, `ciudad`, `pais`, `ip`) VALUES
(1, 'pepe argento', 'pepe@telefe.com.ar', 'cafecito pepe', '', '', ''),
(2, 'jose', 'maso@asdjsal.com', 'jjdsadklsajdkla', '', '', ''),
(3, 'jose', 'maso@asdjsal.com', 'jjdsadklsajdkla', '', '', ''),
(4, 'josecito', 'papa@jsjasjk.com', 'dksjadlkjaskdjsa', '', '', ''),
(5, 'prueba1', 'prueba@gmail.com', 'hola prueba 1', '', '', ''),
(6, 'prueba 2', 'prueba2@gmail.com', 'hola prueba 2', '', '', ''),
(7, 'prueba 4', 'prueba4@gmail.com', 'hola prueba 4', '', '', ''),
(8, 'prueba5', 'prueba5@gmail.com', 'hola prueba5', '', '', ''),
(9, 'prueba6', 'prueba6@â˜ºgmail.com', 'hola prueba6', '', '', ''),
(10, 'prueba7', 'prueba7@gmail.com', 'hola prueba 7', '', '', ''),
(11, 'prueba8', 'prueba8@gmail.com', 'hola prueba 8', '', '', ''),
(12, 'prueba 9', 'prueba9@gmail.com', 'hola prueba 9', '', '', ''),
(13, 'prueba 9', 'prueba9@gmail.com', 'hola prueba 9', '', '', ''),
(14, 'prueba 9', 'prueba9@gmail.com', 'hola prueba 9', '', '', ''),
(15, 'prueba 9', 'prueba9@gmail.com', 'hola prueba 9', '', '', ''),
(16, 'prueba 9b', 'prueba2@gmail.com', 'hola prueba 9b', '', '', ''),
(17, 'prueba 9c', 'prueba2@gmail.com', 'hola prueba 9c', '', '', ''),
(18, 'prueba 9d', 'prueba2@gmail.com', 'hola prueba 9d', '', '', ''),
(19, 'prueba 9d', 'prueba2@gmail.com', 'hola prueba 9d', '', '', ''),
(20, 'prueba 9d', 'prueba2@gmail.com', 'hola prueba 9d', '', '', ''),
(21, 'prueba 11', 'prueba11@gmail.com', 'hola prueba 11', '', '', ''),
(22, 'michael rodriguez', 'mic_4356@hotmail.com', 'hola BD', '', '', ''),
(23, 'michael rodriguez', 'm33agra@hotmail.com', 'a ver si aparezco en la BD', '', '', ''),
(24, 'michael rodriguez', 'mic_4356@hotmail.com', 'Hola BD, estamos cada vez mejor.\r\n\r\nsaludos', 'treinta y tres', 'Uruguay', ''),
(25, 'michael rodriguez', 'mic_4356@hotmail.com', 'hola a la BD y a ver si te llega a la cuenta de email.\r\n\r\nsaludos', 'treinta y tres', 'Uruguay', ''),
(26, 'michael rodriguez', 'mic_4356@hotmail.com', 'a ver ahora si llego al email', 'treinta y tres', 'Uruguay', ''),
(27, 'Nombre', 'mic_4356@hotmail.com', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(28, 'Nombre', 'mic_4356@hotmail.com', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(29, 'Nombre', 'mic_4356@hotmail.com', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(30, 'Nombre', 'mic_4356@hotmail.com', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(31, 'Nombre', 'dsad@gids,cin', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(32, 'Nombre', 'saSA', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(33, 'Nombre', 'DSDSA', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(34, 'Nombre', 'DSADASDAS', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(35, 'Nombre', 'trtretrere', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(36, 'ewewq', 'ewqewq', 'ewqewq', 'ewqewq', 'PaÃ­sewqewq', ''),
(37, 'rewrew', 'rewrew', 'rewr', 'rewrwe', 'PaÃ­srewrew', ''),
(38, 'rafael', 'mic_32435@hdosao.com', 'holasdasds adlaksd saldj as\r\ndskdjsakljl', 'dsadajs', 'dsdasda', ''),
(39, 'pepe', 'gidas@hdksjahdk.con', 'jhdskajdha shdas\r\ndsadjsad haskjdasdas', 'dsajhdka', 'hjdkshahdkja', ''),
(40, 'fsdfsad', 'dsadasd', 'dsadasdas', 'dsadsa', 'PaÃ­sdsadas', ''),
(41, 'fgdfg', 'mic_4356@hotmail.com', 'ewqeqwewqesadasdas', 'ewqeq', 'eqweqwewq', ''),
(42, 'raul', 'mic_4356@hotmail.com', 'hola llega mi email a tu cuenta?', 'melo', 'Uruguay', ''),
(43, 'ytryt', 'ytryrt', 'yrtytr', 'ytyrt', 'PaÃ­sytryrty', ''),
(44, 'yrtytr', 'ytrytry', 'eqwe12321edfr3224432423', 'yrtyrt', 'PaÃ­srwerewrewrew', ''),
(45, 'pablo', 'mic_4356@hotmail.com', 'era pa saludar nomas..', 'melo', 'argentina', ''),
(46, 'laura', 'mic_4356@hotmail.com', 'era pa ver si te llegan mis email cabeza', 'melo', 'argentina', ''),
(47, 'pablo', 'mic_4356@hotmail.com', 'alo garoto', 'melo', 'brasil', ''),
(48, 'dsdsa', 'dsadas', 'pa loco', 'dasdas', 'PaÃ­sdasdas', ''),
(49, 'raul', 'baul@rauil.com', 'vacio', 'melo', 'brasio', ''),
(50, 'nombre1', 'email1', 'mensaje1', 'city1', 'pais1', ''),
(51, 'michael', 'mic_4356@hotmail.com', 'mensaje2', 'melo', 'brasil', ''),
(52, 'Nombre', 'dsadsadsa', 'En que te podemos ayudar?', 'Ciudad', 'PaÃ­s', ''),
(53, 'paco', 'paco@paco.com', 'hola micha', 'melo', 'brasil', ''),
(54, 'romualdo', 'mic_4356@hotmail.com', 'hola brasiu ?', 'melo', 'brasil', ''),
(55, 'pedro', 'mic_454d6as', 'jkh321312312321321321', 'dsahdshj', 'hjkdasdhjk', ''),
(56, 'michael rodriguez', 'mic_4356@hotmail.com', 'fgdgdgfd', 'treinta y tres', 'Uruguay', ''),
(57, 'michael', 'mica-ds-adasd', '3333', 'treinta y tres', 'Uruguay', ''),
(58, 'ppepito', 'dsada', '222222222222', 'dsadas', 'dsadas', ''),
(59, 'manuel gabriel', 'mic_4356@hdshdkasjh', 'mensaje66', 'melo', 'brasil', ''),
(60, 'enrique', 'mic_4356@hotmail.com', 'era pa saludar noma che', 'melo', 'brasil', ''),
(61, 'carlos', 'mic_4356', 'hola5', '33', 'brasil', ''),
(62, 'paulo', 'mic_4356@hotmail.com', 'hola che, llega o no?', 'melo', 'brasil', ''),
(63, 'roque', 'mic_4356', 'En que te podemos ayudar?', 'melo', 'brasil', ''),
(64, 'nicolas', 'dsad', 'dsadasd\r\n\r\n', 'dsada', 'dsadas', ''),
(65, 'enrique', 'mic_4356@hotmail.com', 'hola2121', 'melo', 'yoguslavia', ''),
(66, 'pablo', 'mic_4356@hotmail.com', 'hola232323233', 'melo', 'brasil', ''),
(67, 'ricardo', 'msdakdjask', 'kjw', 'kjdskajdk', 'kdsjakdjas', ''),
(68, 'romualdo', 'midsajdia', 'hji', 'dmasidia', 'djiasjdai', ''),
(69, 'ricardito', 'djsadsa', 'dasdasdas', 'dsadas', 'dsadas', ''),
(70, 'pablo perez', 'mic_4356@hotmail.com', 'Hola mijito', 'melo', 'Colombia', ''),
(71, 'Pedro mendez', 'dsjakd@hotmail.com', 'era pa saludar nomas', 'guayaquil', 'Colombia', ''),
(72, 'Francisco', 'm32@hojlaalkjc.com', 'hdoasihdasohdaslkdjhas', 'paris', 'francia', ''),
(73, 'pedro picapiedra', 'mic@dhjskaldhaslkdh', 'wh', 'dhjsalkdhja', 'hlkjdsadkl', ''),
(74, 'luciano', 'mic_d45sa6d4as', 'kljdsalkjdlkas', 'jdsjadlk', 'jkdlsajdklasjd', ''),
(75, 'Lorenzo', 'mic_4356@hotmail.com', 'hola bob..o', 'melo', 'Jamaica', ''),
(76, 'marcelo', 'dsda', 'dsadasas', 'dsadsa', 'dsadas', ''),
(77, 'enrique', 'm33agra@hotmail.com', 'en serio toy en guatepeor', 'melo', 'guatemala', ''),
(78, '5915e41dc323a', 'edwardvillarrubia@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(79, '5915fd55979df', 'tabisue20@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(80, '591719be5f926', 'carriejanebrewer@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(81, '5917b43e10d11', 'mibeshar@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(82, '59181801bbc60', 'joeanto@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(83, '5918302a690de', 'pmessner@optonline.net', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(84, '59183e092ba21', 'hoodem@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(85, '5918499041778', 'spiritofeckstasy@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(86, '59185404f18fa', 'carriejanebrewer@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(87, '591874eedaf9a', 'jallen@allensaustralia.com.au', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(88, '5918d95b28b17', 'joanne@hubtrucker.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(89, 'pedro', 'mic_4356@hotmail.com', 'nose che, que menu tienen?', '33', 'venezuela', ''),
(90, 'jacinto', 'mic.@djsalkdjas', 'nose che, que menu tienen pa la noche?', '33', 'venezuela', ''),
(91, 'gregorio', 'mic@gmial.com', 'nose che, que menu tienen pa la noche23232?', '33', 'venezuela', ''),
(92, '59195a8d7978b', 'staceywhite20022002@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(93, '5919b0e6d4cf4', 'imagestudio@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(94, '591a08503c6e5', 'bobdav3@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(95, '591a0964561fa', 'margaret.mcconn@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(96, '591a0a6ea98d0', 'brittany.cannata@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(97, '591a0c71854c6', 'tperaza@porternovelli.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(98, '591a1c3bab594', 'kikikountze@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(99, '591a1d1686186', 'kearsley.kristin@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(100, '591a2593b27fb', 'georg@altrock.de', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(101, 'rafael el cantante', 'mic_4356@hotmail.com', 'era pa ver que onda guey', 'minas', 'argentina', ''),
(102, '591a61a864f60', 'vineetkumargupta02@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(103, '591ad801c3df3', 'bluedevilrx@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(104, '591af6ae473a5', 'matthewkbrian@aim.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(105, '591af7b887d03', 'matt_ambos@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(106, '591b08607e40b', 'griffinstark@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(107, '591b3de613cc1', 'carv0008@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(108, '591b55d0da0a6', 'palazzointeriordesign@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(109, '591b5652c6804', 'kathrin-harr@t-online.de', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(110, '591b6da97b987', 'ibisbayevents@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(111, '591bb69360abc', 'ska800@live.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(112, 'micha', 'mic_4356@hotmail.com', 'te voy a agarrar sabandija', 'melo', 'brasil', ''),
(113, 'jacinto', 'mic-456s4adwewe', 'te agarro', 'melo', 'brasil', ''),
(114, '591c0a296a674', 'tristan.castle15@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(115, '591c194d355c0', 'tristan.castle15@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(116, '591c1e9f8307a', 'tamarooch@gmail.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(117, '591c657fe5f42', 'db1760@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(118, 'Nombre', 'mic-a-sl.kdasÃ±lkdsaÃ±pdk', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(119, '591ca5c2a8352', 'camst87@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(120, '591cee3d3c553', 'chinobd@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(121, '432432', 'dsadas@djsakld', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(122, '32131', 'ffrtew4234', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(123, '321312', 'adsa@', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(124, '543534543', 'dsad@dsadas', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(125, '432423', 'eqweqw@dfgdf', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(126, '432432', 'rewrwe', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(127, '591e00df14e3b', 'rebirthrenewal@yahoo.com', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(128, 'Nombre', 'dsad@dsadas', 'dsadasdas', 'dsad', 'dsadas', ''),
(129, ' ', 'dasdasdas', 'En que te podemos ayudar?', 'hgf', 'Pais', ''),
(130, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(131, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(132, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(133, 'ddsadas', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(134, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(135, 'dsadsa', 'dsa', 's', NULL, NULL, ''),
(136, 'Nombre', 'a', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(137, 'dsadasdsa', 'dsadsa', 'dasdsadsa', NULL, NULL, ''),
(138, 'hgf', 'hfg', 'gfdgdf', 'Ciudad', 'Pais', ''),
(139, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(140, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(141, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(142, 'gf', 'gf', 'En que te podemos ayudar?', NULL, 'Pais', ''),
(143, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(144, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', NULL, ''),
(145, 'Jose Manuel', 'pepe@hdjskadl.com', 'aaestradas, daskdjaslsads', 'argelia', 'africa', ''),
(146, 'Jose Manuel', 'klkl', 'aaestradas, daskdjaslsads', 'argelia', 'africa', ''),
(147, 'Jose Manuel', 'klkl', 'En que te podemos ayudar?', 'argelia', NULL, ''),
(148, 'quique', 'd', 'En que te podemos ayudar?', NULL, NULL, ''),
(149, 'quique', 'd', 'En que te podemos ayudar?', NULL, NULL, ''),
(150, 'quique', 'dÂ´Â´{', 'En que te podemos ayudar?', NULL, NULL, ''),
(151, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(152, 'k', '-', 'En que te podemos ayudar?', NULL, 'Pais', ''),
(153, 'tretre', '}', 'En que te podemos ayudar?', NULL, 'Pais', ''),
(154, 'Nombre', 'Email', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(155, 'd', '.', 'En que te podemos ayudar?', 'Ciudad', 'Pais', ''),
(156, 'susana', 'm33agra@hotmail.com', 'En que te podemos ayudar?', 'melo', 'chile', ''),
(157, 'dsadas', 'dsadsa@sadas.com', 'era pa saber como andaban nomas', 'melo', 'brasil', ''),
(158, 'dsadsa', 'dsadsa@sadas.com', 'En que te podemos ayudar?', 'argelia', 'chile', ''),
(159, 'dsadsa', 'dsadsa@sadas.com', 'En que te podemos ayudar?', 'argelia', 'chile', ''),
(160, 'dsadsa', 'dsadsa@sadas.com', 'En que te podemos ayudar?', 'argelia', 'chile', ''),
(161, 'dsadasd', 'dsadsa@sadas.com', '432423dsadas', 'das', 'das', ''),
(162, 'eqwewq', 'ewqe@odjdiaso.com', '1212122121', 'dasda', 'dsdlkjasklj', ''),
(163, 'Gregorio Sanabria', 'micha@hotmail.com', 'era pa joder nomas ajjajajaj ;)', 'melo', 'Nicaragua', ''),
(164, 'Ezequiel', 'micha@hotmail.com', 'pa nada che', 'acegua', 'Uruguay', ''),
(165, 'Ezequiel', 'micha@hotmail.com', 'pa nada che', 'acegua', 'Uruguay', ''),
(166, 'gASTON', 'micha@hotmail.com', 'En que te podemos ayudar?', 'MELO', 'ARGENTINA', ''),
(167, 'michael rodriguez', 'mic_4356@hotmail.com', 'Era pa saber de ustedes nomas', 'treinta y tres', 'Uruguay', ''),
(168, 'pablo mieres', 'gol@gmial.com', 'jdsajdklsajdlska', 'melo', 'brasil', '192.168.1.1'),
(169, 'lautaro', 'micha@hotmail.com', 'dsadasasdsa', 'acegua', 'ARGENTINA', '192.168.1.1'),
(170, 'raul', 'micha@hotmail.com', 'jdskljaskdljsa', 'rocha', 'brasil', '192.168.1.1'),
(171, 'enrique suarez', 'micha@hotmail.com', 'dsadasas', 'melo', 'ARGENTINA', '192.168.1.1'),
(172, 'pedro', 'micha@hotmail.com', 'dsadasdasd', 'dasda', 'dsdlkjasklj', '192.168.1.1'),
(173, 'dsadas', 'micha@hotmail.com', 'dsadsa', 'dsad', 'dsad', '192.168.1.1'),
(174, 'fdsfsd', 'micha@hotmail.com', 'fdsfsd', 'argelia', 'ARGENTINA', '192.168.1.1'),
(175, 'd194116', 'micha@hotmail.com', 'dsadsa', 'melo', 'Uruguay', '192.168.1.1'),
(176, 'lautaro', 'gol@gmial.com', 'jhgjhghjg', 'melo', 'dskjhsdakjh', '192.168.1.1'),
(177, 'michael rodriguez', 'm33agra@hotmail.com', 'Quiero saber quÃ© IP me guardÃ³, gracias bo', 'treinta y tres', 'Uruguay', '186.51.135.58'),
(178, 'Jamemaw', 'jameOneria@22meds.com', 'Tadalis Sx Soft Online Kaufen Viagra Canada Price Viagra Avec Paypal  <a href=http://costofcial.com>online pharmacy</a> Finasteride Izotek Baltimore Progesterone Germany Price Overseas ', 'Sishen', 'South Africa', '146.185.223.245'),
(179, 'Pedro Escovar', 'mic_4356@hotmail.com', 'Un saludo cordial querido....', 'Montevideo', 'Uruguay', '192.168.1.1'),
(180, 'Enrique SuÃ¡rez', 'mic_4356@hotmail.com', 'Pase por aquÃ­, y aprovecho pa saludarte cabezÃ³n.', 'Montevideo', 'Uruguay', '186.51.141.248'),
(181, 'Thomaslit', 'kazuyogurley5412q4m40@yahoo.com', 'Living in France is one thing desired by many individuals. If you want to live in France then you have to get French property. You can read the advertisement section of the newspapers which has the section of houses for sale in France. After making a suitable choice, you should research about the properties for sale in France. French property is now a days very much wanted also. \\r\\n \\r\\nIf you want to live in France and spend your life there you should select a proper house. French property is ', 'Tirgu Mures', 'Romania', '146.185.223.25'),
(182, 'Jamemaw', 'jameOneria@22meds.com', 'Viagra Kaufen Illegal Cialis Ricetta Ripetibile Propecia Halbieren  <a href=http://costofcial.com>generic cialis</a> Viagra Mercado Libre ', 'Sishen', 'South Africa', '146.185.223.245'),
(183, 'JamisonVew', 'johnkelly51kzp5cr@yahoo.com', 'Shops that require protection for high risk goods held on the premises will usually need to declare the total values of each stock item. High risk shop stock and goods are those that attract thieves and are expensive to replace. Examples of high risk stock items are electronic equipment, cigarettes, and tobacco, designer clothing, computers and digital equipment, software, computer games and consoles, drugs pharmacy and medicines, watches and jewellery, mobile phones and radios, photographic equ', 'Bottegone', 'Italy', '46.161.9.3'),
(184, 'NETGODOMAIN', 'noreply@netgodomain.org', 'Disclaimer: We are not responsible for any financial loss, data loss, downgrade in search engine rankings, missed customers, undeliverable email or any other damages that you may suffer upon the expiration of olimarteam.com. For more information please refer to section 17.c.1a of our User Agreement. \\n\\n This is your final notice to renew olimarteam.com: \\n\\n https://netgodomain.org/?n=olimarteam.com&r=c \\n\\n In the event that olimarteam.com expires, we reserve the right to offer your listing to', 'Miami Beach', 'United States', '103.208.246.230'),
(185, 'ENETDOMAIN', 'noreply@enetdomain.com', 'Disclaimer: We are not responsible for any financial loss, data loss, downgrade in search engine rankings, missed customers, undeliverable email or any other damages that you may suffer upon the expiration of olimarteam.com. For more information please refer to section 17.c.1a of our User Agreement. \\n\\n This is your final notice to renew olimarteam.com: \\n\\n https://enetdomain.com?n=olimarteam.com&r=c \\n\\n In the event that olimarteam.com expires, we reserve the right to offer your listing to c', 'Miami Beach', 'United States', '103.208.246.234'),
(186, 'michael rodriguez', 'm33agra@hotmail.com', 'toy probando che a ver si sale algo por aca o no', 'treinta y tres', 'Uruguay', '192.168.1.1'),
(187, 'Liacype', 'liaThousy@fast-medrx.com', 'Wirkung Viagra Manner Allergic Itching Due To Amoxicillin Prix Du Levitra 10 Minimum Garanti  <a href=http://tadalaffbuy.com>buy cialis</a> Where Can I Buy Generic Cialis Online Donde Puedo Comprar Viagra Sin Receta Propecia Farligt For Kvinnor  ', 'Sari', 'Iran', '146.185.223.150'),
(188, 'pedro', 'm33agra@hotmail.com', 'Es pa joder nomas', 'melo', 'brasiu', '167.60.16.11'),
(189, 'ColRaft', 'colAcib@maill.party', 'Viagra Vegetale It Viagra Cialis Levitra Comparison Comprar Cialis En Espana  <a href=http://ciali5mg.com>generic 5mg cialis best price</a> Easy Buy Viagra  ', 'Banepa', 'Nepal', '146.185.223.202'),
(190, 'Ezequiel', 'm33agra@hotmail.com', 'Un saludo cordial', 'Melo', 'Uruguay', '186.51.210.43'),
(191, 'junzo', 'victoria.michler@hotmail.com', 'Good man! That is an important present offer for you.  Are you in?  http://bit.ly/2yuXNoe', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '37.120.158.171'),
(192, 'Stephenrof', 'mail@scmref.se', '  What we result in here is , courteousability \\r\\n Sound click \\r\\n \\r\\n \\r\\nhttp://bit.ly/2Px2MdM', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '194.99.104.204'),
(193, 'mcgehee', 'victor_89_25@hotmail.com', 'Ciao! Here is  a best - A pleasant surprise of $/â‚¬ 1600 welcome bonus.  To qualify click on the link below. http://bit.ly/2J7ch1X', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '92.223.88.245'),
(194, 'StevenIrony', 'info@aromateknik.se', '  Look what we closed conducive to you! an bestbent \\r\\n To equipped click on the connector unequal of  \\r\\n \\r\\n \\r\\nhttp://bit.ly/2Ps4xsQ', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '85.206.165.5'),
(195, 'Thomashop', 'sent.to.lu@gmail.com', ' Hi What we be long-lasting here is , an well-connecteddole \\r\\n Judicial click \\r\\n \\r\\n \\r\\nhttp://bit.ly/2rLIfsx', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.245.85.235'),
(196, 'MichaelTus', 'lewesfarmersmarket@gmail.com', ' Hy there,  Look what we secure someone is concerned you! an attractiveoblation \\r\\n Frank click on the connection under the tan to characteristic  \\r\\n \\r\\n \\r\\nhttp://bit.ly/2rKGf3M', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.245.85.229'),
(197, 'WilliamduM', 'fcardow@gmail.com', ' Hey What we get a hold of here is , melodicdole \\r\\n Are you in?  \\r\\n \\r\\n \\r\\nhttp://bit.ly/2QKRubk', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.230.124.165'),
(198, 'Ludlow', '19drago78@address.com', 'Ciao! Look at a good news offers for you.  Are you in?  http://bit.ly/2J7jqzg', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.206.225.233'),
(199, 'Rickeyovall', 'artsmartiauxrhenans@gmail.com', ' Hey Look what we adopt with a estimate you! a okayoffers \\r\\n Honourable click on the bridle subsumed under to eager  \\r\\n \\r\\n \\r\\nhttps://drive.google.com/file/d/11uijEFbdfgvRrcNChyK35hytYc_t6sUU/preview', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '95.174.64.72'),
(200, 'Scottwrice', 'allurecheerbows@gmail.com', ' Hy there,  Look what we have for you! an importantoffering \\r\\n Are you in?  \\r\\n \\r\\nhttps://drive.google.com/file/d/1GMbvuemWAQrdm0EkaQpFafCxCbQe9Nc9/preview', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.245.85.232'),
(201, 'DudleySwign', 'bnn.eventinfo@gmail.com', ' Hey Look what we have for you! niceoffering \\r\\n Just click \\r\\n \\r\\nhttps://drive.google.com/file/d/1ITwN4b99F5vRGhzFTe8I6bd3JX1Rha9-/preview', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '95.174.64.90'),
(202, 'DonaldFlomb', 'alwyn.craven@gmail.com', '??I LOVE HOT GUYS WITH A HUGE DICK! ??  http://bit.ly/2SPabYt', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.245.85.231'),
(203, 'JamesSoync', 'equilibriumstamford@gmail.com', ' Hy there,  a pleasantpresent \\r\\n To condition click on the link lower than beneath    http://servicerubin.ru', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '92.223.88.240'),
(204, 'ShowCit', 'darthvader.veider@yandex.com', 'In year 2019 there are lot of films are going to be released. Obviously, there are Avengers part 2, new Star Wars Episode IX and many others. These are movies that every person wants to see, but sometimes you can miss it.That\\\'s where apps come in handy you can watch a movies for free. Btw, looking for the best app to watch free movies on your iOS phone? Then your should check Showbox app. This is the most famous application today that has a big library of tv shows and movies. This app is also a', 'New york', 'USA', '31.184.238.190'),
(205, 'Decemberly', '1994andres@live.com.mx', 'Ciao! That is an important offers - Fantastic bonus offers that will double or even triple your deposits if you register casino account in the next 24 hours.  Just click on the link below to qualify. http://bit.ly/2Je2siR', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '178.175.132.165'),
(206, 'Stevenpal', 'aseldarova@gmail.com', '  What we acquire here is , a magnificentdonation \\r\\n Just now click on the constituent below to modify    http://bit.ly/2S6rUgT', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.245.85.232'),
(207, 'Robertflout', 'marymirandacavanagh@gmail.com', ' Hi an high-rankingoffers \\r\\n Straight click on the tie lower to modify    http://bit.ly/2S6qRNU', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.217.71.131'),
(208, 'Zacharyjoync', 'cronescottageuk@gmail.com', ' Hey What we accept here is , exquisitesacrifice \\r\\n Simply click \\r\\n \\r\\nhttp://7GGOJ.TK', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '89.249.64.178'),
(209, 'Davidped', 'photographybypaulharris@gmail.com', ' Hy there,  Good tidings ! a greatoffers \\r\\n Are you in?  \\r\\nhttp://bit.ly/2S3ZvI9', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.253.97.245'),
(210, 'RobertTrine', 'teddodsworth@gmail.com', '  Look what we get for you! a virtuousdonation \\r\\n Are you in?  \\r\\n \\r\\nhttp://servicerubin.ru', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '89.238.165.134'),
(211, 'Timothygoasy', 'sarkva@gmail.com', 'Confirm that you are not a robot, and learn how to earn $ 1000 a day \\r\\nhttp://guide-traveler.ru', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '131.153.41.167'),
(212, 'Donaldblifs', 'formforsome@yandex.ua', 'Hello! \\r\\n \\r\\nDo you know how to get +10% in bitcoins during your coffee break? \\r\\nSpend this time with benefits. \\r\\n \\r\\nMake fast donation to http://dcbtc.club and get automatically payout to your wallet after two days. \\r\\n \\r\\nFor example, you donate 100$ in btc today, so you automatically get 110$ day after tomorrow. \\r\\nReward will come directly to your btc wallet. \\r\\n \\r\\nTry and get reward! \\r\\n \\r\\nBowered by Blockchain technology.', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '151.106.12.244'),
(213, 'Lesliesef', 'infindigo@gmail.com', 'Confirm that you are not a robot, and find out very interesting \\r\\n \\r\\nhttp://bit.ly/2EOMStj', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '91.185.201.79'),
(214, 'Jamesdot', 'jamesNor@gmail.com', 'We offer you the opportunity to advertise your products and services. \\r\\nGood day! Please note nice offer for you. I can send your commercial offers or messages through feedback forms. The advantage of this method is that the messages sent through the feedback forms are included in the white list. This method increases the chance that your message will be read. The same way as you received this message. \\r\\n \\r\\nSending via Feedback Forms to any domain zones of the world. (more than 1000 domain', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '217.64.113.219'),
(215, 'Jamesfar', 'pete-gvm-affiliate@gmail.com', 'My name is Pete and I want to share a proven system with you that makes me money while I sleep! This system allows you to TRY the whole thing for F R E E for a whole 30 days! That\\\'s right, you can finally change your future without giving up any sensitive information in advance! I signed up myself just a while ago and I\\\'m already making a nice profit. \\r\\n \\r\\nIn short, this is probably the BEST THING THAT EVER HAPPENED TO YOU IF YOU TAKE ACTION NOW!!! \\r\\n \\r\\nIf you\\\'re interested in knowing', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '217.64.113.218'),
(216, 'Jamesves', 'svetlanacol0sova@yandex.ua', 'Hi olimarteam.uy \\r\\nGrow your bitcoins by 10% per 2 days. \\r\\nProfit comes to your btc wallet automatically. \\r\\n \\r\\nTry  http://bm-syst.xyz \\r\\nit takes 2 minutes only and let your btc works for you! \\r\\n \\r\\nGuaranteed by the blockchain technology!', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '91.132.136.202'),
(217, 'Bryantselve', 'cgorillamail@gmail.com', 'Hi, olimarteam.uy \\r\\n \\r\\nI\\\'ve been visiting your website a few times and decided to give you some positive feedback because I find it very useful. Well done. \\r\\n \\r\\nI was wondering if you as someone with experience of creating a useful website could help me out with my new site by giving some feedback about what I could improve? \\r\\n \\r\\nYou can find my site by searching for \\\"casino gorilla\\\" in Google (it\\\'s the gorilla themed online casino comparison). \\r\\n \\r\\nI would appreciate if you ', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.253.98.164'),
(218, 'StevePrarf', 'sj430383@gmail.com', 'Hello, \\r\\n \\r\\nWe (TEK-NEFT ),Hereby bring to your esteemed company \\r\\nattention regarding our available JP54/JET FUEL JPA1 with 1,000,000 \\r\\nbarrels and D2 GAS OIL 100,000 Metric Tons and Virgin D6 50,000,000 Gallons \\r\\nallocation which is currently on board in Rotterdam port / Huston port. \\r\\nKindly notify us your willingness to allocation this available products. \\r\\n \\r\\nYours sincerely \\r\\nALEXANDER ILYICH \\r\\nEmail: sales@tek-neft.ru', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '193.148.19.163'),
(219, 'Davidshina', 'gunrussia@scryptmail.com', '25 charging traumatic pistols shooting automatic fire! Modified Makarov pistols with a silencer! Combat Glock 17 original or with a silencer! And many other types of firearms without a license, without documents, without problems! \\r\\nDetailed video reviews of our products you can see on our website. \\r\\nhttp://Gunrussia.pw \\r\\nIf the site is unavailable or blocked, email us at - Gunrussia@secmail.pro   or  Gunrussia@elude.in \\r\\nAnd we will send you the address of the backup site!', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '151.106.8.101'),
(220, 'RobertBlani', 'angelaDolorige@gmail.com', 'Ciao!  olimarteam.uy \\r\\n \\r\\nWe present oneself \\r\\n \\r\\nSending your message through the feedback form which can be found on the sites in the Communication section. Contact form are filled in by our application and the captcha is solved. The superiority of this method is that messages sent through feedback forms are whitelisted. This technique improve the chances that your message will be open. Mailing is done in the same way as you received this message. \\r\\nYour  commercial offer will be ope', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '139.28.217.222'),
(221, 'Martin Gimenez', 'webahora12@yahoo.com', 'Hola ! Soy Martin Gimenez, soy un webmaster y diseÃ±ador web. Hoy estuve navegando por olimarteam.uy y encontrÃ© algunos errores asi como partes desactualizadas y te ofrezco nuestros servicios para corregirlos. \\r\\n \\r\\nHacemos este trabajo hace 15 aÃ±os y tenemos cientos de clientes satisfechos. Damos \\r\\n \\r\\nEn este link podrÃ¡s ver mis honorarios y chatear conmigo si tienes dudas. \\r\\n \\r\\nhttps://paginaswebadaptables.promo/mantenimiento/?u=olimarteam.uy \\r\\n \\r\\nDamos soporte por skype, cha', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '193.148.19.190'),
(222, 'Josephpycle', 'michaelHet@gmail.com', ' Hi Look what we get an eye to you! a okoffers \\r\\n To qualify click on the unite downstairs  \\r\\n \\r\\nhttps://drive.google.com/file/d/139BKi8ZN679wXsp1g99qcc1v7N-ZcGki/preview', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.183.106.169'),
(223, 'Roberthof', 'svetlanacol0sova@yandex.ua', 'Let your bitcoins brings you +10% per 2 days. \\r\\nGet paid automatically and earn again! \\r\\n \\r\\nTry  http://dc-btc.site \\r\\none click registration and getting asset \\r\\n \\r\\nPowered by Mutual assistance Algorithm and Blockchain. \\r\\nWarranty!', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '193.148.19.186'),
(224, 'RobertBlani', 'angelaDolorige@gmail.com', 'Hello!  olimarteam.uy \\r\\n \\r\\nWe make available \\r\\n \\r\\nSending your commercial offer through the feedback form which can be found on the sites in the Communication partition. Contact form are filled in by our program and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique improve the chances that your message will be read. Mailing is done in the same way as you received this message. \\r\\nYour  business proposition will ', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '83.136.82.84'),
(225, 'JeffreyEmity', 'noresponder@paginaswebadaptables.promo', 'Hola ! Soy Martin Gimenez, soy un webmaster y diseÃ±ador web y cuento con un equipo de trabajo para mejorar sitios web. \\r\\n \\r\\nHoy estuve navegando por olimarteam.uy y hay mejoras posibles en diseÃ±o, contenido, velocidad y seguridad (eliminar errores) \\r\\n \\r\\nÂ¿ Le gustaria eliminar errores de su sitio web ? \\r\\nHacemos este trabajo hace 15 aÃ±os y tenemos cientos de clientes satisfechos. \\r\\nEn este link podrÃ¡s ver mis honorarios, lo que puedo mejorar de su web y chatear conmigo si tienes ', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '193.148.19.182'),
(226, 'ContactForm', 'raphaeDolorige@gmail.com', 'Good day!  olimarteam.uy \\r\\n \\r\\nWe suggest \\r\\n \\r\\nSending your business proposition through the feedback form which can be found on the sites in the Communication partition. Feedback forms are filled in by our software and the captcha is solved. The advantage of this method is that messages sent through feedback forms are whitelisted. This method increases the odds that your message will be read. \\r\\n \\r\\nOur database contains more than 25 million sites around the world to which we can send ', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '31.13.190.254'),
(227, 'olimarteam.uy', 'micgyhaelHet@gmail.com', 'There is an interesting  offer for winning. olimarteam.uy \\r\\nhttp://bit.ly/2KAgOwu', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '83.97.23.104'),
(228, 'ContactForm', 'raphaeDolorige@gmail.com', 'Good day!  olimarteam.uy \\r\\n \\r\\nWe present oneself \\r\\n \\r\\nSending your commercial proposal through the Contact us form which can be found on the sites in the contact partition. Contact form are filled in by our software and the captcha is solved. The superiority of this method is that messages sent through feedback forms are whitelisted. This technique raise the odds that your message will be read. \\r\\n \\r\\nOur database contains more than 25 million sites around the world to which we can sen', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '31.13.190.254'),
(229, 'AnthonyPeake', 'gulfsrv94@gmail.com', 'Good day!, olimarteam.uy \\r\\n \\r\\nOur customer want to fund in your district for good benefit. \\r\\n \\r\\nPlease contact us for more information on  +973 650 09688 or mh@indobsc.com \\r\\n \\r\\nBest regards \\r\\nMr. Mat Hernandez', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.230.127.170'),
(230, 'olimarteam.uy', 'micgyhaelHet@gmail.com', 'That is an compelling  high-priced an tenderness to winning. olimarteam.uy \\r\\nhttp://bit.ly/2Kyw6BP', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '83.97.23.234'),
(231, 'ContactForm', 'raphaeDolorige@gmail.com', 'Good day!  olimarteam.uy \\r\\n \\r\\nWe advance \\r\\n \\r\\nSending your business proposition through the Contact us form which can be found on the sites in the contact partition. Contact form are filled in by our program and the captcha is solved. The superiority of this method is that messages sent through feedback forms are whitelisted. This technique improve the probability that your message will be read. \\r\\n \\r\\nOur database contains more than 25 million sites around the world to which we can se', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '85.10.56.138'),
(232, 'olimarteam.uy', 'micgyhaelHet@gmail.com', 'Here is  an gripping  the latest thing someone is concerned the treatment of the doggedness you. olimarteam.uy \\r\\nhttp://bit.ly/2NMuho9', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '83.97.23.188'),
(233, 'olimarteam.uy', 'micgyhaelHet@gmail.com', 'Look at an remarkable  alms pro you. olimarteam.uy \\r\\nhttp://bit.ly/2NJSFH5', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', '185.217.71.148'),
(234, 'MarioWex', 'raphaeDolorige@gmail.com', 'Hello!  olimarteam.uy \\r\\n \\r\\nWe make available \\r\\n \\r\\nSending your business proposition through the feedback form which can be found on the sites in the Communication partition. Contact form are filled in by our program and the captcha is solved. The superiority of this method is that messages sent through feedback forms are whitelisted. This technique improve the odds that your message will be read. \\r\\n \\r\\nOur database contains more than 25 million sites around the world to which we can s', 'Taiping', 'Eritrea', '193.148.19.174'),
(235, 'http://disccustchitut.tk/kh9q0', 'abooddarsh@yahoo.com', 'Here is  a decisive  broadside as a sound out an liking to winning.  http://tiolifighdryw.ga/8y46', 'http://disccustchitut.tk/kh9q0', 'http://disccustchitut.tk/kh9q0', '185.253.97.237'),
(236, 'KennethnuP', 'ferdoss19@hotmail.com', ' Hi What we have here is , a lovelyoffers  http://uranadres.tk/kbxf', 'Plovdiv', 'Bulgaria', '85.206.165.30'),
(237, 'ThomasAbozy', 'thomastap@gmail.com', 'Having a better Alexa for your website will increase sales and visibility \\r\\n \\r\\nOur service is intended to improve the Global Alexa traffic rank of a website. It usually takes seven days to see the primary change and one month to achieve your desired three-month average Alexa Rank. The three-month average Alexa traffic rank is the one that Alexa.com shows on the Alexaâ€™s toolbar. \\r\\n \\r\\nFor more information visit our website \\r\\nhttps://monkeydigital.co/product/alexa-rank-service/ \\r\\n \\r\\', 'Santa Maria', 'Paraguay', '185.93.180.217'),
(238, 'JosephTag', 'kabirmhdcharity@gmail.com', 'MOHSIN HAIDER DARWISH CHARITY \\r\\nPO. Box - 880 \\r\\nPost Code - 112 \\r\\nRuwi, Muscat \\r\\nSultanate Of Oman \\r\\nTel: 00968 -24732550 \\r\\nFax: 00968 -24793259 \\r\\nhttp://mhdcharityfoundation.com/ \\r\\ninfo@mhdcharityfoundation.com \\r\\n \\r\\nTrabajamos en casi 120 paÃ­ses. Servimos a personas de todo el mundo, independientemente de su religiÃ³n, raza, etnia o gÃ©nero. \\r\\n \\r\\nTenemos mÃ¡s de $ 900 millones donados por la filantropÃ­a benÃ©fica Mohsin Haider Darwish para organizaciones benÃ©ficas, pr', 'Mount Carey', 'Jamaica', '185.93.3.111'),
(239, 'WilliamFum', 'c5004life@yahoo.com', 'Note is  a seemlyoffer someone is concerned you. http://pierussarows.ga/r4vk', 'Kaohsiung Municipality', 'Taiwan', '185.93.3.110'),
(240, 'RonaldKic', 'gundog249@gmail.com', 'There is an prominentoffer for you. http://diworlfuzgi.ga/pk01o', 'Tafraout', 'Morocco', '37.120.142.164'),
(241, 'DebraHaG', 'easylinkbuildinges@gmail.com', 'Hola, \\r\\nNo quiero perder su tiempo, asÃ­ que irÃ© directo al grano: estamos buscando oportunidades para la publicaciÃ³n de guest post (artÃ­culos invitados pagados) en sitios web como el suyo. El guest post es un artÃ­culo informativo, consistente con su plan editorial, que contiene un enlace a un sitio web relevante. Normalmente, nosotros le proporcionamos un artÃ­culo y pagamos una tarifa por esta actividad. \\r\\nPido disculpas por este primer contacto inusual, antes de continuar, por supuest', 'Nuwara Eliya', 'Sri Lanka', '37.120.142.174'),
(242, 'AveryGlity', 'raphaePepeevomma@gmail.com', 'Hi!  olimarteam.uy \\r\\n \\r\\nHave you ever heard of sending messages via feedback forms? \\r\\n \\r\\nImagine that your offer will be readread by hundreds of thousands of your future buyerscustomers. \\r\\nYour message will not go to the spam folder because people will send the message to themselves. As an example, we have sent you our suggestion  in the same way. \\r\\n \\r\\nWe have a database of more than 30 million sites to which we can send your offer. Sites are sorted by country. Unfortunately, you c', 'Baghdad', 'Iraq', '37.120.142.174'),
(243, 'RonaldFam', 'quickchain50@gmail.com', 'Profit +10% after 2 days \\r\\nThe minimum amount for donation is 0.0025 BTC. \\r\\nMaximum donation amount is 10 BTC. \\r\\n \\r\\nRef bonus 3 levels: 5%,3%,1% paying next day after donation \\r\\nhttps://quickchain.cc/', 'Ligatne', 'Latvia', '87.101.94.123'),
(244, 'MikeBEK', 'noreplyDolorige@gmail.com', 'When you order 1000 backlinks with this service you get 1000 unique domains, Only receive 1 backlinks from each domain. All domains come with DA above 15-20 and with actual page high PA values. Simple yet very effective service to improve your linkbase and SEO metrics. \\r\\n \\r\\nOrder this great service from here today: \\r\\nhttps://monkeydigital.co/product/unique-domains-backlinks/ \\r\\n \\r\\nMultiple offers available \\r\\n \\r\\nthanks and regards \\r\\nMike \\r\\nmonkeydigital.co@gmail.com', 'Celaya', 'Mexico', '84.17.47.143'),
(245, 'Pedro Molina', 'pedrom@uicinsuk.com', 'Dear Sir, \\r\\nAm contacting you to partner with me to secure the life insurance of my late client, to avoid it being confiscated. For more information, please contact me on + 447452275874 or pedrom@uicinuk.com \\r\\nRegards \\r\\nPedro Molina', 'Praia', 'Cape Verde', '84.17.47.175'),
(246, 'BenitoBup', 'cbu@cyberdude.com', 'Hi olimarteam.uy manager, \\r\\n \\r\\n \\r\\nSee, ClickBank is going to BREAK the Internet. \\r\\nTheyâ€™re doing something SO CRAZY, it might just tear the Internet at its seams. \\r\\n \\r\\nInstead of selling our 3-Part â€œClickBank Breaks The Internetâ€ Extravaganza Seriesâ€¦ Theyâ€™re giving it to you at no cost but you need to get it now or it will be gone! \\r\\n \\r\\nGET YOUR COPY NOW! Download The â€œ$1k Commission Manual\\\": https://1kmanual.com \\r\\n \\r\\nHereâ€™s to kicking off the Fall season right', 'Ga District', 'Ghana', '84.17.49.78'),
(247, 'Kevinteste', 'rodgerovats@outlook.com', 'hi there \\r\\nI have just checked olimarteam.uy for the ranking keywords and to see your SEO metrics and found that you website could use a boost. \\r\\n \\r\\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods \\r\\n \\r\\nPlease check our pricelist here, we offer SEO at cheap rates. \\r\\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \\r\\n \\r\\nStart boosting your business sales and leads with us, today! \\r\\n \\r\\nregards \\r\\nHilkom Digital Team \\r\\nsupport@hi', 'Montevideo', 'Uruguay', '84.17.47.15'),
(248, 'Mariacooks', 'af.antocrespo@consultant.com', 'Attn: Beneficiary \\r\\nTHE WEB PROMOTION PROGRAM. We are pleased to inform you of the release of the results of our ES.INTERNATIONAL WEB PROMOTION PROGRAM. The result was released on the 28 OF OCTOBER 2019. Your e-Website was attached to ticket number 902089237-067 drew lucky numbers 9-24-06-18-05-26. Which consequently won our website lottery program in the 2nd category. Your website has therefore won the sum of â‚¬1, 710, 460.00. for you CONGRATULATION!!!!!!!!!!! \\r\\n \\r\\nAll participants were ', 'San Miguel de Tucuman', 'Argentina', '84.17.47.15'),
(249, 'MichaelWoors', 'roberttrawl@gmail.com', 'The legendary \\\"Eldorado\\\"investment Fund has returned to the international cryptocurrency market in your country. \\r\\n \\r\\n10% BTC to each member of the club \\\" Eldorado\\\" \\r\\n10 % accrual to your bitcoin wallet every 2 days. \\r\\n9% Daily bonus to each member of the affiliate program. \\r\\n \\r\\nFree registration only on the official website of \\\" Eldorado\\\" \\r\\nhttps://eldor.cc#engbtcÂ  \\r\\n', 'Loja', 'Ecuador', '185.217.71.152'),
(250, 'JessieBer', 'info2@revlight.com.sg', 'Dear Sir/mdm, \\r\\n \\r\\nAre you satisfied with your current CCTV on quality and service? Tired \\r\\nof cameras that always broke down easily? \\r\\n \\r\\nDon\\\'t worry, we manufacture High-Definition Security Surveillance \\r\\nSystems for Residential & Commercial uses. All our cameras are metal \\r\\nweatherproof and comes with sony sensor for maximum quality. \\r\\nIPcam video quality: https://youtu.be/VPG82dnXfWY \\r\\n \\r\\n+65 6678-6557 \\r\\nEmail: sales@revlightsecurity.com \\r\\nW: http://www.revlightsecur', 'Montevideo', 'Uruguay', '185.217.71.135'),
(251, 'Monkeymub', 'rodgerovats@outlook.com', 'Local Business Citations are powerful ranking tools for any local business. But Not All Business Citations are created equal. Get Top Local Citations for your business that will help you get higher Local Rank and also increase your local visibility in your area. You will get 1500 Quality Back Links from citation sites to increase the position of your business in local search. \\r\\n \\r\\nMore info: \\r\\nhttps://www.monkeydigital.co/product/google-maps-citations/ \\r\\n \\r\\nthanks and regards \\r\\nMonke', 'Ga District', 'Ghana', '185.253.97.235'),
(252, 'Orvilleendat', 'raphaeDolorige@gmail.com', 'Hello!  olimarteam.uy \\r\\n \\r\\nHave you ever heard that you can send a message through the contact form? \\r\\nThese forms are located on many sites. We sent you our message in the same way, and the fact that you received and read it shows the effectiveness of this method of sending messages. \\r\\nSince people in any case will read the letter received through the contact form. \\r\\nOur database includes more than 35 million websites from all over the world. \\r\\nThe price of sending one million messa', 'La Primavera', 'Panama', '178.162.209.79'),
(253, 'crypto-mmm', 'williamcic@gmail.com', 'Registration to the international project \\\"Crypto-M\\\" is open\\\" \\r\\nThe \\\"Crypto-M\\\" project is currently the market leader in short-term investments in the blockchain-bitcoin community. \\r\\n \\r\\nInvestment program: \\r\\n \\r\\nInvestment currency: BTC. \\r\\nThe investment period is 2 days. \\r\\nMinimum profit is 10% \\r\\nThe minimum investment amount is 0.0025 BTC. \\r\\nThe maximum investment amount is 10 BTC .Â  \\r\\n9% Daily bonus to each member of the affiliate program.Â Â  \\r\\nRe-investment is ava', 'Baghdad', 'Iraq', '87.101.94.73'),
(254, 'PhilipBuple', 'noreply.venuscoin@gmail.com', 'Hola, este es el Proyecto Venus Coin. \\r\\n \\r\\nVenus Coin es una nueva criptomoneda utilizada en el mercado de entretenimiento nocturno de $ 350 mil millones (clubes, bares, clubes de citas, costumbres sexuales, etc.). \\r\\n \\r\\nYa desarrollamos la aplicaciÃ³n de billetera, superamos las 100,000 descargas en todo el mundo, y ahora es posible llegar a acuerdos en 15,000 tiendas en este mercado. \\r\\n \\r\\nVenus Coin planea cotizar en el intercambio mÃ¡s grande del mundo en febrero de 2020, y decidim', 'Burnt Pine', 'Norfolk Island', '84.17.51.125'),
(255, 'ThomasAnderson', 'anthonykerty@gmail.com', 'Hello \\r\\nI invite you to my team, I work with the administrators of the company directly. \\r\\n- GUARANTEED high interest on Deposit rates \\r\\n- instant automatic payments \\r\\n- multi-level affiliate program \\r\\nIf you want to be a successful person write: \\r\\nTelegram: @Tom_proinvest \\r\\nSkype: live:.cid.18b402177db5105c             Thomas Anderson \\r\\n \\r\\nhttp://bit.ly/2QVcgEc', 'Cairo', 'Egypt', '37.120.217.87'),
(256, 'StephenCek', 'no-reply-hilkomdigital@gmail.com', 'hi there \\r\\nI have just checked olimarteam.uy for the ranking keywords and to see your SEO metrics and found that you website could use a boost. \\r\\n \\r\\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods \\r\\n \\r\\nPlease check our pricelist here, we offer SEO at cheap rates. \\r\\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \\r\\n \\r\\nStart boosting your business sales and leads with us, today! \\r\\n \\r\\nregards \\r\\nHilkom Digital Team \\r\\nsupport@hi', 'Arcatao', 'El Salvador', '84.17.62.136'),
(257, 'Kennethaffok', 'raphaeDolorige@gmail.com', 'Hi!  olimarteam.uy \\r\\n \\r\\nDid you know that it is possible to send appeal fully lawful? \\r\\nWe provide a new method of sending message through contact forms. Such forms are located on many sites. \\r\\nWhen such letters are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \\r\\nAlso, messages sent through contact Forms do not get into spam because such messages are considered important. \\r\\nWe offer you to test our service for fr', 'Istanbul', 'Turkey', '84.17.61.12'),
(258, 'Andrewaquaf', 'jackob.james@yandex.ru', 'Hello! \\r\\n \\r\\nDo you know how to spend working hours with benefit? \\r\\n \\r\\nYou can grow bitcoins by 1.1% per day! \\r\\nIt takes 1 minute to start, quicker than a cup of coffee \\r\\n \\r\\nTry http://satoshi-gen.website \\r\\n \\r\\nPowered by Blockchain.', 'Lome', 'Togo', '84.17.60.15'),
(259, 'HilkomDoF', 'no-reply@hilkom-digital.de', 'hi there \\r\\nI have just checked olimarteam.uy for the ranking keywords and seen that your SEO metrics could use a boost. \\r\\n \\r\\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \\r\\n \\r\\nPlease check our pricelist here, we offer SEO at cheap rates. \\r\\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \\r\\n \\r\\nStart increasing your sales and leads with us, today! \\r\\n \\r\\nregards \\r\\nHilkom ', 'Kaduna', 'Nigeria', '37.120.217.38'),
(260, 'BrianDat', 'no-reply@hilkom-digital.de', 'hi there \\r\\nI have just checked olimarteam.uy for the ranking keywords and seen that your SEO metrics could use a boost. \\r\\n \\r\\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \\r\\n \\r\\nPlease check our pricelist here, we offer SEO at cheap rates. \\r\\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \\r\\n \\r\\nStart increasing your sales and leads with us, today! \\r\\n \\r\\nregards \\r\\nHilkom ', 'Nove Mesto nad Vahom', 'Slovakia', '84.17.47.35'),
(261, 'Liliana Pereyra', 'liliana.pereyra@expertoweb.guru', 'Llegamos al aÃ±o 2020 y creemos que es momento de actualizar olimarteam.uy para corregir sus errores y adaptarla para las nuevas tendencias, les mencionamos las mÃ¡s pedidas por los clientes. \\r\\n \\r\\n1. Que sus clientes puedan chatear directo a su Whatsapp desde la web. (le activamos whatsapp bussiness si no tiene) \\r\\n2. Integrarlo con redes sociales sincrÃ³nicamente, es decir que cualquier cambio en olimarteam.uy o en sus redes, se actualiza automÃ¡ticamente en ambos lados. \\r\\n3. el 60 % del', 'Mount Carey', 'Jamaica', '185.93.3.110'),
(262, 'Williamhorse', 'no-reply@ghostdigital.co', 'Increase your olimarteam.uy ranks with quality web2.0 Article links. \\r\\nGet 500 permanent web2.0 for only $39. \\r\\n \\r\\nMore info about our new service: \\r\\nhttps://www.ghostdigital.co/web2/', 'Yako', 'Burkina Faso', '190.2.149.159');
INSERT INTO `contacto` (`id_contacto`, `nombre`, `email`, `comentario`, `ciudad`, `pais`, `ip`) VALUES
(263, 'Anthonybit', 'raphaeDolorige@gmail.com', 'Hello!  olimarteam.uy \\r\\n \\r\\nDo you know the simplest way to point out your products or services? Sending messages using contact forms can permit you to easily enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that may be sent through it will find yourself in the mailbox that\\\'s intended for such messages. Sending messages using Contact forms isn\\\'t blocked by mail systems, which implies it\\\'s abso', 'Santa Rosa', 'Venezuela', '84.17.51.39'),
(264, 'George Philips', 'noreply@invstfund.fund', 'Hello Partners, \\r\\n \\r\\nThe Finance Investment arm of our company is seeking interested partners in need of alternative funding for long term capital projects or business development. Our managed portfolio has an excess pool in private funds for viable project financing, \\r\\n \\r\\n \\r\\nWe specialize in Financial Investments in all Public and Private sectors and currently wish to invest in any viable Project presented by you after due diligence review. Contact me directly to know how we can provi', 'Tamana', 'Japan', '85.206.162.210'),
(265, 'Miguel Angel', 'miguelangelperezsoria94@gmail.com', 'Hola buenas, \\r\\n \\r\\nEstamos en cuarentena, pasando mucho tiempo en casa, y aprovechando para buscar mucho en Google, jeje. Acabo de ver su pagina web y me he animado a contactarles. A lo mejor no saben de SEO y posicionamiento, hay una persona llamada Chuiso que ha lanzado un curso en Youtube que es totalmente gratis y lo esta subiendo en Youtube: \\r\\n \\r\\nhttps://www.youtube.com/watch?v=rT5b3ucw8hU \\r\\n \\r\\nSolo queria compartirselo por si puede interesarle, me parece un curso muy bueno y con', 'Maputo', 'Mozambique', '84.17.51.65'),
(266, 'MartinAbata', 'no-reply@hilkom-digital.de', 'hi there \\r\\nI have just checked olimarteam.uy for the ranking keywords and seen that your SEO metrics could use a boost. \\r\\n \\r\\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \\r\\n \\r\\nPlease check our pricelist here, we offer SEO at cheap rates. \\r\\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \\r\\n \\r\\nStart increasing your sales and leads with us, today! \\r\\n \\r\\nregards \\r\\nHilkom ', 'Riohacha', 'Colombia', '84.17.48.140'),
(267, 'WilliamSnugh', 'essmaili.shad@gmail.com', 'We are producers of certified Halal and non Halal frozen beef/ Chicken \\r\\nby products and we are looking for serious buyers to extend our long term business. \\r\\nOur products meet both International and National Standards. \\r\\nWe have been exporting beef/ Chicken by products to overseas for more than 10 years now. \\r\\n \\r\\nWe guarantee best quality at affordable price and prompt \\r\\ndelivery. \\r\\n \\r\\nOur facilities maintain a strict adherence with all humane animal \\r\\ntreatment and slaughter ', 'Ga District', 'Ghana', '84.17.58.15'),
(268, 'Mike Jackson', 'no-replydow@gmail.com', 'hi there \\r\\n \\r\\nAs we have discussed on our website`s chat, here is the SEO pricing I was referring to \\r\\nhttps://googlealexarank.com/index.php/seo-packages/ \\r\\n \\r\\nAnd as promissed we will also include 1500 non-ugc backlinks as bonus, along with the plan. \\r\\n \\r\\nthank you \\r\\nTop SEO Expert', 'Willemstad', 'Netherlands Antilles', '151.106.8.99'),
(269, 'Heatherplugh', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \\r\\n \\r\\nHow are you? \\r\\n \\r\\nWe supply Professional surveillance & medical products: \\r\\n \\r\\nMoldex, makrite and 3M N95 1860, 9502, 9501, 8210 \\r\\n3ply medical, KN95, FFP2, FFP3, PPDS masks \\r\\nFace shield/medical goggles \\r\\nNitrile/vinyl/PP gloves \\r\\nIsolation/surgical gown lvl1-4 \\r\\nProtective PPE/Overalls lvl1-4 \\r\\nIR non-contact thermometers/oral thermometers \\r\\nsanitizer dispenser \\r\\nCrystal tomato \\r\\n \\r\\nLogitech/OEM webcam \\r\\nMarine underwater CCTV \\r\\nExplosionp', 'Suva', 'Japan', '185.102.219.170'),
(270, 'Sherrierib', 'investorsneeded121512@protonmail.com', 'Hello \\r\\n \\r\\nIm looking for investor for my email marketing business. \\r\\nI own 270 million email database with 92% valid emails. Im looking for investor who invest in server infrastructure to send it. Im planning to run infrastructure to send like 10 million emails per day on daily basis, and increase every week by add more servers. \\r\\nPotential earnings are $100-$200 depend on country per million sended messages \\r\\nI have knowledge about email marketing and team which is needed to handle w', 'Toledo', 'Spain', '45.86.203.216'),
(271, 'Mike Moore\\r\\n', 'no-replydow@google.com', 'HÐµllÐ¾! \\r\\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \\r\\nWith our service you get Domain Authority above 50 points in just 30 days. \\r\\n \\r\\nThis service is guaranteed \\r\\n \\r\\nFor more information, check our service here \\r\\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \\r\\n \\r\\nthank you \\r\\nMike Moore\\r\\n \\r\\nMonkey Digital \\r\\nsupport@monkeydigital.co', 'Willemstad', 'Netherlands Antilles', '95.154.200.161'),
(272, 'Robertfathe', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \\r\\n \\r\\nHow are you? \\r\\n \\r\\nWe supply Professional surveillance & medical products: \\r\\n \\r\\nMoldex, makrite and 3M N95 1860, 9502, 9501, 8210 \\r\\n3ply medical, KN95, FFP2, FFP3, PPDS masks \\r\\nFace shield/medical goggles \\r\\nNitrile/vinyl/Latex/PP gloves \\r\\nIsolation/surgical gown lvl1-4 \\r\\nProtective PPE/Overalls lvl1-4 \\r\\nIR non-contact/oral thermometers \\r\\nsanitizer dispenser \\r\\n \\r\\nLogitech/OEM webcam \\r\\nMarine underwater CCTV \\r\\nExplosionproof CCTV \\r\\n4G Solar CCT', 'Andorra La Vella', 'Andorra', '85.206.162.213'),
(273, 'Jose Enrique', 'temporio@gmail.com', 'Hola, me llamo Jose Enrique y he detectado un grave problema de seguridad en su web a traves de un plugin. Con ello podrian acceder a su base de datos en cuestion de 5 minutos y extraer todos los datos y claves, si quisieran hacerlo. Le recomiendo que me llame de inmediato (699964936) o responda a traves  de este email para solucionarlo. Le estoy avisando. Saludos. Mi email es temporio@gmail.com gracias', 'Aqtobe', 'Kazakhstan', '84.17.51.42'),
(274, 'Daniela', 'daniela.severgnini@nexsysla.com', 'Me pongo en contacto para solicitarles una llamada. Nexsys Uruguay es el nuevo Distribuidor Mayorista de Kaspersky para Uruguay. Y quisiera charlar con ustedes porque veo que son parnter de Kaspersky pero ademas tengo las licencias del Estudio Contable Guillermo Fregueiro para renovar y vencen 11/11/2020.\\r\\nSi tienen un telefono para llamarlos se los agradezco.\\r\\nSaludos, Daniela Severgnini', 'Montevideo', 'Uruguay', '179.26.97.202'),
(275, 'Registration Certificate Database', 'noreply@dcreregistration.com', 'The domain(s) listed below are due to expire in our certificate database within the next 24 hours: \\n\\nolimarteam.uy (2021-09-09) \\n\\nYour invoice is currently OVERDUE. Your automated payment method may have expired or failed for technical reasons. \\n\\nUpon expiration, your registration will automatically enter into a grace period in PENDING-DELETE status. During this time, the domain certificate will not be accessible so any web site authentication or email services associated with it will stop', 'San Francisco', 'United States', '172.98.181.74'),
(276, 'WebName Register', 'noreply@webnameregister.com', 'TO RENEW olimarteam.uy (Expires on 2021-11-03): \\nhttps://webnameregister.com/olimarteam.uy/a/1635933979/v4 \\n\\nThis email is to inform you that your outstanding invoice number 1399299912 is OVERDUE. olimarteam.uy due for renewal 2021-11-03* is SUSPENDED. Please complete payment ASAP to avoid any TERMINATION of service to olimarteam.uy. \\n\\nPlease be adviced that if no payment is received in the next 3 business days, your data will be purged and deleted. \\n\\nTO RENEW olimarteam.uy: \\nhttps://web', 'San Francisco', 'United States', '104.222.156.54'),
(277, 'Danielemeks', 'evalidator.test@gmail.com', 'Xin chao, toi mu?n bi?t gia c?a b?n.', 'Debrecen', 'Hungary', '185.252.223.86'),
(278, 'SSL Security', 'noreply@esslcerts.com', 'This notice is to inform you that the Free 1-Year subscription of the Security certificate (HTTPS) on your website has expired. This means that hackers can now snoop in on your website easily. Online viruses, bad actors or competitors can hijack your confidential exclusive data as well as your customers\\\' individual data for malicious purposes. \\n\\nMoreover, an invalid or expired SSL certificate also breaches GDPR (General Data Protection Regulation; effective May 25, 2018). Article 32 of GDPR m', 'Dothan', 'United States', '172.102.211.6'),
(279, 'Register WebName', 'noreply@registerwebsolutions.com', 'TO RENEW olimarteam.uy (Expires on 2022-04-03): \\nhttps://registerwebsolutions.com/olimarteam.uy/a/1648999592/v0 \\n\\nThis alert is to bring to your attention that your domain invoice number 1048904405 is OVERDUE. olimarteam.uy expired on 2022-04-03* is SUSPENDED. Please make payment AS SOON AS POSSIBLE to avoid any TERMINATION of service to olimarteam.uy. \\n\\nPlease note that if no payment is received in the next 3 business days, your data will be purged and deleted. \\n\\nTO RENEW olimarteam.uy: ', 'Shreveport', 'United States', '192.82.253.106'),
(280, 'SSL Security', 'noreply@esslcerts.com', 'This email is to inform you that the Free 1-Year subscription of the Security certificate (HTTPS) on your website has expired. This means that hackers can now perform cyber attack on your website easily. Online viruses, bad actors or competitors can hijack your confidential personal data as well as your customers\\\' individual data for malicious purposes. \\n\\nFurther, an invalid or expired SSL certificate also breaches GDPR (General Data Protection Regulation; effective May 25, 2018). Article 32 ', 'Dothan', 'United States', '45.33.152.20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `extracto` varchar(100) DEFAULT NULL,
  `descripcion` varchar(300) NOT NULL,
  `thumbail` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `inicio` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `nombre`, `fecha`, `extracto`, `descripcion`, `thumbail`, `imagen`, `id_cliente`, `id_servicio`, `inicio`) VALUES
(5, 'Olimpo', '2014/12/20-2015/03/15', 'Sistema de gestión y control de stock de la mercadería', 'Aca se programo un sistema de gestion y control de stock de mercaderia, capaz de emitir reportes, tanto de ventas, compras como de articulos.', 'http://localhost/img/dummies/tholimpo.gif', 'http://localhost/img/dummies/olimpo.gif', 2, 10, 1),
(4, 'Advertising LED', '2015/10/01-Actualidad', 'HelpDesk y soporte en Pantalla publicitaria ubicada en el centro de la ciudad de Treinta y Tres', 'instalacion y mantenimiento del servidor de la pantalla', 'http://localhost/img/dummies/thAdvertising LED.gif', 'http://localhost/img/dummies/thAdvertisingLED.gif', 9, 14, 1),
(10, 'sisler', '2015-01-11', 'HelpDesk y soporte', 'Reparacion y mantenimiento de los equipos de la red', 'http://localhost/img/dummies/thSisler.gif', 'http://localhost/img/dummies/Sisler.gif', 3, 17, 0),
(11, 'Reduts', '2015-01-20', 'HelpDesk y soporte', 'Reparacion y mantenimiento de los equipos de la red', 'http://localhost/img/dummies/thReduts.gif', 'http://localhost/img/dummies/Reduts.gif', 4, 17, 0),
(1, 'Sepae', '2015-11-02-Actualidad', 'Sistema de gestión y control de stock de equipamiento médico', 'Control de stock, ingresos, egresos, alquiler y venta.', '', '', 6, 10, 1),
(8, 'Reduts', '2015-01-28', 'Monitoreo de red', 'monitoreo, mantenimiento, configuracion, ejecucion de tareas de control en la red', 'http://localhost/img/dummies/thReduts.gif', 'http://localhost/img/dummies/thReduts.gif', 4, 15, 0),
(3, 'Reduts', '2009/01/28-2015/03/01', 'Aplicaciones para la automatización de la programación de espectáculos', 'realizacion de programas para tareas especificas', 'http://localhost/img/dummies/thReduts.gif', 'http://localhost/img/dummies/Reduts.gif', 4, 18, 1),
(15, 'Cecilia Morales', '2015-12-01-Actualidad', 'sitio web Psicóloga ', 'Se desarrollo un sitio web para Cecilia, una Psicologa especializada en el control mental', '', '', 8, 9, 0),
(7, 'Punta Frozen', '2015-10-08', 'Sistema de gestión para el service de Electrodomésticos y Línea blanca', 'sistema de control de stock, services, prestamos, mantenimiento de linea blanca.', 'http://localhost/img/dummies/thPunta Frozen.gif', '', 5, 10, 0),
(18, 'Led Advertising', '2015-10-01', 'Publicidad y marketing visual', 'pagina web orientada a la publicidad y marketing visual, tanto en la ciudad de Minas como en Treinta y Tres.', '', '', 7, 9, 0),
(6, 'Comfort\'s Way', '2016/09/08-2017/09/01', 'Servicio de correo electrónico y diseño de página web', 'Servicio de correo electrónico y diseño de página web', 'http://localhost/img/dummies/thComfort\'s way.gif', '', 10, 9, 0),
(2, 'Estudio contable Guillermo Fregueiro', '01/09/2017-Actualidad', 'HelpDesk y soporte', 'Reparacion y mantenimiento de los equipos, monitoreo de la red', 'http://localhost/img/dummies/thEstudio contable Guillermo Fregueiro.gif', '', 13, 17, 1),
(19, 'Club Yerbalito de Baby Futbol', '21/12/2017-Actualidad', 'Sitio web para el control del pago de la mensualidad del club.', 'Sitio web para el control del pago de la mensualidad del club.', 'http://localhost/img/dummies/thClub Yerbalito de Baby Futbol.gif', '', 16, 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombre`) VALUES
(1, 'vb.net'),
(2, 'access'),
(4, 'java'),
(6, 'mySQL'),
(8, 'php'),
(9, 'html'),
(10, 'vb.net + access'),
(11, 'vb.net + mySQL'),
(12, 'php + mySQL'),
(13, 'reparacion'),
(14, 'mantenimiento equipos'),
(15, 'redes'),
(16, 'mantenimiento software'),
(17, 'reparacion + mantenimiento'),
(18, 'vb.net + SQL server');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `id` (`id_cliente`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `cliente_id` (`id_cliente`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`),
  ADD UNIQUE KEY `id` (`id_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
