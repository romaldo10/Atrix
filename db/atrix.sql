# Host: localhost  (Version 5.5.5-10.4.11-MariaDB)
# Date: 2021-04-17 00:10:29
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "cupos"
#

DROP TABLE IF EXISTS `cupos`;
CREATE TABLE `cupos` (
  `IdCupo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del cupo',
  `FechaCita` date DEFAULT NULL COMMENT 'Registra fecha de cita',
  `HoraCita` time DEFAULT NULL COMMENT 'Registra hora de cita',
  `Comentario` text DEFAULT NULL COMMENT 'Registra el comentario que se presenta al usuario',
  `FkUsuario` int(11) DEFAULT NULL COMMENT 'Usuario que designa el cupo',
  `Estado` varchar(50) NOT NULL DEFAULT 'Disponible' COMMENT 'Estado del cupo',
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Registra fecha de registro',
  `FechaActualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Registra fecha de actualización',
  PRIMARY KEY (`IdCupo`),
  KEY `FkUsuario` (`FkUsuario`),
  CONSTRAINT `FkUsuario` FOREIGN KEY (`FkUsuario`) REFERENCES `usuarios` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='Registra el cupo de la citas';

#
# Data for table "cupos"
#


#
# Structure for table "citas"
#

DROP TABLE IF EXISTS `citas`;
CREATE TABLE `citas` (
  `IdCita` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la cita',
  `Cedula` varchar(11) DEFAULT NULL COMMENT 'Registra cedula de persona',
  `Nombre` varchar(100) DEFAULT NULL COMMENT 'Registra nombre de persona',
  `Distrito` varchar(25) DEFAULT NULL COMMENT 'Registra el distrito de la persona',
  `Telefono` varchar(10) DEFAULT NULL COMMENT 'Registra teléfono de persona',
  `Correo` varchar(30) DEFAULT NULL COMMENT 'Registra correo de persona',
  `Asunto` varchar(255) DEFAULT NULL COMMENT 'Registra el asunto de la cita',
  `FkCupo` int(11) DEFAULT NULL COMMENT 'Enlace a la tabla de cupos',
  `Observación` text DEFAULT NULL COMMENT 'Observación de la cita',
  `Prioridad` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Prioridad de la cita',
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Registra fecha de registro',
  `FechaActualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Registra fecha de actualización',
  PRIMARY KEY (`IdCita`),
  KEY `FkCupo` (`FkCupo`),
  CONSTRAINT `FkCupo` FOREIGN KEY (`FkCupo`) REFERENCES `cupos` (`IdCupo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='Citas de alcaldia';

#
# Data for table "citas"
#


#
# Structure for table "usuarios"
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de usuario',
  `Cedula` varchar(11) DEFAULT NULL COMMENT 'Cedula de usuario',
  `Nombre` varchar(100) DEFAULT NULL COMMENT 'Nombre del usuario',
  `Correo` varchar(30) DEFAULT NULL COMMENT 'Correo del usuario',
  `Contrasena` varchar(255) DEFAULT NULL COMMENT 'Contraseña del usuario',
  `Cargo` varchar(10) DEFAULT NULL COMMENT 'Tipo de usuario',
  `Descripcion` varchar(255) DEFAULT NULL COMMENT 'Descripción del usuario',
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Registra fecha de registro',
  `FechaActualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Registra fecha de actualización',
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='Registro de usuarios';

#
# Data for table "usuarios"
#


#
# Procedure "InsertCita"
#

DROP PROCEDURE IF EXISTS `InsertCita`;
CREATE PROCEDURE `InsertCita`(
  IN pCedula int(11),
  IN pNombre text(100),
  IN pDistrito text(25),
  IN pTelefono text(10),
  IN pCorreo text(30),
  IN pAsunto text(255)
)
BEGIN
  INSERT
    INTO `citas`
    (`Cedula`, `Nombre`, `Distrito`, `Telefono`, `Correo`, `Asunto`)
  VALUES
    (pCedula, pNombre, pDistrito, pTelefono, pCorreo, pAsunto);
END;

#
# Procedure "InsertCupo"
#

DROP PROCEDURE IF EXISTS `InsertCupo`;
CREATE PROCEDURE `InsertCupo`(
  IN pFechaCita date,
  IN pHoraCita time,
  IN pComentario text,
  IN pEstado text(50)
)
BEGIN
  INSERT
    INTO `cupos`
    (`FechaCita`, `HoraCita`, `Comentario`, `Estado`)
  VALUES
    (pFechaCita, pHoraCita, pComentario, pEstado);
END;

#
# Procedure "InsertUsuario"
#

DROP PROCEDURE IF EXISTS `InsertUsuario`;
CREATE PROCEDURE `InsertUsuario`(
  IN pCedula int(11),
  IN pNombre text(100),
  IN pCorreo text(30),
  IN pContrasena text(255),
  IN pCargo text(10),
  IN pDescripcion text(255)
)
BEGIN
  INSERT
    INTO `usuarios`
    (`Cedula`, `Nombre`, `Correo`, `Contrasena`, `Cargo`, `Descripcion`)
  VALUES
    (pCedula, pNombre, pCorreo, pContrasena, pCargo, pDescripcion);
END;
