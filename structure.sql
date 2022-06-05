-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para meaning
CREATE DATABASE IF NOT EXISTS `meaning` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `meaning`;

-- Copiando estrutura para tabela meaning.correlation
CREATE TABLE IF NOT EXISTS `correlation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.correlation: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `correlation` DISABLE KEYS */;
INSERT INTO `correlation` (`id`, `name`) VALUES
	(1, 'adjective');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(2, 'instance');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(3, 'subject');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(4, 'causality');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(5, 'meaning');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(6, 'part');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(7, 'actor');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(8, 'needs');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(9, 'gives');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(10, 'parameter');
/*!40000 ALTER TABLE `correlation` ENABLE KEYS */;

-- Copiando estrutura para tabela meaning.object
CREATE TABLE IF NOT EXISTS `object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.object: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(1, 'for', NULL);
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(2, 'collection', NULL);
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(3, 'range', NULL);
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(4, 'instruction', '#acf');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(5, 'for block', '#fcf');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(6, 'iterable', '#ffc');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(7, 'value', '#cfc');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(8, 'set', NULL);
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(9, 'get', NULL);
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(10, 'variable', '#cff');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(11, 'iteration variable', NULL);
/*!40000 ALTER TABLE `object` ENABLE KEYS */;

-- Copiando estrutura para tabela meaning.object_correlation
CREATE TABLE IF NOT EXISTS `object_correlation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_object_from` int(11) DEFAULT NULL,
  `id_object_to` int(11) DEFAULT NULL,
  `id_correlation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_object_correlation_object` (`id_object_from`) USING BTREE,
  KEY `FK_object_correlation_object_2` (`id_object_to`) USING BTREE,
  KEY `FK_object_correlation_correlation` (`id_correlation`),
  CONSTRAINT `FK_object_correlation_correlation` FOREIGN KEY (`id_correlation`) REFERENCES `correlation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_object_correlation_object` FOREIGN KEY (`id_object_from`) REFERENCES `object` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_object_correlation_object_2` FOREIGN KEY (`id_object_to`) REFERENCES `object` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.object_correlation: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `object_correlation` DISABLE KEYS */;
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(1, 4, 1, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(3, 1, 6, 3);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(4, 6, 2, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(5, 6, 3, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(6, 10, 2, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(7, 4, 8, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(9, 9, 10, 3);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(12, 8, 10, 3);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(14, 7, 9, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(15, 8, 7, 5);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(16, 10, 11, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(17, 1, 11, 9);
/*!40000 ALTER TABLE `object_correlation` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
