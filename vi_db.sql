-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2022 a las 18:53:04
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vi_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `status`) VALUES
(1, 'electronica', 'electro', 'img_957abb0903ecca6f0478c800b545a73c.jpg', '2022-10-17 10:41:30', 1),
(2, 'tecnologia', 'tecno', 'img_80a3a0531310a06f33e18298f6e33ee1.jpg', '2022-10-17 10:43:13', 1),
(3, 'prueba', 'prueba', 'img_3662d3bc8586337927135f61ec5197e8.jpg', '2022-10-17 10:50:57', 1),
(4, 'tecno', 'dadad', 'img_db505252f2d5c4b36dcd7bba0b4698a7.jpg', '2022-10-17 11:54:43', 1),
(5, 'carros', 'color rojo', 'img_ec3fca2c053329a579df3f91ad328e62.jpg', '2022-10-17 12:01:17', 1),
(6, '43434', 'eer', 'img_c63111e9f9c2bb4d6b9e65d9754149ec.jpg', '2022-10-17 13:57:46', 0),
(7, 'Quimica', 'Productos Electronicos', 'portada_categoria.png', '2022-10-17 14:02:09', 0),
(8, 'Botellas', 'Rojas', 'portada_categoria.png', '2022-10-17 14:08:07', 0),
(9, 'Cel', 'Rojo', 'img_3e86c2341775225c32076c3ae67c5afb.jpg', '2022-10-17 14:14:32', 0),
(10, 'Comida', '2323', 'img_6bbd17f184150a6d9a2821cfb9f98c68.jpg', '2022-10-17 14:22:57', 0),
(11, 'Ropa', 'Variedad', 'img_6d84842ecfbc66fd265da7bf201ca58b.jpg', '2022-10-17 14:31:07', 0),
(12, 'Lentes', 'Bri', 'img_9853b6bba8cce849c567b89732fed344.jpg', '2022-10-17 14:37:37', 0),
(13, 'Lentesdd', 'Bri', 'img_eabe77d9c9a9891610ecff964dc08635.jpg', '2022-10-17 14:37:53', 0),
(14, 'naranja', '2378778', 'portada_categoria.png', '2022-10-17 14:39:20', 0),
(15, 'Dulces', '2232', 'img_6a0d4bc899c4859e1d959a6246fe7428.jpg', '2022-10-17 15:07:49', 0),
(16, 'Lapidas', 'Buen Electrónico', 'img_c17e6703e3299cdc6dbd8bc8664c0f9e.jpg', '2022-10-18 11:14:43', 0),
(17, 'nivelas', 'corona', 'img_6403c0f3686993a8260dfd361bc9980d.jpg', '2022-10-18 11:18:06', 0),
(18, 'Electrodomésticos', 'Electrodomésticos', 'portada_categoria.png', '2022-10-19 13:20:35', 1),
(19, 'Modas', 'Modas', 'portada_categoria.png', '2022-10-19 13:29:25', 1),
(20, 'Titanium', 'Titanium', 'portada_categoria.png', '2022-10-19 13:34:07', 1),
(21, 'victor', 'vannda', 'portada_categoria.png', '2022-10-19 13:38:35', 0),
(22, 'ggggggyyyy', 'yeryeyr', 'portada_categoria.png', '2022-10-19 13:48:56', 0),
(23, 'Focos', 'Focos', 'portada_categoria.png', '2022-10-19 14:08:42', 1),
(24, 'HDHHDSHDH', 'SDSDSHDHS', 'portada_categoria.png', '2022-10-19 14:15:46', 0),
(25, 'kakskask', 'sdsdjsjdsjkd', 'portada_categoria.png', '2022-10-19 14:21:03', 0),
(26, 'Tv', 'tv', 'portada_categoria.png', '2022-10-19 14:26:33', 1),
(27, 'Tenis', 'tenis', 'portada_categoria.png', '2022-10-19 14:30:22', 1),
(28, 'Suteresss', '42342432', 'portada_categoria.png', '2022-10-19 14:30:43', 1),
(29, 'Celulares t', 'celulares', 'portada_categoria.png', '2022-10-19 14:32:58', 1),
(30, 'Samsung', 'ssasa', 'portada_categoria.png', '2022-10-19 15:01:50', 1),
(31, 'Pantalones', 'rOJOS', 'portada_categoria.png', '2022-10-19 15:02:45', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categoria', 'Categoría Productos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT '0',
  `w` int(11) NOT NULL DEFAULT '0',
  `u` int(11) NOT NULL DEFAULT '0',
  `d` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(61, 4, 1, 0, 0, 0, 0),
(62, 4, 2, 0, 0, 0, 0),
(63, 4, 3, 1, 1, 1, 0),
(64, 4, 4, 0, 0, 0, 0),
(65, 4, 5, 0, 0, 0, 0),
(77, 11, 3, 0, 0, 0, 1),
(78, 11, 5, 0, 0, 0, 0),
(79, 11, 1, 1, 0, 0, 0),
(80, 11, 1, 1, 0, 0, 0),
(81, 11, 4, 0, 0, 0, 0),
(82, 11, 2, 0, 1, 1, 0),
(83, 11, 2, 0, 1, 1, 0),
(84, 11, 5, 0, 0, 0, 0),
(85, 11, 3, 0, 0, 0, 1),
(86, 11, 3, 0, 0, 0, 1),
(87, 11, 4, 0, 0, 0, 0),
(88, 11, 4, 0, 0, 0, 0),
(89, 11, 5, 0, 0, 0, 0),
(90, 11, 5, 0, 0, 0, 0),
(426, 2, 1, 1, 0, 0, 0),
(427, 2, 2, 1, 1, 1, 1),
(428, 2, 3, 0, 0, 0, 0),
(429, 2, 4, 0, 0, 0, 0),
(430, 2, 5, 0, 0, 0, 0),
(431, 2, 6, 0, 0, 0, 0),
(498, 1, 1, 1, 0, 0, 0),
(499, 1, 2, 1, 1, 1, 1),
(500, 1, 3, 1, 1, 1, 1),
(501, 1, 4, 1, 1, 0, 0),
(502, 1, 5, 1, 0, 0, 0),
(503, 1, 6, 1, 1, 1, 1),
(504, 3, 1, 1, 0, 0, 0),
(505, 3, 2, 0, 0, 0, 0),
(506, 3, 3, 0, 0, 0, 0),
(507, 3, 4, 1, 1, 0, 0),
(508, 3, 5, 0, 0, 0, 0),
(509, 3, 6, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombrefiscal` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `direccionfiscal` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '7897987987', 'Benjamin', 'Gracia', 246196675, 'benja@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '3533', 'Benja', 'utpx san lonrenzo', '', 1, '2020-08-13 00:51:44', 1),
(2, '565656sd', 'Julio Villasd', 'Cuatepotzowe', 5656565, 'julio56522@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2020-08-13 00:54:08', 1),
(3, '879846545454', 'Pablo', 'Arana', 784858856, 'pablo@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 3, '2020-08-14 01:42:34', 2),
(4, '65465465', 'Jorge', 'Arana', 987846545, 'jorge@info.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '', '', '', '', 3, '2020-08-22 00:27:17', 1),
(5, '4654654', 'Carme', 'Arana', 646545645, 'carmen@infom.com', 'be63ad947e82808780278e044bcd0267a6ac6b3cd1abdb107cc10b445a182eb0', '', '', '', '', 1, '2020-08-22 00:35:04', 1),
(6, '8465484', 'Alex', 'Jimenez', 333333, 'alex@info.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '111114545', 'Alex Flores', 'Avenida Zacatelco', '', 2, '2020-08-22 00:48:50', 1),
(7, '333', 'Eden', 'Flores Carreto', 2461966795, 'eden.flores.1234@gmail.com', 'a594fd41737a1cb22e514a2a62cd136760994e46556b72fa4b26aa626ab1773e', '', '', '', '', 1, '2022-09-27 12:36:02', 1),
(12, '1223', 'Alex', 'Gonzalez', 224444444, 'alexgoga@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2022-10-10 09:04:50', 1),
(13, '5555', 'Cars', 'Perez', 232323, 'car@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2022-10-10 13:29:00', 1),
(14, '343434', 'Edede', 'Sffsf', 46464, 'benha@info.com', 'a1fb4e703a9ef1fa4936801721ff285a97ac85330856674412e054892afe6972', '1235', 'benja', 'me', '', 7, '2022-10-12 10:52:05', 0),
(15, '1323232', 'Javier', 'Sanchez', 232323, 'javi@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '121212', 'Javier', 'Zacatelco', '', 7, '2022-10-13 12:40:40', 0),
(16, '23232', 'Andy', 'To', 22326, 'andy@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'dede', 'Andyt', 'ocotlan', '', 3, '2022-10-13 12:42:21', 1),
(17, '232323', 'VITC', 'Torres', 23232, 'vico@gamail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'vitod', 'utxl', '', 7, '2022-10-13 13:01:18', 1),
(18, '77777', 'EdedeDEDE', 'EDEDE', 23232, 'aaaaa@gmail.com', '0177ff8cc29c4dc5fdd5f361e8264a22bdc4bc04a9b8071e586b84ebeb57d3b6', '23232', 'dadd', 'jjj', '', 7, '2022-10-13 13:04:42', 1),
(19, '6454', 'Ximena', 'Vergara', 2384578, 'xime@gmai.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '777', 'XimenaVC', 'La Aurora', '', 7, '2022-10-13 13:09:42', 1),
(20, '1931116308', 'Victor Ignacio', 'Perez Garcia', 2147483647, 'zankaha99@gmail.com', '270411258fcab1c3e3aa98f44d38123c04f430cd147004f71de0a44561326cfe', '90195', 'Perez', 'Mariano Matamoros', '', 7, '2022-10-13 13:53:13', 1),
(21, '159644', 'Juan Carlos', 'Cote', 23232, 'coterie3334c@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '15289666666', 'Eric', 'Calle 45656', '', 7, '2022-10-17 15:02:19', 0),
(22, '789600', 'Jusrr', 'Benitez', 246274, 'juanno9@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '242424', 'Juanddaldl', 'utpx', '', 7, '2022-10-17 15:06:17', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `status`) VALUES
(1, 1, '12345', 'Producto 1', '<p>Descripcion producto 1</p> <table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"> <tbody> <tr> <td style=\"width: 47.9392%;\">Nuemro&nbsp;</td> <td style=\"width: 47.9392%;\">Descripcion</td> </tr> <tr> <td style=\"width: 47.9392%;\">Uno</td> <td style=\"width: 47.9392%;\">Peque&ntilde;o</td> </tr> <tr> <td style=\"width: 47.9392%;\">Dos</td> <td style=\"width: 47.9392%;\">Mediano</td> </tr> <tr> <td style=\"width: 47.9392%;\">Tres</td> <td style=\"width: 47.9392%;\">Grande</td> </tr> </tbody> </table>', '150.00', 150, '', '2022-10-20 11:30:59', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisores', 'Supervisor de tienda', 1),
(3, 'Vendedores', 'Acceso a módulo ventas', 1),
(4, 'Servicio al cliente', 'Servicio al cliente sistema', 1),
(5, 'Bodega', 'Bodega', 1),
(6, 'Resporteria', 'Resporteria Sistema', 2),
(7, 'Cliente', 'Clientes tienda', 2),
(8, 'Ejemplo rol', 'Ejemplo rol sitema', 0),
(9, 'Coordinador', 'Coordinador', 0),
(10, 'Consulta Ventas', 'Consulta Ventas', 0),
(11, 'sersdd', 'control', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
