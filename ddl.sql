CREATE DATABASE `marvelpedia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
-- marvelpedia.marvel_app_users definition

CREATE TABLE `marvel_app_users` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- marvelpedia.marvel_app_search_histories definition

CREATE TABLE `marvel_app_search_histories` (
  `id` varchar(255) NOT NULL,
  `limit_value` int DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `offset_value` int DEFAULT NULL,
  `search` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdm1cl8mjvd25vhqorykbtu5g4` (`user_id`),
  CONSTRAINT `FKdm1cl8mjvd25vhqorykbtu5g4` FOREIGN KEY (`user_id`) REFERENCES `marvel_app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;