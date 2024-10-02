-- SQL used to generate user table in database
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
)