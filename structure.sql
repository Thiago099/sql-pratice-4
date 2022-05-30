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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.correlation: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `correlation` DISABLE KEYS */;
INSERT INTO `correlation` (`id`, `name`) VALUES
	(1, 'adjective');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(2, 'generalization');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(3, 'subject');
INSERT INTO `correlation` (`id`, `name`) VALUES
	(4, 'causality');
/*!40000 ALTER TABLE `correlation` ENABLE KEYS */;

-- Copiando estrutura para tabela meaning.object
CREATE TABLE IF NOT EXISTS `object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.object: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` (`id`) VALUES
	(1);
INSERT INTO `object` (`id`) VALUES
	(2);
INSERT INTO `object` (`id`) VALUES
	(3);
INSERT INTO `object` (`id`) VALUES
	(4);
INSERT INTO `object` (`id`) VALUES
	(5);
INSERT INTO `object` (`id`) VALUES
	(6);
INSERT INTO `object` (`id`) VALUES
	(7);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.object_correlation: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `object_correlation` DISABLE KEYS */;
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(2, 1, 2, 1);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(5, 3, 4, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(7, 4, 1, 3);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(9, 6, 7, 2);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(11, 5, 7, 1);
INSERT INTO `object_correlation` (`id`, `id_object_from`, `id_object_to`, `id_correlation`) VALUES
	(12, 4, 7, 4);
/*!40000 ALTER TABLE `object_correlation` ENABLE KEYS */;

-- Copiando estrutura para tabela meaning.object_name
CREATE TABLE IF NOT EXISTS `object_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_object` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__object` (`id_object`),
  CONSTRAINT `FK__object` FOREIGN KEY (`id_object`) REFERENCES `object` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela meaning.object_name: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `object_name` DISABLE KEYS */;
INSERT INTO `object_name` (`id`, `id_object`, `name`) VALUES
	(2, 2, 'hot');
INSERT INTO `object_name` (`id`, `id_object`, `name`) VALUES
	(3, 3, 'touch');
INSERT INTO `object_name` (`id`, `id_object`, `name`) VALUES
	(4, 5, 'burn');
INSERT INTO `object_name` (`id`, `id_object`, `name`) VALUES
	(5, 6, 'hands');
/*!40000 ALTER TABLE `object_name` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
