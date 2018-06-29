DROP TABLE IF EXISTS `wanted`;

CREATE TABLE `wanted` (
  `list` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


insert into `wanted` 
(`list`)
values
('"[]"');
