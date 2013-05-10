-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2012 at 05:44 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

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
-- Table structure for table `boards`
--

CREATE TABLE IF NOT EXISTS `boards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `title`, `description`, `image`, `created`, `modified`, `active`) VALUES
(2, 'What is sacrifice?', 'You have just finished reading A Tale of Two Cities by Charles Dickens.  In this novel, Sydney Carton sacrifices himself in the place of Charles Darnay.  Sydney is in love with Lucie, Darnayâ€™s wife, and would do anything to make her happy, even if it means dying in place of her husband.  \r\n\r\nWhat examples of sacrifice can you find in other texts, in your life, or in the world around you?', 'http://static.tvtropes.org/pmwiki/pub/images/ATaleOfTwoCities_2621.jpg', 1355324383, 1355324383, 1),
(4, 'What is apartheid?', 'Some stuff', 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/12/ApartheidSignEnglishAfrikaans.jpg/200px-ApartheidSignEnglishAfrikaans.jpg', 1355357144, 1355718105, 0),
(7, 'Revolutions', 'Why do people create revolutions?', 'http://25.media.tumblr.com/tumblr_mc551o7qbF1rog5d1o1_500.jpg', 1355357472, 1355717767, 0),
(8, 'Revolutions 2.0', 'A revolution is a dramatic change. Revolutions can be political or non-political. ', 'http://25.media.tumblr.com/tumblr_mc551o7qbF1rog5d1o1_500.jpg', 1355357616, 1355357616, 1),
(9, 'zxgb', 'zxgbz', '', 1355720600, 1355720760, 0),
(10, 'zxgb', 'zxgbzgcxfn', '', 1355720618, 1355720668, 0),
(11, 'zxgb', 'zxgbzgcxfn', '', 1355720629, 1355720663, 0);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `board_id`, `title`, `description`, `created`, `modified`, `active`) VALUES
(6, 2, 'Sacrifice in your life', 'What is an example of sacrifice in your life? Describe using an image and 2-3 sentences.', 1355326111, 1355717879, 0),
(7, 2, 'Sacrifice in your community', 'What is an example of sacrifice in your community i.e. neighborhood, school etc? Describe using an image and 2-3 sentences.', 1355326163, 1355326163, 1),
(8, 2, 'Sacrifice in your country', 'WHat is an example of sacrifice in your country? Describe using a photo and 2-3 sentences.', 1355326259, 1355326259, 1),
(10, 8, 'Causes of Revolutions', 'What are some reasons or conditions that cause people to revolt?', 1355357748, 1355357748, 1),
(11, 8, 'Effects of Revolutions', 'How have past revolutions shaped our lives?', 1355357790, 1355721940, 1),
(12, 8, 'Obstacles to Revolution', 'What elements in the world prevent people, communities or societies from revolting?', 1355357889, 1355357889, 1),
(13, 8, 'Facilitators of Revolution', 'As a revolution starts, it can gain   power. What things help to accelerate this power?', 1355357956, 1355357956, 1),
(14, 8, 'Revolution in Action', 'Images depicting revolutions in progress. (Internet search is allowed...)', 1355358042, 1355722933, 1),
(15, 2, 'SF', 'SF', 1355714716, 1355717650, 0),
(16, 2, 'AFD', 'SSFRG', 1355714722, 1355717636, 0),
(17, 2, 'Sacrifice in your community', 'What is an example of sacrifice in your community i.e. neighborhood, school etc? Describe using an image and 2-3 sentences.', 1355715705, 1355715705, 1),
(18, 2, 'Sacrifice in your community', 'What is an example of sacrifice in your community i.e. neighborhood, school etc? Describe using an image and 2-3 sentences.', 1355715747, 1355718130, 0),
(19, 2, 'Sacrifice in your community', 'What is an example of sacrifice in your community i.e. neighborhood, school etc? Describe using an image and 2-3 sentences.', 1355715760, 1355718141, 0),
(20, 2, 'zdfg', 'zdgb', 1355717366, 1355717592, 0),
(21, 2, 'Sacrifice in your community', 'What is an example of sacrifice in your community i.e. neighborhood, school etc? Describe using an image and 2-3 sentences.', 1355717959, 1355718152, 0),
(22, 2, 'Sacrifice in your community', 'What is an example of sacrifice in your community i.e. neighborhood, school etc? Describe using an image and 2-3 sentences.', 1355717971, 1355718089, 0),
(23, 8, '', '', 1355718266, 1355718278, 0),
(24, 2, 'sdghsdgbsdg', 'sdgsdhnasg', 1355720778, 1355720808, 0);

-- --------------------------------------------------------

--
-- Table structure for table `topic_photos`
--

CREATE TABLE IF NOT EXISTS `topic_photos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `topic_photos`
--

