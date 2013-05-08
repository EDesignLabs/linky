-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2012 at 03:53 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `themeboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` VALUES(2, 'What is sacrifice?', 'You have just finished reading A Tale of Two Cities by Charles Dickens.  In this novel, Sydney Carton sacrifices himself in the place of Charles Darnay.  Sydney is in love with Lucie, Darnayâ€™s wife, and would do anything to make her happy, even if it means dying in place of her husband.  \r\n\r\nWhat examples of sacrifice can you find in other texts, in your life, or in the world around you?', 'http://static.tvtropes.org/pmwiki/pub/images/ATaleOfTwoCities_2621.jpg', 1355324383, 1355324383);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` VALUES(6, 2, 'Sacrifice in your life', 'What is an example of sacrifice in your life? Describe using an image and 2-3 sentences.', 1355326111, 1355326111);
INSERT INTO `topics` VALUES(7, 2, 'Sacrifice in your community', 'What is an example of sacrifice in your community i.e. neighborhood, school etc? Describe using an image and 2-3 sentences.', 1355326163, 1355326163);
INSERT INTO `topics` VALUES(8, 2, 'Sacrifice in your country', 'WHat is an example of sacrifice in your country? Describe using a photo and 2-3 sentences.', 1355326259, 1355326259);

-- --------------------------------------------------------

--
-- Table structure for table `topic_photos`
--

CREATE TABLE `topic_photos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text,
  `topic_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `topic_photos`
--

INSERT INTO `topic_photos` VALUES(1, 'My brother and I hanging out in 2001.', 6, 'http://www.brandwatch.com/wp-content/uploads/brandwatch/sharing.jpg', 'Betsy May', 1355344860, 1355344860);
