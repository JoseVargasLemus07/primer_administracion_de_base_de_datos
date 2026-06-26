-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2026 a las 22:46:53
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
-- Base de datos: `basilio_blandon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_encargado` int(11) DEFAULT NULL,
  `id_grado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `edad`, `correo`, `telefono`, `direccion`, `fecha_nacimiento`, `id_encargado`, `id_grado`) VALUES
(1, 'Juan', 'Pérez', 10, 'juan.perez@gmail.com', '70010001', 'San Salvador', '2015-03-12', 1, 1),
(2, 'María', 'López', 11, 'maria.lopez@gmail.com', '70010002', 'Santa Tecla', '2014-07-25', 2, 1),
(3, 'Carlos', 'Gómez', 9, 'carlos.gomez@gmail.com', '70010003', 'Soyapango', '2016-01-18', 3, 2),
(4, 'Ana', 'Martínez', 12, 'ana.martinez@gmail.com', '70010004', 'Mejicanos', '2013-09-10', 4, 2),
(5, 'José', 'Hernández', 10, 'jose.hernandez@gmail.com', '70010005', 'Apopa', '2015-05-22', 5, 3),
(6, 'Sofía', 'Ramírez', 11, 'sofia.ramirez@gmail.com', '70010006', 'Ilopango', '2014-12-08', 6, 3),
(7, 'Luis', 'Torres', 9, 'luis.torres@gmail.com', '70010007', 'Cuscatancingo', '2016-04-15', 7, 4),
(8, 'Valeria', 'Flores', 12, 'valeria.flores@gmail.com', '70010008', 'San Marcos', '2013-11-02', 8, 4),
(9, 'Miguel', 'Castro', 10, 'miguel.castro@gmail.com', '70010009', 'Ciudad Delgado', '2015-08-30', 9, 5),
(10, 'Daniela', 'Morales', 11, 'daniela.morales@gmail.com', '70010010', 'Antiguo Cuscatlán', '2014-06-11', 10, 5),
(11, 'Andrés', 'Rivas', 9, 'andres.rivas@gmail.com', '70010011', 'Nejapa', '2016-02-28', 11, 1),
(12, 'Fernanda', 'Cruz', 12, 'fernanda.cruz@gmail.com', '70010012', 'Tonacatepeque', '2013-10-20', 12, 1),
(13, 'Kevin', 'Ortiz', 10, 'kevin.ortiz@gmail.com', '70010013', 'San Martín', '2015-07-07', 13, 2),
(14, 'Camila', 'Vásquez', 11, 'camila.vasquez@gmail.com', '70010014', 'Ayutuxtepeque', '2014-04-17', 14, 2),
(15, 'Diego', 'Navarro', 9, 'diego.navarro@gmail.com', '70010015', 'Zacatecoluca', '2016-09-13', 15, 3),
(16, 'Gabriela', 'Mendoza', 12, 'gabriela.mendoza@gmail.com', '70010016', 'La Libertad', '2013-02-26', 16, 3),
(17, 'Samuel', 'Reyes', 10, 'samuel.reyes@gmail.com', '70010017', 'Colón', '2015-01-05', 17, 4),
(18, 'Isabella', 'Ruiz', 11, 'isabella.ruiz@gmail.com', '70010018', 'Quezaltepeque', '2014-08-09', 18, 4),
(19, 'David', 'Silva', 9, 'david.silva@gmail.com', '70010019', 'San Juan Opico', '2016-05-31', 19, 5),
(20, 'Natalia', 'Aguilar', 12, 'natalia.aguilar@gmail.com', '70010020', 'Chalatenango', '2013-12-15', 20, 5),
(21, 'Javier', 'Escobar', 10, 'javier.escobar@gmail.com', '70010021', 'Santa Ana', '2015-09-01', 21, 1),
(22, 'Paula', 'Alvarado', 11, 'paula.alvarado@gmail.com', '70010022', 'Sonsonate', '2014-03-19', 22, 2),
(23, 'Ricardo', 'Pineda', 9, 'ricardo.pineda@gmail.com', '70010023', 'Ahuachapán', '2016-07-23', 23, 3),
(24, 'Andrea', 'Campos', 12, 'andrea.campos@gmail.com', '70010024', 'Usulután', '2013-06-14', 24, 4),
(25, 'Óscar', 'Fuentes', 10, 'oscar.fuentes@gmail.com', '70010025', 'San Miguel', '2015-11-27', 25, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dui` varchar(10) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `id_materia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `apellidos`, `dui`, `telefono`, `correo`, `fecha_contratacion`, `salario`, `direccion`, `id_materia`) VALUES
(31, 'Juan', 'Pérez', '12345678-1', '72000001', 'juan.perez@basilio.edu.sv', '2022-01-15', 850.00, 'San Salvador', 1),
(32, 'Ana', 'Martínez', '12345678-2', '72000002', 'ana.martinez@basilio.edu.sv', '2021-03-10', 850.00, 'Santa Tecla', 2),
(33, 'Carlos', 'Gómez', '12345678-3', '72000003', 'carlos.gomez@basilio.edu.sv', '2020-07-20', 900.00, 'Soyapango', 3),
(34, 'María', 'López', '12345678-4', '72000004', 'maria.lopez@basilio.edu.sv', '2023-02-05', 850.00, 'Mejicanos', 4),
(35, 'Luis', 'Hernández', '12345678-5', '72000005', 'luis.hernandez@basilio.edu.sv', '2019-08-12', 950.00, 'Apopa', 5),
(36, 'Sofía', 'Ramírez', '12345678-6', '72000006', 'sofia.ramirez@basilio.edu.sv', '2022-05-18', 850.00, 'Ilopango', 6),
(37, 'Ricardo', 'Torres', '12345678-7', '72000007', 'ricardo.torres@basilio.edu.sv', '2021-11-01', 850.00, 'Cuscatancingo', 6),
(38, 'Patricia', 'Flores', '12345678-8', '72000008', 'patricia.flores@basilio.edu.sv', '2020-09-14', 800.00, 'San Marcos', 6),
(39, 'Miguel', 'Castro', '12345678-9', '72000009', 'miguel.castro@basilio.edu.sv', '2018-06-25', 900.00, 'Ciudad Delgado', 4),
(40, 'Daniela', 'Morales', '12345679-0', '72000010', 'daniela.morales@basilio.edu.sv', '2023-01-09', 800.00, 'Antiguo Cuscatlán', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargados`
--

