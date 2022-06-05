CREATE DATABASE meaning;
USE meaning;
-- meaning.correlation definition

CREATE TABLE `correlation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- meaning.`object` definition

CREATE TABLE `object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- meaning.object_correlation definition

CREATE TABLE `object_correlation` (
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;