INSERT INTO `topic_photos` (`id`, `active`, `description`, `topic_id`, `filename`, `filetype`, `filesize`, `filepath`, `url`, `name`, `created`, `modified`) VALUES
(1, 1, 'My brother and I hanging out in 2001.', 6, '', '', 0, '', 'http://www.brandwatch.com/wp-content/uploads/brandwatch/sharing.jpg', 'Betsy May', 1355344860, 1355344860),
(2, 1, 'Having a daughter, I find myself sacrificing a lot because I don''t have time to pursue my own interests anymore.', 6, '', '', 0, '', 'http://25.media.tumblr.com/tumblr_mc551o7qbF1rog5d1o1_500.jpg', 'Alex', 1355353554, 1355353554),
(8, 1, 'zxgbzdgbzdgnadnfhnzxgbzdgbzdgnadnfhnzxgbzdgbzdgnadnfhnzxgbzdgbzdgnadnfhn', 13, '1355722604_148113_587626943829_9807159_34056964_4915845_n.jpg', 'image/jpeg', 46090, '/files/images/', '', 'anonymous', 1355699364, 1355722926),
(4, 1, 'George Washington crosses the Delaware to revolt against the Redcoats.', 14, '', '', 0, '', 'http://lindseyhistoryblog.typepad.com/photos/the_founding_fathers_the_/george-washington-crossing-the-delaware-river11.jpg', 'Abe', 1355358172, 1355697230),
(5, 1, 'Sign from union protests in Michigan.', 10, '', '', 0, '', 'http://thinkprogress.org/wp-content/uploads/2012/12/michiganfeature1_tp3-feature-single-two.jpg', 'Ryan Raffa', 1355362632, 1355722943),
(6, 1, 'The Voting Rights Act of 1965 (42 U.S.C. Â§Â§ 1973â€“1973aa-6)[1] is a landmark piece of national legislation in the United States that outlawed discriminatory voting practices that had been responsible for the widespread disenfranchisement of African Americans in the U.S.\r\n\r\nInfo from Wikipedia:\r\nhttp://en.wikipedia.org/wiki/Voting_Rights_Act', 11, '', '', 0, '', 'http://www.core-online.org/historyphotos/voting_photo.jpg', 'Ryan Raffa', 1355362759, 1355362759),
(7, 1, 'North Korea tested missiles this morning. Oh boy.', 12, '', '', 0, '', 'http://www.csmonitor.com/var/ezflow_site/storage/images/media/content/2012/3-16-12-north-korea-missile/12030541-1-eng-US/3-16-12-North-Korea-missile_full_600.jpg', 'Ryan Raffa', 1355362929, 1355362929),
(11, 1, 'zxdfbd', 10, '1355713824_215483_628258787289_7360173_n.jpg', 'image/jpeg', 30816, '/files/images/', 'https://lh4.googleusercontent.com/sHCzuz87rdzSQP_NFS47TfeEeXBGIErr2He5MAPBMI2_4rw0u8ckLAjOYRs7Sw6tgAP9Bxjneg=s700-h280-e365', 'anonymous', 1355711671, 1355721207),
(12, 1, 'xzfvzfxb', 7, '1355720584_156332_1641331585827_1012941736_31781180_7980971_n.jpg', 'image/jpeg', 107430, '/files/images/', 'https://lh4.googleusercontent.com/sHCzuz87rdzSQP_NFS47TfeEeXBGIErr2He5MAPBMI2_4rw0u8ckLAjOYRs7Sw6tgAP9Bxjneg=s700-h280-e365', 'anonymous', 1355720584, 1355721172);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
