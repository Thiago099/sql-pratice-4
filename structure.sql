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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.correlation: ~7 rows (aproximadamente)
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
/*!40000 ALTER TABLE `correlation` ENABLE KEYS */;

-- Copiando estrutura para tabela meaning.object
CREATE TABLE IF NOT EXISTS `object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.object: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(1, 'good', '#cfc');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(2, 'bad', '#fcc');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(3, 'self', '#acf');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(4, 'enemy', '#ffc');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(5, 'hurt', '#fcf');
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(6, NULL, NULL);
INSERT INTO `object` (`id`, `name`, `color`) VALUES
	(7, NULL, NULL);
/*!40000 ALTER TABLE `object` ENABLE KEYS */;

-- Copiando estrutura para tabela meaning.object_correlation
CREATE TABLE IF NOT EXISTS `object_correlation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_object_from` int(11) NOT NULL,
  `id_object_to` int(11) NOT NULL,
  `id_correlation` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_object_correlation_object` (`id_object_from`) USING BTREE,
  KEY `FK_object_correlation_object_2` (`id_object_to`) USING BTREE,
  KEY `FK_object_correlation_correlation` (`id_correlation`),
  CONSTRAINT `FK_object_correlation_correlation` FOREIGN KEY (`id_correlation`) REFERENCES `correlation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_object_correlation_object` FOREIGN KEY (`id_object_from`) REFERENCES `object` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_object_correlation_object_2` FOREIGN KEY (`id_object_to`) REFERENCES `object` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.object_correlation: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `object_correlation` DISABLE KEYS */;
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(2, 5, 6, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(3, 5, 7, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(6, 6, 3, 3);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(7, 7, 4, 3);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(8, 6, 2, 5);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(9, 7, 1, 5);
/*!40000 ALTER TABLE `object_correlation` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
