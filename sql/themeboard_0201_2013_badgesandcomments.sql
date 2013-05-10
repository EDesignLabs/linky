-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 02, 2013 at 11:10 PM
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
-- Table structure for table `badges`
--

CREATE TABLE IF NOT EXISTS `badges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `user_id`, `title`, `description`, `created`, `modified`) VALUES
(1, 1, 'interesting', '', 1357185079, 1357185079),
(2, 1, 'deep', '', 1357185139, 1357185139),
(3, 1, 'original', '', 1357185162, 1357186171),
(4, 1, 'beautiful', '', 1357185175, 1357186162),
(5, 1, 'personal', '', 1357185185, 1357186031);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `user_id`, `title`, `description`, `image`, `created`, `modified`, `active`) VALUES
(1, 1, 'Testing user save', 'Test test', 'http://eoimages2.gsfc.nasa.gov/images/imagerecords/79000/79750/antarctic_vir_2012197_front.jpg', 1357079761, 1357082472, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topic_photo_id` int(11) NOT NULL,
  `comment` text,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `topic_photo_id`, `comment`, `created`, `modified`) VALUES
(4, 3, 2, 'g', 1357180586, 1357180586),
(5, 3, 2, 'I also wanted to say this', 1357181024, 1357181024);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `board_id`, `title`, `description`, `created`, `modified`, `active`) VALUES
(1, 0, 1, 'Spaceships', 'Yeah they are cool ass yo.', 1357082528, 1357082528, 1),
(2, 0, 1, 'Black holes', 'A black hole sucks light.', 1357082552, 1357082552, 1),
(3, 0, 1, 'Stars', 'Stars are giant balls of hot gas.', 1357082587, 1357082587, 1);

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
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `topic_photos`
--

INSERT INTO `topic_photos` (`id`, `user_id`, `active`, `description`, `topic_id`, `filename`, `filetype`, `filesize`, `filepath`, `url`, `anonymous`, `created`, `modified`) VALUES
(1, 3, 1, 'hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello', 1, '', '', 0, '', 'http://eoimages2.gsfc.nasa.gov/images/imagerecords/79000/79750/antarctic_vir_2012197_front.jpg', 0, 1357083434, 1357083434),
(2, 1, 1, 'The Mars rover Curiosity recorded this view from its left navigation camera after an 83-foot eastward drive on Sunday, November 18. The view is toward "Yellowknife Bay" in the "Glenelg" area of Gale Crater. Curiosity arrived on Mars on August 6 and began beaming back images from the surface. See all the images here as they are released. Check out images from previous Mars missions.', 1, '', '', 0, '', 'http://i2.cdn.turner.com/cnn/dam/assets/121120094839-rover-eastward-view-horizontal-large-gallery.jpg', 0, 1357083831, 1357102141),
(3, 4, 1, 'Brooklyn''s favorite place for great drinks, music, and atmosphere. We feature live musicians every week. Our outdoor garden is the perfect place to relax, unwind, and have a great time. Locals often visit Prospect Garden for karaoke, hookahs, great beer, wine and food .. Check out our events page. We look forward to serving you at the Prospect Garden Cafe!', 2, '', '', 0, '', 'http://i2.cdn.turner.com/cnn/dam/assets/130101093219-ns-payne-us-skirts-fiscal-cliff-00001025-story-top.jpg', 0, 1357084549, 1357084549),
(4, 3, 1, 'http://s3.amazonaws.com/grubhub-napkin/media_files/18447/large.png?1326818145http://s3.amazonaws.com/grubhub-napkin/media_files/18447/large.png?1326818145http://s3.amazonaws.com/grubhub-napkin/media_files/18447/large.png?1326818145http://s3.amazonaws.com/grubhub-napkin/media_files/18447/large.png?1326818145', 3, '', '', 0, '', 'http://s3.amazonaws.com/grubhub-napkin/media_files/18447/large.png?1326818145', 0, 1357096701, 1357096701);

-- --------------------------------------------------------

--
-- Table structure for table `topic_photo_badges`
--

CREATE TABLE IF NOT EXISTS `topic_photo_badges` (
  `topic_photo_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic_photo_badges`
--

INSERT INTO `topic_photo_badges` (`topic_photo_id`, `badge_id`) VALUES
(2, 3),
(1, 4),
(1, 3),
(2, 5),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `role` varchar(20) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `full_name`, `created`, `modified`) VALUES
(1, 'admin', '40c14df0a598bc02e80e41993cb895c36aa34c15', 'admin', '', '2012-12-27 13:31:09', '2012-12-27 13:31:09'),
(2, 'teacher', 'f27c555b5641c6abe73d33db16030cb131286abf', 'teacher', '', '2012-12-27 13:31:23', '2012-12-27 13:31:23'),
(3, 'student', 'a1eeb2be8abb0bcfc6964bb4cfb868c870ec4949', 'student', '', '2012-12-27 13:31:41', '2012-12-27 13:31:41'),
(4, 'student2', '29b5eab87602be5ba3ef818c888134cee4987428', 'student', '', '2012-12-27 13:35:37', '2012-12-27 13:35:37');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
