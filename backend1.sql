-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2023 a las 05:06:36
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `backend1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`, `createdAt`, `updatedAt`) VALUES
(1, 'Ayudante general', 'Servicio de ayudante general', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Construcción', 'Servicios de construcción en concreto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Servicios de soldadura', 'Servicios de soldadura en metales: Soldadura blanda, Soldadura fuerte y Soldadura fuerte a altas temperaturas.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Plomería', 'Servicios de plomería, instalación y mantenimiento de tinacos, cisternas, redes de tuberías y transporte de agua potable a casa.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Servicio de instalación eléctrica', 'Servicio de mantenimiento e instalacion de redes electricas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Pintado de paredes y techos', 'Servicio de todo tipo de pintura en paredes y techos del hogar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Arreglos y mantenimientos del Hogar', 'Servicio de mantenimiento y arreglos comunes en el hogar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Recogida de basura', 'Servicio de recogida de basura de todo tipo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Servicios de Jardineria', 'Servicio de jardineria en espacios abiertos o cerrados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Diseño y presupuesto', 'Servicio de asesoria para diseño y presupuesto para el hogar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Otra', 'Otro tipo de servicio en el area de construccion y del hogar', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id_experiencia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `lugarDeTrabajo` varchar(255) DEFAULT NULL,
  `experienciaDeTrabajo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id_experiencia`, `id_usuario`, `titulo`, `descripcion`, `lugarDeTrabajo`, `experienciaDeTrabajo`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'manejo obra blanca', 'servicio de obra blanca en la ciudad de popayan', 'popayan conjunto residencial la estacion', '3 meses', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'soldadura', 'especialista en diferentes tipos de soldadura', 'trabajos hechos en la ciudad de popayan', '1 año', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 'manejo obra negra ', 'especialista en diferentes tipos de obra negra', 'trabajos hechos en la ciudad de popayan', '1 año', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intereses`
--

CREATE TABLE `intereses` (
  `id_intereses` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `intereses`
--

INSERT INTO `intereses` (`id_intereses`, `id_categoria`, `id_usuario`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertaempleos`
--

CREATE TABLE `ofertaempleos` (
  `id_ofertaEmpleo` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `tipoDeContrato` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ofertaempleos`
--

INSERT INTO `ofertaempleos` (`id_ofertaEmpleo`, `titulo`, `salario`, `descripcion`, `ubicacion`, `tipoDeContrato`, `id_categoria`, `id_usuario`, `createdAt`, `updatedAt`) VALUES
(1, 'busco ayudante', 0, 'requiero ayudante general para obra de construccion en popayan', 'calle 58', 'indefinido', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'busco maestro de obra', 0, 'requiero servicio de maestro de obra para conjunto cerrado en popayan', 'calle 66', 'indefinido', 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'constructor', 0, 'necesito persona para trabajar en area de contruccion con experiencia', 'calle 67', 'indefinido', 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulaciones`
--

CREATE TABLE `postulaciones` (
  `id_postulaciones` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_ofertaEmpleo` int(11) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `postulaciones`
--

INSERT INTO `postulaciones` (`id_postulaciones`, `id_usuario`, `id_ofertaEmpleo`, `estado`, `fecha`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 'registrado', '02 marzo 2023', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 2, 'seleccionado', '25 enero 2023', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 3, 'registrado', '19 noviembre 2022', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id_rol` int(11) NOT NULL,
  `administrador` varchar(255) DEFAULT NULL,
  `postulante` varchar(255) DEFAULT NULL,
  `empleador` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id_rol`, `administrador`, `postulante`, `empleador`, `createdAt`, `updatedAt`) VALUES
(1, 'seleccionar', 'seleccionar', 'seleccionar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'seleccionar', 'seleccionar', 'seleccionar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'seleccionar', 'seleccionar', 'seleccionar', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230311202817-create-usuario.js'),
('20230311202818-create-categoria.js'),
('20230311203440-create-oferta-empleo.js'),
('20230311204147-create-intereses.js'),
('20230311204510-create-rol.js'),
('20230311204511-create-usuario-rol.js'),
('20230311205118-create-postulaciones.js'),
('20230311205508-create-experiencia.js');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariorols`
--

CREATE TABLE `usuariorols` (
  `id_usuarioRol` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuariorols`
--

INSERT INTO `usuariorols` (`id_usuarioRol`, `id_rol`, `id_usuario`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `nacionalidad` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `documento` float DEFAULT NULL,
  `fotoPerfil` varchar(255) DEFAULT NULL,
  `telefono` float DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombres`, `apellidos`, `nacionalidad`, `correo`, `documento`, `fotoPerfil`, `telefono`, `direccion`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'leyder', 'sanchez', 'colombia', 'correo@email.com', 1061540000, 'url', 3246770000, 'v/ el cairo - cajibio', 'leyder', '12345678', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'jhon', 'capote', 'colombia', 'correo@email.com', 10615400000, 'url', 3218760000, 'cra9 n 63', 'jhonc', '12345678', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'javier', 'galindez', 'colombia', 'correo@email.com', 1061530000, 'url', 3242640000, 'cll 5 n34', 'yagami', '12345678', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id_experiencia`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `intereses`
--
ALTER TABLE `intereses`
  ADD PRIMARY KEY (`id_intereses`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `ofertaempleos`
--
ALTER TABLE `ofertaempleos`
  ADD PRIMARY KEY (`id_ofertaEmpleo`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD PRIMARY KEY (`id_postulaciones`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_ofertaEmpleo` (`id_ofertaEmpleo`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `usuariorols`
--
ALTER TABLE `usuariorols`
  ADD PRIMARY KEY (`id_usuarioRol`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id_experiencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `intereses`
--
ALTER TABLE `intereses`
  MODIFY `id_intereses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ofertaempleos`
--
ALTER TABLE `ofertaempleos`
  MODIFY `id_ofertaEmpleo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  MODIFY `id_postulaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuariorols`
--
ALTER TABLE `usuariorols`
  MODIFY `id_usuarioRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `experiencia_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `intereses`
--
ALTER TABLE `intereses`
  ADD CONSTRAINT `intereses_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `intereses_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `ofertaempleos`
--
ALTER TABLE `ofertaempleos`
  ADD CONSTRAINT `ofertaempleos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `ofertaempleos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD CONSTRAINT `postulaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `postulaciones_ibfk_2` FOREIGN KEY (`id_ofertaEmpleo`) REFERENCES `ofertaempleos` (`id_ofertaEmpleo`);

--
-- Filtros para la tabla `usuariorols`
--
ALTER TABLE `usuariorols`
  ADD CONSTRAINT `usuariorols_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rols` (`id_rol`),
  ADD CONSTRAINT `usuariorols_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
