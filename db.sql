CREATE DATABASE `ssmDemo`;

use ssmDemo;

CREATE TABLE `books` (
  `bookID` INT(20) NOT NULL AUTO_INCREMENT COMMENT '书id',
  `bookName` VARCHAR(30) NOT NULL COMMENT '书名',
  `bookCount` INT(11) NOT NULL COMMENT '数量',
  `detail` VARCHAR(200) DEFAULT NULL COMMENT '描述',
  KEY `bookID` (`bookID`)
  )ENGINE=INNODB DEFAULT CHARSET=utf8;
  
  
insert into books (bookID,bookName, bookCount, detail) values 
(1,'西游记', 2, '妖魔鬼怪'),(2,'三国演义', 1, '低价出售'),
(3,'红楼梦', 12, '垃圾'),(4,'水浒传', 2, '黑社会');