# Host: 127.0.0.1  (Version 5.5.5-10.4.14-MariaDB)
# Date: 2021-04-15 16:15:59
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "citas"
#

DROP TABLE IF EXISTS `citas`;
CREATE TABLE `citas` (
  `IdCita` int(11) NOT NULL AUTO_INCREMENT,
  `Cedula` varchar(11) DEFAULT NULL COMMENT 'Registra cedula de persona',
  `Nombre` varchar(100) DEFAULT NULL COMMENT 'Registra nombre de persona',
  `Distrito` varchar(25) DEFAULT NULL COMMENT 'Registra el distrito de la persona',
  `Telefono` varchar(25) DEFAULT NULL COMMENT 'Registra teléfono de persona',
  `Correo` varchar(60) DEFAULT NULL COMMENT 'Registra correo de persona',
  `FechaCita` varchar(11) DEFAULT NULL COMMENT 'Registra fecha de cita',
  `Asunto` varchar(255) DEFAULT NULL COMMENT 'Registra el asunto de la cita',
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Registra fecha de registro',
  `FechaActualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Registra fecha de actualización',
  `Observación` text DEFAULT NULL COMMENT 'Observación de la cita',
  `Prioridad` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Prioridad de la cita',
  `DAF` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Dirección Administrativa Financiera',
  `DIVC` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Dirección Infraestructura Vial Cantonal',
  `UTGSA` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Unidad Técnica de Gestión y Saneamiento Ambiental',
  `DPI` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Departamento de Planificación',
  `DCU` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Desarrollo y Control Urbano',
  PRIMARY KEY (`IdCita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Citas de alcaldia';

#
# Data for table "citas"
#

