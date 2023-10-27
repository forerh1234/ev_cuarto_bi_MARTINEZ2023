-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-09-2023 a las 22:22:32
-- Versión del servidor: 8.0.31
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservanatural`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos`
--

DROP TABLE IF EXISTS `accesos`;
CREATE TABLE IF NOT EXISTS `accesos` (
  `id_acceso` int NOT NULL AUTO_INCREMENT,
  `id_opcion` int NOT NULL,
  `id_rol` int NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_acceso`),
  KEY `id_rol` (`id_rol`),
  KEY `id_opcion` (`id_opcion`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`id_acceso`, `id_opcion`, `id_rol`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(2, 2, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(3, 3, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(4, 4, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(5, 5, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(6, 6, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(7, 7, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(8, 8, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(9, 9, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(10, 10, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(11, 11, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(12, 12, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(13, 13, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(14, 14, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(15, 15, 1, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(16, 16, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(17, 17, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(18, 18, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(19, 19, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(20, 20, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(21, 21, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(22, 22, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(23, 23, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(24, 24, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(25, 25, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(26, 26, 1, '2023-06-01 22:48:19', '2023-06-01 22:48:19', 'A', 1),
(28, 28, 1, '2023-06-16 00:40:38', '2023-06-09 00:39:30', 'A', 1),
(29, 29, 1, '2023-06-19 01:46:27', '2023-06-22 01:46:10', 'A', 1),
(30, 30, 1, '2023-06-19 02:24:41', '2023-06-22 02:24:24', 'A', 1),
(31, 31, 1, '2023-06-21 00:25:36', '2023-07-01 00:22:19', 'A', 1),
(32, 32, 1, '2023-06-21 00:34:13', '2023-06-22 00:32:33', 'A', 1),
(33, 33, 1, '2023-06-27 23:28:06', '2023-06-30 23:27:05', 'A', 1),
(34, 34, 1, '2023-06-27 23:31:42', '2023-06-30 23:30:44', 'A', 1),
(35, 35, 1, '2023-06-29 22:35:24', '2023-06-30 22:34:42', 'A', 1),
(36, 36, 1, '2023-08-06 00:52:39', '2023-09-01 00:52:07', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE IF NOT EXISTS `administradores` (
  `id_administrador` int NOT NULL AUTO_INCREMENT,
  `id_institucion` int NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `ap` varchar(15) DEFAULT NULL,
  `am` varchar(15) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `ci` varchar(15) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_administrador`),
  KEY `id_institucion` (`id_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id_administrador`, `id_institucion`, `nombres`, `ap`, `am`, `fecha_inicio`, `fecha_fin`, `ci`, `telefono`, `genero`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 'Armando', 'Garay', 'Arroyo', '2020-01-07', '2021-02-01', '12625419a', '+591_67321062', 'M', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(2, 1, 'Sebastian', 'Peres', 'Dias', '2020-01-08', '2021-02-02', '10625019b', '+591_67320262', 'M', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(3, 1, 'Carlos', 'Alamasan', 'Apasa', '2020-01-09', '2021-02-13', '10625019c', '+591_67320062', 'M', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(4, 1, 'Tito', 'Ordoñes', 'Flores', '2020-01-10', '2021-02-04', '12025419d', '+591_567320022', 'M', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(5, 1, 'Andrea', 'Rios', 'Garay', '2020-01-11', '2021-02-05', '12625019e', '+591_67020062', 'F', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(6, 1, 'Santiago', 'Peres', 'Mamani', '2020-01-12', '2021-02-06', '10625419f', '+591_68320062', 'M', '2023-06-01 22:48:11', '2023-09-08 01:47:17', 'A', 1),
(7, 1, 'Alfredo', 'Torres', 'Reyes', '2020-01-13', '2021-02-07', '12025419h', '+591 _67390062', 'M', '2023-06-01 22:48:11', '2023-09-08 01:47:22', 'A', 1),
(8, 1, 'Romina', 'Reyes', 'Peña', '2020-01-14', '2021-02-08', '12025419i', '+591_67320022', 'F', '2023-06-01 22:48:11', '2023-09-08 01:47:25', 'A', 1),
(9, 1, 'Anthony', 'Torrejon', '', '2020-01-15', '2021-02-09', '12605419j', '+591_67320012', 'M', '2023-06-01 22:48:12', '2023-09-08 01:47:28', 'A', 1),
(10, 1, 'Silvio', 'Gareca', 'Medrano', '2020-01-16', '2021-02-10', '12625409k', '+591_77320062', 'M', '2023-06-01 22:48:12', '2023-09-08 01:47:30', 'A', 1),
(13, 1, 'bb', 'bb', 'bb', '2023-09-21', '2023-09-22', '122300', '5443000', 'F', '2023-09-08 01:41:32', '2023-09-08 01:42:10', 'X', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alertar_incendio`
--

DROP TABLE IF EXISTS `alertar_incendio`;
CREATE TABLE IF NOT EXISTS `alertar_incendio` (
  `id_alerta_incendio` int NOT NULL AUTO_INCREMENT,
  `id_guarda_parque` int NOT NULL,
  `fecha` date NOT NULL,
  `ubicacion` varchar(30) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_alerta_incendio`),
  KEY `id_guarda_parque` (`id_guarda_parque`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `alertar_incendio`
--

INSERT INTO `alertar_incendio` (`id_alerta_incendio`, `id_guarda_parque`, `fecha`, `ubicacion`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, '2016-01-01', 'Sama(Tarija)', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(2, 2, '2016-02-01', 'Sama(Tarija)', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(3, 3, '2016-03-01', 'Sama(Tarija)', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(4, 4, '2016-04-01', 'Sama(Tarija)', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(5, 5, '2016-05-01', 'Sama(Tarija)', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(6, 6, '2016-06-01', 'Sama(Tarija)', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(7, 7, '2016-07-01', 'Sama(Tarija)', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(8, 8, '2016-08-01', 'Sama(Tarija)', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(9, 9, '2016-09-01', 'Sama(Tarija)', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(10, 10, '2016-10-01', 'Sama(Tarija)', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `ci` varchar(15) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `ci`, `nombre`, `apellidos`, `direccion`, `telefono`) VALUES
(1, '4569876', 'RAFAEL', 'BENITES CARMONA', 'CALLE LOURDES', '66-52368'),
(2, '3265416', 'JUANITA', 'MERCADO LEON', 'CALLE COBIJA', '66-42563'),
(3, '8542695', 'DEMETRIA', 'ORTIZ TEJERINA', 'AV. LA PAZ', '66-785545'),
(4, '7589545', 'MIGUEL', 'VELASCO RODRIGUES', 'AV. SANTA CUZ', '66-57442'),
(5, '2658876', 'LUIS', 'RODRIGES', 'CALLE DOMINGO PAZ', '66-46356'),
(6, '123', 'AAA', 'aa', 'AAA', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int NOT NULL,
  `monto` float NOT NULL,
  `fecha_compra` date NOT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `id_proveedor`, `monto`, `fecha_compra`) VALUES
(1, 3, 30000, '2018-02-05'),
(2, 2, 20542, '2018-05-05'),
(3, 1, 30210, '2018-09-05'),
(4, 4, 50000, '2018-10-05'),
(5, 5, 10000, '2018-12-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncias_incendios`
--

DROP TABLE IF EXISTS `denuncias_incendios`;
CREATE TABLE IF NOT EXISTS `denuncias_incendios` (
  `id_denuncia_incendio` int NOT NULL AUTO_INCREMENT,
  `id_persona_` int NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  `hora` time NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_denuncia_incendio`),
  KEY `id_persona_` (`id_persona_`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `denuncias_incendios`
--

INSERT INTO `denuncias_incendios` (`id_denuncia_incendio`, `id_persona_`, `fecha`, `descripcion`, `hora`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, '2017-06-01', 'Incendio1', '09:00:00', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(2, 2, '2017-06-02', 'Incendio2', '09:00:00', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(3, 3, '2017-06-03', 'Incendio3', '10:00:00', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(4, 4, '2017-06-04', 'Incendio4 ', '11:00:00', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(5, 5, '2017-06-05', 'Incendio5 ', '12:00:00', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(6, 6, '2017-06-06', 'Incendio6 ', '01:00:00', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(7, 7, '2017-06-07', 'Incendio7 ', '02:00:00', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(8, 8, '2017-06-08', 'Incendio8 ', '03:00:00', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(9, 9, '2017-06-09', 'Incendio9 ', '04:00:00', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(10, 10, '2017-06-10', 'Incendio10', '05:00:00', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones`
--

DROP TABLE IF EXISTS `devoluciones`;
CREATE TABLE IF NOT EXISTS `devoluciones` (
  `id_devolucion` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `monto` float NOT NULL,
  PRIMARY KEY (`id_devolucion`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `devoluciones`
--

INSERT INTO `devoluciones` (`id_devolucion`, `id_cliente`, `fecha_devolucion`, `monto`) VALUES
(1, 5, '2018-02-11', 200),
(2, 4, '2018-03-09', 100),
(3, 3, '2018-04-03', 210),
(4, 2, '2018-05-05', 250),
(5, 1, '2018-06-12', 300),
(6, 4, '2023-06-29', 1010),
(7, 6, '2023-06-28', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director_guarda_parques`
--

DROP TABLE IF EXISTS `director_guarda_parques`;
CREATE TABLE IF NOT EXISTS `director_guarda_parques` (
  `id_director_guarda_parque` int NOT NULL AUTO_INCREMENT,
  `id_guarda_parque` int NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_director_guarda_parque`),
  KEY `id_guarda_parque` (`id_guarda_parque`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `director_guarda_parques`
--

INSERT INTO `director_guarda_parques` (`id_director_guarda_parque`, `id_guarda_parque`, `fecha_inicio`, `fecha_fin`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, '2010-01-01', '2020-02-01', '2023-06-01 22:48:13', '2023-06-01 22:48:13', 'A', 1),
(2, 2, '2010-01-02', '2020-02-02', '2023-06-01 22:48:13', '2023-06-01 22:48:13', 'A', 1),
(3, 3, '2010-01-03', '2020-02-03', '2023-06-01 22:48:13', '2023-06-01 22:48:13', 'A', 1),
(4, 4, '2010-01-04', '2020-02-04', '2023-06-01 22:48:13', '2023-06-01 22:48:13', 'A', 1),
(5, 5, '2010-01-05', '2020-02-05', '2023-06-01 22:48:13', '2023-06-01 22:48:13', 'A', 1),
(6, 6, '2010-01-06', '2020-02-06', '2023-06-01 22:48:13', '2023-06-01 22:48:13', 'A', 1),
(7, 7, '2010-01-07', '2020-02-07', '2023-06-01 22:48:13', '2023-06-01 22:48:13', 'A', 1),
(8, 8, '2010-01-08', '2020-02-08', '2023-06-01 22:48:13', '2023-06-01 22:48:13', 'A', 1),
(9, 9, '2010-01-09', '2020-02-09', '2023-06-01 22:48:13', '2023-06-01 22:48:13', 'A', 1),
(10, 10, '2010-01-10', '2020-02-19', '2023-06-01 22:48:14', '2023-06-01 22:48:14', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'FRICCION', 'AV.PANAMERICANA', '66-588884');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

DROP TABLE IF EXISTS `grupos`;
CREATE TABLE IF NOT EXISTS `grupos` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `grupo` varchar(50) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id_grupo`, `grupo`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 'Herramientas', '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(2, 'Parametros', '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(3, 'Reserva_natural', '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(4, 'Reporte', '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(5, 'SEGUNDO BIMESTRE-DWII', '2023-06-01 22:48:16', '2023-06-02 03:52:44', 'A', 1),
(6, 'SEGUNDO BIMESTRE-BDII', '2023-06-21 00:11:05', '2023-06-22 00:07:46', 'A', 1),
(7, 'TERCER-BIMESTRE-BDII', '2023-08-08 22:25:58', '2023-09-05 22:31:36', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guarda_parques`
--

DROP TABLE IF EXISTS `guarda_parques`;
CREATE TABLE IF NOT EXISTS `guarda_parques` (
  `id_guarda_parque` int NOT NULL AUTO_INCREMENT,
  `id_institucion` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(15) DEFAULT NULL,
  `ci` varchar(15) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_guarda_parque`),
  KEY `id_institucion` (`id_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `guarda_parques`
--

INSERT INTO `guarda_parques` (`id_guarda_parque`, `id_institucion`, `nombre`, `apellido`, `ci`, `telefono`, `genero`, `fecha_inicio`, `fecha_fin`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 'Carlos', 'Sanchez', '456789b', '+591_67832b', 'M', '2020-01-01', '2021-03-01', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(2, 1, 'Marcos', 'Del Rio', '123456c', '+591_67832', 'M', '2020-01-02', '2021-03-01', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(3, 1, 'Santiago', 'Del Campos', '678945', '+591_67832', 'M', '2020-03-01', '2021-03-01', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(4, 1, 'Lorena', 'Alavares', '567845h', '+591_67832', 'F', '2020-01-04', '2021-03-01', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(5, 1, 'Adrian', 'Patiño', '656589', '+591_678320', 'M', '2020-01-05', '2021-03-08', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(6, 1, 'Pedro', 'Garnica', '456789b', '+591_670832', 'M', '2020-01-09', '2021-03-09', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(7, 1, 'Pablo', 'Arroyo', '456789b', '+591_6783200', 'M', '2020-01-10', '2021-03-11', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(8, 1, 'Sebastian', 'Garcia', '456089b', '+591_6780132', 'M', '2020-01-12', '2021-03-13', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(9, 1, 'Juan', 'Rodrigues', '456780b', '+591_6783202', 'M', '2020-01-14', '2021-03-14', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1),
(10, 1, 'Tatiana', 'Gonzales', '406789b', '+591_6783022', 'F', '2020-01-15', '2021-03-15', '2023-06-01 22:48:09', '2023-06-01 22:48:09', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ing_ambientales`
--

DROP TABLE IF EXISTS `ing_ambientales`;
CREATE TABLE IF NOT EXISTS `ing_ambientales` (
  `id_ing_ambiental` int NOT NULL AUTO_INCREMENT,
  `id_institucion` int NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `ap` varchar(15) DEFAULT NULL,
  `am` varchar(15) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `matricula` varchar(25) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_ing_ambiental`),
  KEY `id_institucion` (`id_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ing_ambientales`
--

INSERT INTO `ing_ambientales` (`id_ing_ambiental`, `id_institucion`, `nombres`, `ap`, `am`, `telefono`, `fecha_inicio`, `fecha_fin`, `genero`, `matricula`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 'Marcos', 'DeL Rio', 'Garcia', '591_698006540bo', '2019-01-01', '2019-02-02', 'M', 'asdf1200', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1),
(2, 1, 'Pedro', 'Campos', 'Rios', '591_569876043bo', '2019-01-02', '2019-02-03', 'M', 'a8sdf12', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1),
(3, 1, 'Mirco', 'Dias', 'Velasque', '591_60000543b', '2019-01-03', '2019-02-04', 'M', 'asdjf1002', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1),
(4, 1, 'Alex', 'Estrada', 'Bautista', '591_608700541b', '2019-01-04', '2019-02-05', 'M', 'a00sdf12', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1),
(5, 1, 'Fernanda', 'Sanchez', 'Mendieta', '591_8700541b', '2019-08-04', '2019-03-05', 'F', 'a001sdf12', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1),
(6, 1, 'Foreth', 'Martinez', 'Saldaña', '591_69800650bo', '2018-01-01', '2019-03-02', 'M', 'sdf1200', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1),
(7, 1, 'Kevin', 'Altamirando', 'Rojas', '591_59876043bo', '2018-02-02', '2019-03-03', 'M', 'a8df12', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1),
(8, 1, 'Rodrigo', 'Farfan', 'Cardozo', '591_0000543b', '2018-03-03', '2019-04-05', 'M', 'asdjf002', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1),
(9, 1, 'Sonia', 'Estrada', 'Bautista', '591_60870541b', '2018-04-12', '2019-04-06', 'F', 'a00sdf1', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1),
(10, 1, 'Leonardo', 'Garnica', 'Guzman', '591_700541', '2018-08-04', '2019-04-07', 'M', 'a01sd12', '2023-06-01 22:48:12', '2023-06-01 22:48:12', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

DROP TABLE IF EXISTS `institucion`;
CREATE TABLE IF NOT EXISTS `institucion` (
  `id_institucion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `direccion` varchar(40) NOT NULL,
  `logo` varchar(20) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id_institucion`, `nombre`, `telefono`, `direccion`, `logo`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 'sernap', '+591_456738bo', 'Tarija', 'logo.jpg', '2023-06-01 22:48:06', '2023-06-01 22:48:06', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitoreos`
--

DROP TABLE IF EXISTS `monitoreos`;
CREATE TABLE IF NOT EXISTS `monitoreos` (
  `id_monitoreo` int NOT NULL AUTO_INCREMENT,
  `id_ing_ambiental` int NOT NULL,
  `id_reserva_natural` int NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(40) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_monitoreo`),
  KEY `id_ing_ambiental` (`id_ing_ambiental`),
  KEY `id_reserva_natural` (`id_reserva_natural`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `monitoreos`
--

INSERT INTO `monitoreos` (`id_monitoreo`, `id_ing_ambiental`, `id_reserva_natural`, `hora_inicio`, `hora_fin`, `fecha`, `descripcion`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 1, '08:00:00', '12:00:00', '2020-01-03', 'Monitoreo Reserva de Sama', '2023-06-01 22:48:12', '2023-06-19 02:35:13', 'A', 1),
(2, 2, 1, '08:00:00', '16:00:00', '2020-01-04', 'Monitoreo Rio Guadalquivir', '2023-06-01 22:48:12', '2023-06-19 02:35:35', 'A', 1),
(3, 3, 1, '08:00:00', '15:00:00', '2020-01-05', 'Monitoreo Reserva de Sama', '2023-06-01 22:48:13', '2023-06-19 02:36:06', 'A', 1),
(4, 4, 1, '08:00:00', '16:00:00', '2020-01-06', 'Monitoreo Protocolo', '2023-06-01 22:48:13', '2023-06-19 02:38:53', 'A', 1),
(5, 1, 1, '08:00:00', '10:00:00', '2020-01-07', 'Monitoreo Santa Rosa', '2023-06-01 22:48:13', '2023-06-19 02:39:48', 'A', 1),
(6, 2, 1, '08:00:00', '12:00:00', '2020-01-08', 'Monitoreo Sama zona baja', '2023-06-01 22:48:13', '2023-06-19 02:39:15', 'A', 1),
(7, 3, 1, '08:00:00', '16:00:00', '2020-01-09', 'Monitoreo Carretera San Lorenzo', '2023-06-01 22:48:13', '2023-06-19 02:37:38', 'A', 1),
(8, 4, 1, '08:00:00', '14:00:00', '2020-01-10', 'Monitoreo Visita Tariquia', '2023-06-01 22:48:13', '2023-06-19 02:37:16', 'A', 1),
(9, 1, 1, '08:00:00', '13:00:00', '2020-01-11', 'Monitoreo San Mateo', '2023-06-01 22:48:13', '2023-06-19 02:37:05', 'A', 1),
(10, 2, 1, '08:00:00', '15:00:00', '2020-01-12', 'Monitoreo Monte Alto', '2023-06-01 22:48:13', '2023-06-19 02:36:23', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

DROP TABLE IF EXISTS `opciones`;
CREATE TABLE IF NOT EXISTS `opciones` (
  `id_opcion` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `opcion` varchar(30) NOT NULL,
  `contenido` varchar(65) NOT NULL,
  `orden` int NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_opcion`),
  KEY `id_grupo` (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id_opcion`, `id_grupo`, `opcion`, `contenido`, `orden`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 'personas', '../privada/personas/personas.php', 10, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(2, 1, 'usuarios', '../privada/usuarios/usuarios.php', 20, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(3, 1, 'grupos', '../privada/grupos/grupos.php', 30, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(4, 1, 'roles', '../privada/roles/roles.php', 40, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(5, 1, 'usuarios_roles', '../privada/usuarios_roles/usuarios_roles.php', 50, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(6, 1, 'opciones', '../privada/opciones/opciones.php', 60, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(7, 1, 'accesos', '../privada/accesos/accesos.php', 70, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(8, 2, 'institucion', '../privada/institucion/institucion.php', 10, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(9, 2, 'reserva_natural', '../privada/reserva_natural/reserva_natural.php', 10, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1),
(10, 3, 'visitas_reservas', '../privada/visitas_reservas/visitas_reservas.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(11, 2, 'personas_', '../privada/personas_/personas_.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(12, 2, 'denuncias_Incendios', '../privada/denuncias_incendios/denuncias_Incendios.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(13, 2, 'guarda_parques', '../privada/guarda_parques/guarda_parques.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(14, 3, 'alertar_incendio', '../privada/alerta_incendio/alertar_incendio.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(15, 3, 'servicios_bomberos', '../privada/servicios_bomberos/servicios_bomberos.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(16, 3, 'revisiones', '../privada/revisiones/revisiones.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(17, 3, 'administradores', '../privada/administradores/administradores.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(18, 2, 'ing_ambientales', '../privada/ing_ambientales/ing_ambientales.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(19, 3, 'monitoreos', '../privada/monitoreos/monitoreos.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(20, 2, 'director_guarda_parques', '../privada/director_guarda_parques/director_guarda_parques.php', 10, '2023-06-01 22:48:17', '2023-06-01 22:48:17', 'A', 1),
(21, 6, 'Guarda_parques_alerta_ince', '../privada/reportes/guarda_parques_alertar_incendios.php', 10, '2023-06-01 22:48:17', '2023-09-06 01:06:29', 'A', 1),
(22, 4, 'Rpt_Persona_con_fechas', '../privada/reportes/rpt_personas2.php', 20, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(23, 5, 'PRODUCTOS', '../privada/productos/productos.php', 10, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(24, 5, 'REPORTES PRODUCTOS PRECIOS', '../privada/reportes/rpt_productos_precios.php', 20, '2023-06-01 22:48:18', '2023-06-02 03:53:19', 'X', 1),
(25, 5, 'PRODUCTOS PRECIOS', '../privada/productos_precios/productos_precios.php', 10, '2023-06-01 22:48:18', '2023-06-01 22:48:18', 'A', 1),
(26, 5, 'REPORTES PRODUCTOS', '../privada/reportes/rpt_productos_fechas.php', 20, '2023-06-01 22:48:18', '2023-06-02 03:53:22', 'X', 1),
(28, 4, 'FICHA TECNICA DE PERSONAS', '../privada/reportes/ficha_tec_persona.php', 30, '2023-06-16 00:39:16', '2023-06-19 01:45:58', 'A', 1),
(29, 4, 'FICHA TECNICA DE SERVICIOS BOM', '../privada/reportes/ficha_tec_servicios_bomberos.php', 40, '2023-06-19 01:44:54', '2023-06-19 01:46:03', 'A', 1),
(30, 6, 'Productos Precios', '../privada/productos_precios/productos_precios.php', 50, '2023-06-19 02:24:13', '2023-09-06 01:06:18', 'A', 1),
(31, 5, 'RPT Trabajos x Personal', '../privada/reportes/personal_trabajos.php', 70, '2023-06-21 00:22:11', '2023-06-15 00:13:26', '1', 1),
(32, 6, 'Ficha Técnica de Trabajos', '../privada/reportes/ficha_tec_trabajos.php', 70, '2023-06-21 00:32:24', '2023-06-30 00:27:34', 'A', 1),
(33, 7, 'REPORTE GRAFICOS', '../privada/reportes/rpt_estadisticos.php', 70, '2023-06-27 23:26:55', '2023-09-06 01:05:58', 'A', 1),
(34, 6, 'Ficha Técnica de Compras', '../privada/reportes/compras.php', 70, '2023-06-27 23:30:30', '2023-06-28 03:18:37', 'A', 1),
(35, 5, 'DEVOLUCIONES', '../privada/devoluciones/devoluciones.php', 70, '2023-06-29 22:34:27', '2023-06-30 22:29:31', 'A', 1),
(36, 6, 'Reportes Graficos', ' ../privada/reportes/reportes_graficos.php', 70, '2023-08-06 00:50:43', '2023-09-06 01:06:07', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

DROP TABLE IF EXISTS `personal`;
CREATE TABLE IF NOT EXISTS `personal` (
  `id_Personal` int NOT NULL AUTO_INCREMENT,
  `fecha_Inicio` date NOT NULL,
  `Nombres` varchar(25) NOT NULL,
  `Apellidos` varchar(25) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Ci` varchar(40) NOT NULL,
  PRIMARY KEY (`id_Personal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id_Personal`, `fecha_Inicio`, `Nombres`, `Apellidos`, `Correo`, `Direccion`, `Telefono`, `Ci`) VALUES
(1, '2010-01-20', 'DANIEL ALBERTO', 'GUZMAN FARFAN', 'daniel12@gmail.com', 'B/SAN LUIS', '73458996', '7219680'),
(2, '2010-02-10', 'BENITO CARLOS', 'VILTE CESPEDES', 'benito12@gmail.com', 'B/SAN MARCOS', '77884105', '7854255'),
(3, '2011-02-10', 'MARIA CARLA', 'SANCHEZ PEREZ', 'maria23@gmail.com', 'B/LOURDES', '45453222', '775755'),
(4, '2011-02-10', 'CELESTE', 'PALACIOS BURGOS', 'celeste2@gmail.com', 'B/San PEDRO', '75945424', '897547'),
(5, '2012-02-10', 'PEDRO CARLOS', 'DAVALOS YURQUINA', 'pedro56@gmail.com', 'B/CALAMUCHITA', '24266642', '9898658'),
(6, '2012-02-10', 'ESTEFANIA MARIA', 'VARGAS MENDOZA', 'estefania8@gmail.com', 'B/EL MOLLAR', '78622100', '788878'),
(7, '2009-02-10', 'NADIA PERLA', 'QUISPE MENDEZ', 'nadia3@gmail.com', 'B/AVAROA', '72464545', '8254221'),
(8, '2009-02-10', 'BLANCA ELENA', 'HOYOS CESPEDES', 'blanca345@gmail.com', 'B/PEDRO FLORES', '75794752', '787888'),
(9, '2020-02-10', 'ELIDA ANA', 'GUDIÑO CORTEZ', 'elida56@gmail.com', 'B/SAN BERNARDO', '77441125', '444478'),
(10, '2020-02-10', 'ALEJANDRA ', 'LLANOS PERLA', 'ale432@gmail.com', 'B/AEROPUERTO', '75757577', '785754');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

DROP TABLE IF EXISTS `personas`;
CREATE TABLE IF NOT EXISTS `personas` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `id_institucion` int NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `ap` varchar(15) DEFAULT NULL,
  `am` varchar(15) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `ci` varchar(15) NOT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  `genero` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `id_institucion` (`id_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_persona`, `id_institucion`, `nombres`, `ap`, `am`, `telefono`, `ci`, `direccion`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`, `genero`) VALUES
(1, 1, 'Foreth', 'Martinez', 'Saldaña', '+591_6754039bo', '8976540a', 'Bario_Menbrillo', '2023-06-01 22:48:15', '2023-06-16 00:28:12', 'A', 1, 'M'),
(2, 1, 'Yanina', 'Vargas', 'Guzman', '+591_7400639bo', '8976540a', 'Mercado la loma', '2023-06-01 22:48:15', '2023-06-16 00:28:07', 'A', 1, 'F'),
(3, 1, 'Anthony', 'Torrico', 'Gozales', '+591_6043639bo', '8906540a', 'Av la Paz', '2023-06-01 22:48:15', '2023-06-16 00:28:17', 'A', 1, 'M'),
(4, 1, 'Kaydem', 'Duran', 'Herrera', '+591_604363bo', '8970540a', 'Parque Bolivar', '2023-06-01 22:48:15', '2023-06-16 00:28:22', 'A', 1, 'M'),
(5, 1, 'Fernanda', 'Sanchez', 'Mendieta', '+591_6700639bo', '8076540a', 'Bario Quiroga', '2023-06-01 22:48:15', '2023-06-16 00:28:27', 'A', 1, 'F'),
(6, 1, 'Valeria', 'Sandoval', 'Guzman', '+591_9743639bo', '8976500a', 'Bario_Aranjuez', '2023-06-01 22:48:15', '2023-06-16 00:28:30', 'A', 1, 'F'),
(7, 1, 'Michell', 'Meza', 'Tejerina', '+591_6750639bo', '8976510a', 'Av Gran Chaco', '2023-06-01 22:48:15', '2023-08-04 03:54:29', 'X', 1, 'F'),
(8, 1, 'Jenesis', 'Nañes', 'Cardozo', '+591_653000bo', '8976520a', 'Av Circunvalacion', '2023-06-01 22:48:15', '2023-08-04 03:33:23', 'X', 1, 'F'),
(9, 1, 'Bridman', 'Barca', 'Cardenas', '+591_675409bo', '8976530a', 'Av Gamoneda', '2023-06-01 22:48:15', '2023-06-16 00:28:39', 'A', 1, 'F'),
(10, 1, 'Marcos', 'Ramirez', 'Vilte', '+591_6754361bo', '8976590a', 'Maercado Central', '2023-06-01 22:48:15', '2023-06-16 00:28:43', 'A', 1, 'M'),
(11, 1, 'C', 'A', 'B', '3', '3', 'D', '2023-08-04 07:19:20', '2023-08-04 03:19:26', 'X', 1, NULL),
(12, 1, 'C3', 'A1', 'B2', '2', '3', 'D4', '2023-08-04 07:22:06', '2023-08-04 03:23:46', 'X', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_`
--

DROP TABLE IF EXISTS `personas_`;
CREATE TABLE IF NOT EXISTS `personas_` (
  `id_persona_` int NOT NULL AUTO_INCREMENT,
  `id_reserva_natural` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(15) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `ci` varchar(15) NOT NULL,
  `genero` char(1) DEFAULT NULL,
  `fecha_nac` date NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_persona_`),
  KEY `id_reserva_natural` (`id_reserva_natural`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `personas_`
--

INSERT INTO `personas_` (`id_persona_`, `id_reserva_natural`, `nombre`, `apellido`, `telefono`, `ci`, `genero`, `fecha_nac`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 'Fernanda', 'Sanchez', '591_67540639bo', '8976540a', 'F', '2001-07-09', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(2, 1, 'Foreth', 'Diaz', '591_67540639bo', '8976540a', 'M', '2001-12-24', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(3, 1, 'Kaydem', 'Torres', '591_67540639bo', '8976540a', 'M', '2001-11-09', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(4, 1, 'Valeria', 'Duran', '591_67540639bo', '8976540a', 'F', '2002-07-13', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(5, 1, 'Paolo', 'Arancibia', '591_67540639bo', '8976540a', 'M', '2000-05-02', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(6, 1, 'Marcos', 'Medrano', '591_67540639bo', '8976540a', 'M', '1999-04-05', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(7, 1, 'Kenia', 'Garay', '591_67540639bo', '8976540a', 'F', '2001-06-16', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(8, 1, 'Sebastian', 'Mamani', '591_67540639bo', '8976540a', 'M', '1998-08-07', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(9, 1, 'Pablo', 'Contreras', '591_67540639bo', '8976540a', 'M', '2000-04-08', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1),
(10, 1, 'Marcos', 'Estrada', '591_67540639bo', '8976540a', 'M', '2001-09-23', '2023-06-01 22:48:08', '2023-06-01 22:48:08', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  `modelo` varchar(10) NOT NULL,
  `marca` varchar(10) NOT NULL,
  `industria_origen` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `descripcion`, `modelo`, `marca`, `industria_origen`) VALUES
(1, 'Alicate de corte para electrónica de 5\"', 'TR-17314', 'TRUPER', 'MEXICO'),
(2, 'Cable de proteccion c/gancho de stop para liniero', 'TR-16023', 'TRUPER', 'MEXICO'),
(3, 'Compás interno 6\"', '730-1', 'GEDORE', 'BRASIL'),
(4, 'Compresimetro para medir precion de aceite en motores', '912G1', 'FORCE', 'TAIWAN'),
(5, 'Escalera extensible fibra vidrio 136Kg. 9,75Mts. 32peldaños', 'DXL3020-32', 'DEWALT', 'MEXICO'),
(6, 'Escalera extensible fibra vidrio 113Kg. 7,62Mts. 28peldaños', 'D5028-MX', 'WERNER', 'MEXICO'),
(7, 'Guantes de soldador reforzado en palma y muñeca azul', 'GSA11470', 'RINO', 'BRASIL'),
(8, 'Hidrometro para bateria de 6,12 y 24 V. ', '79-046', 'STANLEY', 'BRASIL'),
(9, 'Porta Macho nº 6  (1/4\" - 3/4\")', 'M6-M20', 'SCK', 'JAPON'),
(10, 'Prensa gatillo  24\" para madera', '524QCN', 'IRWIN', 'BRASIL'),
(11, 'D', 'a', 'B', 'C'),
(12, 'D', 'a', 'B', 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_precios`
--

DROP TABLE IF EXISTS `productos_precios`;
CREATE TABLE IF NOT EXISTS `productos_precios` (
  `id_producto_precio` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `fecha_prec_compra` date NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `fecha_prec_venta` date NOT NULL,
  PRIMARY KEY (`id_producto_precio`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos_precios`
--

INSERT INTO `productos_precios` (`id_producto_precio`, `id_producto`, `fecha_prec_compra`, `precio_compra`, `precio_venta`, `fecha_prec_venta`) VALUES
(6, 2, '2020-02-07', 427.3, 429, '2020-07-21'),
(7, 3, '2020-08-11', 118.3, 126.6, '2020-07-21'),
(8, 10, '2020-08-11', 208.8, 223.6, '2020-07-21'),
(9, 5, '2020-08-20', 2371.7, 3175, '2020-07-21'),
(10, 6, '2020-08-20', 2186.3, 2936.8, '2020-07-21'),
(15, 2, '2023-08-16', 324, 23, '2023-08-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `ci` varchar(15) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `ci`, `nombre`, `apellidos`, `direccion`, `telefono`) VALUES
(1, '4569876', 'MICAELA', 'MIRANADA', 'CALLE LOURDES', '66-52368'),
(2, '3698521', 'OSCAR', 'MERCADO LEON', 'CALLE EUZTAQUIO MENDESZ', '66-45668'),
(3, '4569821', 'ROCIO', 'GUERRERO GIMENEZ', 'CALLE DEFENSORES ', '66-78569'),
(4, '4587563', 'BELEN', 'SAGARDIA MARTINEZ', 'CALLE MADRID', '66-25846'),
(5, '7853214', 'ROSELA', 'VILLANUEVO', 'CALLE SAN LUIS', '66-42365');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_natural`
--

DROP TABLE IF EXISTS `reserva_natural`;
CREATE TABLE IF NOT EXISTS `reserva_natural` (
  `id_reserva_natural` int NOT NULL AUTO_INCREMENT,
  `id_institucion` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_reserva_natural`),
  KEY `id_institucion` (`id_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `reserva_natural`
--

INSERT INTO `reserva_natural` (`id_reserva_natural`, `id_institucion`, `nombre`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 'Reserva(Sama)', '2023-06-01 22:48:06', '2023-06-01 22:48:06', 'A', 1),
(2, 1, 'Reserva(Tariquia)', '2023-06-01 22:48:06', '2023-06-01 22:48:06', 'A', 1),
(3, 1, 'Reserva(Cordilleras)', '2023-06-01 22:48:06', '2023-06-01 22:48:06', 'A', 1),
(4, 1, 'Reserva(LosAndes)', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(5, 1, 'Reserva(San nicolas)', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(6, 1, 'Reserva(Madidi)', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(7, 1, 'Reserva(Amboro)', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(8, 1, 'Reserva(Toro Toro)', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(9, 1, 'Reserva(Tunari)', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(10, 1, 'Reserva(El Palmar)', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(11, 1, 'A', '2023-08-06 04:19:53', '2023-08-06 00:20:32', 'X', 1),
(12, 1, 'A', '2023-08-06 04:22:27', '2023-08-06 00:22:47', 'X', 1),
(13, 1, 'B', '2023-08-06 04:25:49', '2023-08-06 00:25:53', 'X', 1),
(14, 1, 'C', '2023-08-06 04:27:35', '2023-08-06 00:27:35', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisiones`
--

DROP TABLE IF EXISTS `revisiones`;
CREATE TABLE IF NOT EXISTS `revisiones` (
  `id_revision` int NOT NULL AUTO_INCREMENT,
  `id_guarda_parque` int NOT NULL,
  `id_reserva_natural` int NOT NULL,
  `fecha` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `descripcion` varchar(35) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_revision`),
  KEY `id_guarda_parque` (`id_guarda_parque`),
  KEY `id_reserva_natural` (`id_reserva_natural`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `revisiones`
--

INSERT INTO `revisiones` (`id_revision`, `id_guarda_parque`, `id_reserva_natural`, `fecha`, `hora_inicio`, `hora_fin`, `descripcion`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 1, '2018-01-01', '08:00:00', '12:00:00', ' ', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(2, 2, 1, '2018-02-02', '08:00:00', '13:00:00', ' ', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(3, 3, 1, '2018-01-03', '08:00:00', '14:00:00', ' ', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(4, 4, 1, '2018-01-04', '08:00:00', '16:00:00', '', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(5, 5, 1, '2018-01-05', '08:00:00', '15:00:00', ' ', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(6, 6, 1, '2018-01-06', '08:00:00', '17:00:00', ' ', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(7, 7, 1, '2018-01-07', '08:00:00', '14:00:00', ' ', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(8, 8, 1, '2018-01-08', '08:00:00', '11:00:00', ' ', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(9, 9, 1, '2018-01-09', '08:00:00', '17:00:00', ' ', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1),
(10, 10, 1, '2018-01-01', '08:00:00', '15:00:00', ' ', '2023-06-01 22:48:11', '2023-06-01 22:48:11', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(20) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 'administrador', '2023-06-01 22:48:15', '2023-06-01 22:48:15', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_bomberos`
--

DROP TABLE IF EXISTS `servicios_bomberos`;
CREATE TABLE IF NOT EXISTS `servicios_bomberos` (
  `id_servicio_bombero` int NOT NULL AUTO_INCREMENT,
  `id_alerta_incendio` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_servicio_bombero`),
  KEY `id_alerta_incendio` (`id_alerta_incendio`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `servicios_bomberos`
--

INSERT INTO `servicios_bomberos` (`id_servicio_bombero`, `id_alerta_incendio`, `nombre`, `telefono`, `direccion`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 'Brasschaat', '+591_5101bo', 'Tarija', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(2, 2, 'Brasschaat', '+591_101bo', 'Villamontes', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(3, 3, 'Brasschaat', '+591_101bo', 'Yacuiba', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(4, 4, 'Brasschaat', '+591_101bo', 'Santa Cruz', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(5, 5, 'Brasschaat', '+591_5101bo', 'Beni', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(6, 6, 'Brasschaat', '+591_10189bo', 'San Lorenzo', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(7, 7, 'Brasschaat', '+591_10167bo', 'Puente', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(8, 8, 'Brasschaat', '+591_10145bo', 'Entre Rios', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(9, 9, 'Brasschaat', '+591_10231bo', 'Tarija Av Circunvalacio', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1),
(10, 10, 'Brasschaat', '+591_10091bo', 'Tarija Av La Paz', '2023-06-01 22:48:10', '2023-06-01 22:48:10', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

DROP TABLE IF EXISTS `trabajos`;
CREATE TABLE IF NOT EXISTS `trabajos` (
  `id_Trabajo` int NOT NULL AUTO_INCREMENT,
  `id_Personal` int NOT NULL,
  `Trabajo` varchar(25) NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `precio` float NOT NULL,
  `Cantidad` int NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_Trabajo`),
  KEY `id_Personal` (`id_Personal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`id_Trabajo`, `id_Personal`, `Trabajo`, `Foto`, `precio`, `Cantidad`, `Descripcion`) VALUES
(1, 1, 'BISAGRAS', 'img.png', 45.5, 12, 'GRANDES'),
(2, 2, 'JALADORES', 'img2.png', 65.5, 5, 'MEDIANO'),
(3, 3, 'PICOS', 'img3.png', 90, 7, 'LARGOS'),
(4, 4, 'GANCHOS', 'img4.png', 4, 10, 'GRANDES'),
(5, 6, 'PICAPORTES', 'img5.png', 75.5, 11, 'CHIQUITOS'),
(6, 5, 'HERRAJES', 'img6.png', 45, 6, 'MEDIDA 10'),
(7, 8, 'ESTRELLAS', 'img7.png', 5.5, 5, 'FLOR'),
(8, 9, 'PORRILLOS', 'img8.png', 25.5, 4, 'GRANDES'),
(9, 10, 'VINEROS', 'img9.png', 105.5, 2, 'DISEÑO UNA'),
(10, 7, 'CIERRAS', 'img10.png', 45.5, 1, 'LARGA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `id_persona` int NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_persona` (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_persona`, `usuario`, `clave`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 'admin', '$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK', '2023-06-01 22:48:15', '2023-06-01 22:48:15', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_roles`
--

DROP TABLE IF EXISTS `usuarios_roles`;
CREATE TABLE IF NOT EXISTS `usuarios_roles` (
  `id_usuario_rol` int NOT NULL AUTO_INCREMENT,
  `id_rol` int NOT NULL,
  `id_usuario` int NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_usuario_rol`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_rol` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_roles`
--

INSERT INTO `usuarios_roles` (`id_usuario_rol`, `id_rol`, `id_usuario`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, 1, '2023-06-01 22:48:16', '2023-06-01 22:48:16', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
CREATE TABLE IF NOT EXISTS `vendedores` (
  `id_vendedor` int NOT NULL AUTO_INCREMENT,
  `id_empresa` int NOT NULL,
  `ci` varchar(15) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(35) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id_vendedor`),
  KEY `id_empresa` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas_reserva`
--

DROP TABLE IF EXISTS `visitas_reserva`;
CREATE TABLE IF NOT EXISTS `visitas_reserva` (
  `id_visita_reserva` int NOT NULL AUTO_INCREMENT,
  `id_reserva_natural` int NOT NULL,
  `fecha_visita` date NOT NULL,
  `_fec_insercion` timestamp NOT NULL,
  `_fec_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_estado` char(1) NOT NULL,
  `_usuario` int NOT NULL,
  PRIMARY KEY (`id_visita_reserva`),
  KEY `id_reserva_natural` (`id_reserva_natural`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `visitas_reserva`
--

INSERT INTO `visitas_reserva` (`id_visita_reserva`, `id_reserva_natural`, `fecha_visita`, `_fec_insercion`, `_fec_modificacion`, `_estado`, `_usuario`) VALUES
(1, 1, '2020-01-01', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(2, 1, '2020-01-02', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(3, 1, '2020-01-03', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(4, 1, '2020-01-04', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(5, 1, '2020-01-05', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(6, 1, '2020-01-06', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(7, 1, '2020-01-07', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(8, 1, '2020-01-08', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(9, 1, '2020-01-09', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1),
(10, 1, '2020-01-15', '2023-06-01 22:48:07', '2023-06-01 22:48:07', 'A', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas_sitio`
--

DROP TABLE IF EXISTS `visitas_sitio`;
CREATE TABLE IF NOT EXISTS `visitas_sitio` (
  `id_visita` int NOT NULL AUTO_INCREMENT,
  `pagina_visitada` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_visita`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `visitas_sitio`
--

INSERT INTO `visitas_sitio` (`id_visita`, `pagina_visitada`, `cantidad`) VALUES
(1, 'CURSO DE PHP ', 24),
(2, 'CURSO DE HTML', 41),
(3, 'CURSO DE CSS', 28),
(4, 'CURSO DE MODELO E-R', 21),
(5, 'CURSO DE MODELO RELACIONAL', 23),
(6, 'CURSO DE MYSQL BASICO', 23),
(7, 'CURSO DE MYSQL AVANZADO', 26),
(8, 'CURSO DE GIT', 28),
(9, 'CURSO DE NO SQL', 30);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesos`
--
ALTER TABLE `accesos`
  ADD CONSTRAINT `accesos_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `accesos_ibfk_2` FOREIGN KEY (`id_opcion`) REFERENCES `opciones` (`id_opcion`);

--
-- Filtros para la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `administradores_ibfk_1` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`);

--
-- Filtros para la tabla `alertar_incendio`
--
ALTER TABLE `alertar_incendio`
  ADD CONSTRAINT `alertar_incendio_ibfk_1` FOREIGN KEY (`id_guarda_parque`) REFERENCES `guarda_parques` (`id_guarda_parque`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `denuncias_incendios`
--
ALTER TABLE `denuncias_incendios`
  ADD CONSTRAINT `denuncias_incendios_ibfk_1` FOREIGN KEY (`id_persona_`) REFERENCES `personas_` (`id_persona_`);

--
-- Filtros para la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD CONSTRAINT `devoluciones_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `director_guarda_parques`
--
ALTER TABLE `director_guarda_parques`
  ADD CONSTRAINT `director_guarda_parques_ibfk_1` FOREIGN KEY (`id_guarda_parque`) REFERENCES `guarda_parques` (`id_guarda_parque`);

--
-- Filtros para la tabla `guarda_parques`
--
ALTER TABLE `guarda_parques`
  ADD CONSTRAINT `guarda_parques_ibfk_1` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`);

--
-- Filtros para la tabla `ing_ambientales`
--
ALTER TABLE `ing_ambientales`
  ADD CONSTRAINT `ing_ambientales_ibfk_1` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`);

--
-- Filtros para la tabla `monitoreos`
--
ALTER TABLE `monitoreos`
  ADD CONSTRAINT `monitoreos_ibfk_1` FOREIGN KEY (`id_ing_ambiental`) REFERENCES `ing_ambientales` (`id_ing_ambiental`),
  ADD CONSTRAINT `monitoreos_ibfk_2` FOREIGN KEY (`id_reserva_natural`) REFERENCES `reserva_natural` (`id_reserva_natural`);

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `opciones_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`);

--
-- Filtros para la tabla `personas_`
--
ALTER TABLE `personas_`
  ADD CONSTRAINT `personas__ibfk_1` FOREIGN KEY (`id_reserva_natural`) REFERENCES `reserva_natural` (`id_reserva_natural`);

--
-- Filtros para la tabla `productos_precios`
--
ALTER TABLE `productos_precios`
  ADD CONSTRAINT `productos_precios_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `reserva_natural`
--
ALTER TABLE `reserva_natural`
  ADD CONSTRAINT `reserva_natural_ibfk_1` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`);

--
-- Filtros para la tabla `revisiones`
--
ALTER TABLE `revisiones`
  ADD CONSTRAINT `revisiones_ibfk_1` FOREIGN KEY (`id_guarda_parque`) REFERENCES `guarda_parques` (`id_guarda_parque`),
  ADD CONSTRAINT `revisiones_ibfk_2` FOREIGN KEY (`id_reserva_natural`) REFERENCES `reserva_natural` (`id_reserva_natural`);

--
-- Filtros para la tabla `servicios_bomberos`
--
ALTER TABLE `servicios_bomberos`
  ADD CONSTRAINT `servicios_bomberos_ibfk_1` FOREIGN KEY (`id_alerta_incendio`) REFERENCES `alertar_incendio` (`id_alerta_incendio`);

--
-- Filtros para la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD CONSTRAINT `trabajos_ibfk_1` FOREIGN KEY (`id_Personal`) REFERENCES `personal` (`id_Personal`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`);

--
-- Filtros para la tabla `usuarios_roles`
--
ALTER TABLE `usuarios_roles`
  ADD CONSTRAINT `usuarios_roles_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `usuarios_roles_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD CONSTRAINT `vendedores_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`);

--
-- Filtros para la tabla `visitas_reserva`
--
ALTER TABLE `visitas_reserva`
  ADD CONSTRAINT `visitas_reserva_ibfk_1` FOREIGN KEY (`id_reserva_natural`) REFERENCES `reserva_natural` (`id_reserva_natural`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
