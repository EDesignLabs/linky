-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 01, 2013 at 04:34 PM
-- Server version: 5.1.36-community-log
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `themeboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 2),
(2, NULL, NULL, NULL, 'controllers', 3, 4),
(3, NULL, NULL, NULL, 'controllers', 5, 6),
(4, NULL, NULL, NULL, 'controllers', 7, 8),
(5, NULL, NULL, NULL, 'controllers', 9, 10),
(6, NULL, NULL, NULL, 'controllers', 11, 12),
(7, NULL, NULL, NULL, 'controllers', 13, 14),
(8, NULL, NULL, NULL, 'controllers', 15, 16),
(9, NULL, NULL, NULL, 'controllers', 17, 18),
(10, NULL, NULL, NULL, 'controllers', 19, 20),
(11, NULL, NULL, NULL, 'controllers', 21, 22),
(12, NULL, NULL, NULL, 'controllers', 23, 24),
(13, NULL, NULL, NULL, 'controllers', 25, 26),
(14, NULL, NULL, NULL, 'controllers', 27, 28),
(15, NULL, NULL, NULL, 'controllers', 29, 30),
(16, NULL, NULL, NULL, 'controllers', 31, 32),
(17, NULL, NULL, NULL, 'controllers', 33, 34),
(18, NULL, NULL, NULL, 'controllers', 35, 36),
(19, NULL, NULL, NULL, 'controllers', 37, 38),
(20, NULL, NULL, NULL, 'controllers', 39, 40),
(21, NULL, NULL, NULL, 'controllers', 41, 42),
(22, NULL, NULL, NULL, 'controllers', 43, 44),
(23, NULL, NULL, NULL, 'controllers', 45, 46);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 4),
(2, NULL, 'Group', 2, NULL, 5, 10),
(3, NULL, 'Group', 3, NULL, 11, 14),
(4, 3, 'User', 1, NULL, 12, 13),
(5, 1, 'User', 2, NULL, 2, 3),
(6, 2, 'User', 3, NULL, 6, 7),
(7, 2, 'User', 4, NULL, 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE IF NOT EXISTS `boards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'teachers', '2012-12-27 13:28:54', '2012-12-27 13:29:48'),
(2, 'students', '2012-12-27 13:29:06', '2012-12-27 13:30:04'),
(3, 'admins', '2012-12-27 13:29:17', '2012-12-27 13:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topic_photos`
--

CREATE TABLE IF NOT EXISTS `topic_photos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `description` text,
  `topic_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filetype` varchar(10) NOT NULL,
  `filesize` int(11) NOT NULL,
  `filepath` varchar(25) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `created`, `modified`) VALUES
(1, 'admin', '40c14df0a598bc02e80e41993cb895c36aa34c15', 3, '2012-12-27 13:31:09', '2012-12-27 13:31:09'),
(2, 'teacher', 'f27c555b5641c6abe73d33db16030cb131286abf', 1, '2012-12-27 13:31:23', '2012-12-27 13:31:23'),
(3, 'student', 'a1eeb2be8abb0bcfc6964bb4cfb868c870ec4949', 2, '2012-12-27 13:31:41', '2012-12-27 13:31:41'),
(4, 'student2', '29b5eab87602be5ba3ef818c888134cee4987428', 2, '2012-12-27 13:35:37', '2012-12-27 13:35:37');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
