-- phpMyAdmin SQL Dump
-- version 3.4.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 05 月 16 日 09:55
-- 服务器版本: 5.5.29
-- PHP 版本: 5.3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`) VALUES
(1, 'The title', 'This is the post body.', '2013-05-15 09:12:22', NULL),
(2, 'A title once again', 'And the post body follows.', '2013-05-15 09:12:22', NULL),
(3, 'Title strikes back', 'This is really exciting! Not.', '2013-05-15 09:13:39', NULL),
(4, 'Title 4', 'This is really exciting! Not.', '2013-05-15 09:14:39', NULL),
(5, 'Title 5', 'This is really exciting! Not.', '2013-05-15 09:14:39', NULL),
(6, 'Title 6', 'This is really exciting! Not.', '2013-05-15 09:14:39', NULL),
(7, 'Title 7', 'This is really exciting! Not.', '2013-05-15 09:14:39', NULL),
(8, 'Title 8', 'This is really exciting! Not.', '2013-05-15 09:14:39', NULL),
(9, 'Title 9', 'This is really exciting! Not.', '2013-05-15 09:14:39', NULL),
(10, 'Title 10', 'This is really exciting! Not.', '2013-05-15 09:14:39', NULL),
(11, 'Title 11', 'This is really exciting! Not.', '2013-05-15 09:15:15', NULL),
(12, 'Title 12', 'This is really exciting! Not.', '2013-05-15 09:15:15', NULL),
(13, 'Title 13', 'This is really exciting! Not.', '2013-05-15 09:15:15', NULL),
(14, 'Title 14', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(15, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(16, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(17, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(18, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(19, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(20, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(21, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(22, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(23, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(24, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(25, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(26, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(27, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(28, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(29, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL),
(30, 'Title 15', 'This is really exciting! Not.', '2013-05-15 09:15:53', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