CREATE TABLE `encargados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dui` varchar(10) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `parentesco` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `encargados`
--

INSERT INTO `encargados` (`id`, `nombre`, `apellidos`, `dui`, `telefono`, `correo`, `direccion`, `parentesco`) VALUES
(1, 'Carlos', 'Pérez', '01234567-1', '71000001', 'carlos.perez@gmail.com', 'San Salvador', 'Padre'),
(2, 'María', 'López', '01234567-2', '71000002', 'maria.lopez@gmail.com', 'Santa Tecla', 'Madre'),
(3, 'José', 'Gómez', '01234567-3', '71000003', 'jose.gomez@gmail.com', 'Soyapango', 'Padre'),
(4, 'Ana', 'Martínez', '01234567-4', '71000004', 'ana.martinez@gmail.com', 'Mejicanos', 'Madre'),
(5, 'Luis', 'Hernández', '01234567-5', '71000005', 'luis.hernandez@gmail.com', 'Apopa', 'Padre'),
(6, 'Rosa', 'Ramírez', '01234567-6', '71000006', 'rosa.ramirez@gmail.com', 'Ilopango', 'Madre'),
(7, 'Miguel', 'Torres', '01234567-7', '71000007', 'miguel.torres@gmail.com', 'Cuscatancingo', 'Padre'),
(8, 'Patricia', 'Flores', '01234567-8', '71000008', 'patricia.flores@gmail.com', 'San Marcos', 'Madre'),
(9, 'Ricardo', 'Castro', '01234567-9', '71000009', 'ricardo.castro@gmail.com', 'Ciudad Delgado', 'Padre'),
(10, 'Carmen', 'Morales', '01234568-0', '71000010', 'carmen.morales@gmail.com', 'Antiguo Cuscatlán', 'Madre'),
(11, 'Jorge', 'Rivas', '01234568-1', '71000011', 'jorge.rivas@gmail.com', 'Nejapa', 'Padre'),
(12, 'Sandra', 'Cruz', '01234568-2', '71000012', 'sandra.cruz@gmail.com', 'Tonacatepeque', 'Madre'),
(13, 'Fernando', 'Ortiz', '01234568-3', '71000013', 'fernando.ortiz@gmail.com', 'San Martín', 'Padre'),
(14, 'Gloria', 'Vásquez', '01234568-4', '71000014', 'gloria.vasquez@gmail.com', 'Ayutuxtepeque', 'Madre'),
(15, 'Héctor', 'Navarro', '01234568-5', '71000015', 'hector.navarro@gmail.com', 'Zacatecoluca', 'Padre'),
(16, 'Marta', 'Mendoza', '01234568-6', '71000016', 'marta.mendoza@gmail.com', 'La Libertad', 'Madre'),
(17, 'Roberto', 'Reyes', '01234568-7', '71000017', 'roberto.reyes@gmail.com', 'Colón', 'Padre'),
(18, 'Verónica', 'Ruiz', '01234568-8', '71000018', 'veronica.ruiz@gmail.com', 'Quezaltepeque', 'Madre'),
(19, 'Daniel', 'Silva', '01234568-9', '71000019', 'daniel.silva@gmail.com', 'San Juan Opico', 'Padre'),
(20, 'Julia', 'Aguilar', '01234569-0', '71000020', 'julia.aguilar@gmail.com', 'Chalatenango', 'Madre'),
(21, 'Oscar', 'Escobar', '01234569-1', '71000021', 'oscar.escobar@gmail.com', 'Santa Ana', 'Padre'),
(22, 'Mónica', 'Alvarado', '01234569-2', '71000022', 'monica.alvarado@gmail.com', 'Sonsonate', 'Madre'),
(23, 'Raúl', 'Pineda', '01234569-3', '71000023', 'raul.pineda@gmail.com', 'Ahuachapán', 'Padre'),
(24, 'Claudia', 'Campos', '01234569-4', '71000024', 'claudia.campos@gmail.com', 'Usulután', 'Madre'),
(25, 'Ernesto', 'Fuentes', '01234569-5', '71000025', 'ernesto.fuentes@gmail.com', 'San Miguel', 'Padre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id` int(11) NOT NULL,
  `nombre_grado` varchar(30) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id`, `nombre_grado`, `nivel`, `descripcion`) VALUES
(1, 'Primer Grado', 'Básica', 'Primer año de educación básica'),
(2, 'Segundo Grado', 'Básica', 'Segundo año de educación básica'),
(3, 'Tercer Grado', 'Básica', 'Tercer año de educación básica'),
(4, 'Cuarto Grado', 'Básica', 'Cuarto año de educación básica'),
(5, 'Quinto Grado', 'Básica', 'Quinto año de educación básica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre_materia` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre_materia`, `descripcion`) VALUES
(1, 'Matemáticas', 'Operaciones matemáticas y resolución de problemas'),
(2, 'Lenguaje', 'Comprensión lectora y expresión escrita'),
(3, 'Ciencias Naturales', 'Estudio de los seres vivos y el medio ambiente'),
(4, 'Estudios Sociales', 'Historia, geografía y sociedad'),
(5, 'Inglés', 'Aprendizaje del idioma inglés'),
(6, 'Informática', 'Uso de computadoras y tecnología'),
(7, 'Educación Física', 'Actividad física y deportes'),
(8, 'Educación Artística', 'Dibujo, pintura y expresión artística');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `estado` varchar(15) DEFAULT 'Activo',
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_docente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `correo`, `contrasena`, `rol`, `estado`, `fecha_creacion`, `id_docente`) VALUES
(11, 'admin1', 'admin1@basilio.edu.sv', 'admin123', 'Administrador', 'Activo', '2026-06-25 20:44:42', NULL),
(12, 'admin2', 'admin2@basilio.edu.sv', 'admin123', 'Administrador', 'Activo', '2026-06-25 20:44:42', NULL),
(13, 'admin3', 'admin3@basilio.edu.sv', 'admin123', 'Administrador', 'Activo', '2026-06-25 20:44:42', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `fk_alumno_encargado` (`id_encargado`),
  ADD KEY `fk_alumno_grado` (`id_grado`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dui` (`dui`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `fk_docente_materia` (`id_materia`);

--
-- Indices de la tabla `encargados`
--
ALTER TABLE `encargados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dui` (`dui`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `id_docente` (`id_docente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `encargados`
--
ALTER TABLE `encargados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `fk_alumno_encargado` FOREIGN KEY (`id_encargado`) REFERENCES `encargados` (`id`),
  ADD CONSTRAINT `fk_alumno_grado` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id`);

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `fk_docente_materia` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuario_docente` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
