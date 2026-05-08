-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2026 a las 17:55:32
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
-- Base de datos: `ci4_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_levels`
--

CREATE TABLE `cat_levels` (
  `pk_level` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `create.at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat_levels`
--

INSERT INTO `cat_levels` (`pk_level`, `level`, `create.at`) VALUES
(1, 'Administrador', '2026-03-13 09:04:13'),
(3, 'Estudiante', '2026-03-13 09:04:13'),
(4, 'Profesor', '2026-03-13 09:04:13'),
(5, 'Student', '2026-03-13 09:04:13'),
(10, 'Prueba', '2026-03-22 16:56:13'),
(11, 'Nivel 1 - Básico', '2026-04-30 12:51:25'),
(12, 'Nivel 2 - Intermedio', '2026-04-30 12:51:25'),
(13, 'Nivel 3 - Avanzado', '2026-04-30 12:51:25'),
(14, 'Nivel 4 - Experto', '2026-04-30 12:51:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigo`
--

CREATE TABLE `codigo` (
  `id_codigo` int(11) UNSIGNED NOT NULL,
  `codigo` varchar(120) NOT NULL,
  `id_equipo` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `codigo`
--

INSERT INTO `codigo` (`id_codigo`, `codigo`, `id_equipo`) VALUES
(1, 'COD-001-LAP', 1),
(2, 'COD-002-LAP', 1),
(3, 'COD-003-IMP', 2),
(4, 'COD-004-TEL', 3),
(5, 'COD-005-MON', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamento` int(11) UNSIGNED NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_departamento`, `descripcion`) VALUES
(1, 'Informática'),
(2, 'Administración'),
(3, 'Recursos Humanos'),
(4, 'Contabilidad'),
(5, 'Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id_equipo` int(11) UNSIGNED NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `id_tipo_codigo` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_equipo`, `codigo`, `descripcion`, `id_tipo_codigo`) VALUES
(1, 'LAP-001', 'Laptop Dell Inspiron 15', 1),
(2, 'IMP-001', 'Impresora HP LaserJet', 1),
(3, 'TEL-001', 'Teléfono IP Cisco', 3),
(4, 'MON-001', 'Monitor Samsung 24\"', 1),
(5, 'ESC-001', 'Escáner Epson', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_fotos`
--

CREATE TABLE `equipos_fotos` (
  `id_equipo` int(11) UNSIGNED NOT NULL,
  `id_foto` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos_fotos`
--

INSERT INTO `equipos_fotos` (`id_equipo`, `id_foto`) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id_foto` int(11) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id_foto`, `foto`) VALUES
(1, 'uploads/default.jpg'),
(2, 'uploads/equipo1.jpg'),
(3, 'uploads/equipo2.jpg'),
(4, 'uploads/equipo3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) UNSIGNED NOT NULL,
  `id_equipo` int(11) UNSIGNED NOT NULL,
  `id_no_serie` int(11) UNSIGNED NOT NULL,
  `id_ubicacion` int(11) UNSIGNED NOT NULL,
  `id_departamento` int(11) UNSIGNED NOT NULL,
  `cantidad` int(11) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `id_equipo`, `id_no_serie`, `id_ubicacion`, `id_departamento`, `cantidad`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 1, 2, 4, 1, 1),
(3, 2, 3, 2, 2, 1),
(4, 3, 4, 1, 1, 2),
(5, 4, 5, 3, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-03-07-100000', 'App\\Database\\Migrations\\CreateRolesTable', 'default', 'App', 1773323617, 1),
(2, '2026-03-20-000000', 'App\\Database\\Migrations\\Telegram', 'default', 'App', 1774215030, 2),
(3, '2024-10-19-000001', 'App\\Database\\Migrations\\FixTelegramUserId', 'default', 'App', 1777570690, 3),
(4, '2026-02-17-213357', 'App\\Database\\Migrations\\CreatePersonsTable', 'default', 'App', 1777570744, 4),
(5, '2026-02-18-001809', 'App\\Database\\Migrations\\CreateLevelsTable', 'default', 'App', 1777570744, 4),
(6, '2026-02-18-001932', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1777570744, 4),
(7, '2026-04-30-000010', 'App\\Database\\Migrations\\CreateInventorySchema', 'default', 'App', 1777570744, 4),
(8, '2026-06-01-000000', 'App\\Database\\Migrations\\SeedAllTables', 'default', 'App', 1777575134, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `no_serie`
--

CREATE TABLE `no_serie` (
  `id_no_serie` int(11) UNSIGNED NOT NULL,
  `no_serie` varchar(150) NOT NULL,
  `id_equipo` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `no_serie`
--

INSERT INTO `no_serie` (`id_no_serie`, `no_serie`, `id_equipo`) VALUES
(1, 'DELL-2024-001', 1),
(2, 'DELL-2024-002', 1),
(3, 'HP-2024-001', 2),
(4, 'CIS-2024-001', 3),
(5, 'SAM-2024-001', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Usuario administrador con acceso completo', NULL, NULL),
(2, 'vendedor', 'Usuario vendedor para gestión de ventas', NULL, NULL),
(3, 'estudiante', 'Usuario estudiante para ver contenido', NULL, NULL),
(4, 'profesor', 'Usuario profesor para gestionar contenido educativo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_persons`
--

CREATE TABLE `tbl_persons` (
  `pk_person` int(11) NOT NULL,
  `pk_phone` varchar(20) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_persons`
--

INSERT INTO `tbl_persons` (`pk_person`, `pk_phone`, `person`, `first_name`, `last_name`) VALUES
(1, '0519991122', 'Lic. Alex Collado Tercero', 'Teresa', 'Casado'),
(2, '0588533899', 'Srta. Raquel Arenas', 'Rafael', 'Casares'),
(3, '3846489577', 'Berta Benito', 'Nuria', 'Vega'),
(4, '9473676433', 'Dña Valeria Cazares', 'Leo', 'Pascual'),
(5, '4547282885', 'Sr. Daniel Velázquez Hijo', 'Pol', 'Herrero'),
(6, '8609148707', 'José Zamudio', 'Amparo', 'Pons'),
(7, '4479484443', 'Alejandro Romero', 'Jorge', 'Reséndez'),
(8, '1919899430', 'Úrsula Martín', 'Isaac', 'Cuenca'),
(9, '9778098907', 'Sr. Juan Lozada Tercero', 'Raquel', 'Guevara'),
(10, '5484606065', 'Josefa Robles', 'Francisco Javier', 'Negrete'),
(11, '1234567891', 'J', 'J', 'J'),
(12, '1234567899', 'J', 'J', 'J'),
(13, '123456789911', 'A', 'A', 'A'),
(14, '112345678991', 'A', 'A', 'A'),
(15, '12345678999', 'ññ', 'SS', 'AAA'),
(16, '0000000001', 'Juan Pérez', 'Juan', 'Pérez'),
(17, '0000000002', 'María García', 'María', 'García'),
(18, '0000000003', 'Carlos López', 'Carlos', 'López'),
(19, '0000000004', 'Ana Martínez', 'Ana', 'Martínez'),
(20, '0000000005', 'Pedro Sánchez', 'Pedro', 'Sánchez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_users`
--

CREATE TABLE `tbl_users` (
  `pk_user` varchar(20) NOT NULL,
  `fk_phone` varchar(20) DEFAULT NULL,
  `fk_person` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fk_level` int(11) NOT NULL,
  `locked` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reset_token` varchar(32) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_users`
--

INSERT INTO `tbl_users` (`pk_user`, `fk_phone`, `fk_person`, `password`, `fk_level`, `locked`, `created_at`, `updated_at`, `reset_token`, `reset_expires`) VALUES
('112345678991', '112345678991', 14, '$2y$10$/sQ7vIXmm6N.YXwPVJSK2eHYPWkhTMqhZUtXdxcTFn6nrGc9WRbVa', 4, 0, '2026-03-22 21:53:07', '2026-03-22 21:54:21', NULL, NULL),
('1234567891', '1234567891', 11, '$2y$10$qiXWX8FI0Kx4GsXDJ1NaIOObcW.xLbtyoataPGSKjuJacg7Po1h3e', 4, 0, '2026-03-12 14:07:07', '2026-03-22 21:51:54', NULL, NULL),
('1234567899', '1234567899', 12, '$2y$10$MjxmDNQvq9tfLdKWmyz6uOrxR0aWI9qtTMudEUxv/SHA8eO3y9b0u', 1, 0, '2026-03-12 14:08:29', '2026-03-13 01:57:27', NULL, NULL),
('123456789911', '123456789911', 13, '$2y$10$wcXMSU2QsjmBi0ULIZyG/uqW/Fq6/vZqtEqTdveBEpQ9..nZQohUW', 3, 0, '2026-03-13 02:21:14', '2026-03-27 15:52:48', 'da722744', '2026-03-26 01:30:33'),
('12345678999', '12345678999', 15, '$2y$10$wtjrplIkAuL5vOLakL0xKeQaPXCdxcY4j2NcjnA2lDVSD79WAMtsa', 4, 0, '2026-03-22 22:57:14', '2026-04-11 18:22:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telegram`
--

CREATE TABLE `telegram` (
  `id_telegram` int(10) UNSIGNED NOT NULL,
  `token` varchar(100) NOT NULL,
  `chat_id` varchar(50) NOT NULL,
  `bot_name` varchar(100) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `telegram`
--

INSERT INTO `telegram` (`id_telegram`, `token`, `chat_id`, `bot_name`, `user_id`, `created_at`, `updated_at`) VALUES
(38, '8343213734:AAFm8KHEn4-YU2ZPMYAJ1UOx_lIUw9R5swc', '8285892285', 'DEVHAPPY2', '1234567899', '2026-03-25 19:03:13', '2026-03-25 19:03:13'),
(39, '8343213734:AAFm8KHEn4-YU2ZPMYAJ1UOx_lIUw9R5swc', '8285892285', 'DEVHAPPY2', '1234567899', '2026-03-25 19:09:06', '2026-03-25 19:09:06'),
(40, '8343213734:AAFm8KHEn4-YU2ZPMYAJ1UOx_lIUw9R5swc', '8285892285', 'DEVHAPPY2', '1234567899', '2026-03-25 19:09:35', '2026-03-25 19:09:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_codigo`
--

CREATE TABLE `tipo_codigo` (
  `id_tipo_codigo` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_codigo`
--

INSERT INTO `tipo_codigo` (`id_tipo_codigo`, `nombre`) VALUES
(1, 'Código de Barras'),
(2, 'Código QR'),
(3, 'Número de Serie'),
(4, 'RFID');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicaciones`
--

CREATE TABLE `ubicaciones` (
  `id_ubicacion` int(11) UNSIGNED NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ubicaciones`
--

INSERT INTO `ubicaciones` (`id_ubicacion`, `descripcion`) VALUES
(1, 'Oficina Principal'),
(2, 'Almacén'),
(3, 'Sala de Reuniones'),
(4, 'Cubículo 1'),
(5, 'Recepción');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_levels`
--
ALTER TABLE `cat_levels`
  ADD PRIMARY KEY (`pk_level`);

--
-- Indices de la tabla `codigo`
--
ALTER TABLE `codigo`
  ADD PRIMARY KEY (`id_codigo`),
  ADD KEY `codigo_id_equipo_foreign` (`id_equipo`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `equipos_id_tipo_codigo_foreign` (`id_tipo_codigo`);

--
-- Indices de la tabla `equipos_fotos`
--
ALTER TABLE `equipos_fotos`
  ADD PRIMARY KEY (`id_equipo`,`id_foto`),
  ADD KEY `equipos_fotos_id_foto_foreign` (`id_foto`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `inventario_id_equipo_foreign` (`id_equipo`),
  ADD KEY `inventario_id_no_serie_foreign` (`id_no_serie`),
  ADD KEY `inventario_id_ubicacion_foreign` (`id_ubicacion`),
  ADD KEY `inventario_id_departamento_foreign` (`id_departamento`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `no_serie`
--
ALTER TABLE `no_serie`
  ADD PRIMARY KEY (`id_no_serie`),
  ADD KEY `no_serie_id_equipo_foreign` (`id_equipo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `tbl_persons`
--
ALTER TABLE `tbl_persons`
  ADD PRIMARY KEY (`pk_person`);

--
-- Indices de la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`pk_user`),
  ADD KEY `fk_person` (`fk_person`),
  ADD KEY `fk_level` (`fk_level`);

--
-- Indices de la tabla `telegram`
--
ALTER TABLE `telegram`
  ADD PRIMARY KEY (`id_telegram`),
  ADD KEY `telegram_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `tipo_codigo`
--
ALTER TABLE `tipo_codigo`
  ADD PRIMARY KEY (`id_tipo_codigo`);

--
-- Indices de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  ADD PRIMARY KEY (`id_ubicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_levels`
--
ALTER TABLE `cat_levels`
  MODIFY `pk_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `codigo`
--
ALTER TABLE `codigo`
  MODIFY `id_codigo` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamento` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id_foto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `no_serie`
--
ALTER TABLE `no_serie`
  MODIFY `id_no_serie` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_persons`
--
ALTER TABLE `tbl_persons`
  MODIFY `pk_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `telegram`
--
ALTER TABLE `telegram`
  MODIFY `id_telegram` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `tipo_codigo`
--
ALTER TABLE `tipo_codigo`
  MODIFY `id_tipo_codigo` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  MODIFY `id_ubicacion` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `codigo`
--
ALTER TABLE `codigo`
  ADD CONSTRAINT `codigo_id_equipo_foreign` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_id_tipo_codigo_foreign` FOREIGN KEY (`id_tipo_codigo`) REFERENCES `tipo_codigo` (`id_tipo_codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipos_fotos`
--
ALTER TABLE `equipos_fotos`
  ADD CONSTRAINT `equipos_fotos_id_equipo_foreign` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipos_fotos_id_foto_foreign` FOREIGN KEY (`id_foto`) REFERENCES `fotos` (`id_foto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_id_equipo_foreign` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_id_no_serie_foreign` FOREIGN KEY (`id_no_serie`) REFERENCES `no_serie` (`id_no_serie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_id_ubicacion_foreign` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicaciones` (`id_ubicacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `no_serie`
--
ALTER TABLE `no_serie`
  ADD CONSTRAINT `no_serie_id_equipo_foreign` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`fk_person`) REFERENCES `tbl_persons` (`pk_person`),
  ADD CONSTRAINT `tbl_users_ibfk_2` FOREIGN KEY (`fk_level`) REFERENCES `cat_levels` (`pk_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
