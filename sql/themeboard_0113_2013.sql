-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2013 at 10:38 PM
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
(4, 1, 'beautiful', '', 1357185175, 1357263196),
(5, 1, 'personal', '', 1357185185, 1357265412);

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE IF NOT EXISTS `boards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `summary` tinyint(1) DEFAULT NULL,
  `summary_prompt` text,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `user_id`, `title`, `description`, `image`, `summary`, `summary_prompt`, `created`, `modified`, `active`) VALUES
(1, 1, 'Space and the future of man', 'Tejoâ€™s walk, stance, gesture and speech are all seemingly naturalist, fitting in with her role as an efficient business woman and loyal daughter-in-law, and yet her clothes seem more like costumes, too ornate, too mysteriously beautiful in colour, so that one begins to observe that her walk is also similarly ornamented, as are her other movements and especially her poses. The pose, a dynamic equilibrium in Indian dance and sculpture, is animated in the miniature tradition to bring into focus everyday gestures as well. Shahani taps into this dynamism of the pose and brings it into play in contemporary everyday gestures and movements. [Shahaniâ€™s] visual surfaces are highly decorative; they integrate the human with the non-organic surfaces of everyday objects and spaces and in Shahaniâ€™s case, with nature as well. Shahani fashions Tejo, his realist character, as a Nayika, the icono-mythic leading female figure, usually Radha in the miniature tradition. What is odd however is that there is no Krishna (Nayaka) in Kasba to match this Radhaâ€™s desire. Her object of desire is money.', 'http://eoimages2.gsfc.nasa.gov/images/imagerecords/79000/79750/antarctic_vir_2012197_front.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et lacus at dolor laoreet posuere. Donec dictum imperdiet arcu, sit amet mollis ligula scelerisque non. Nunc bibendum diam quis velit condimentum ullamcorper. Etiam mattis lorem nec nisi consequat eu consequat arcu scelerisque. Vestibulum ipsum erat, bibendum tristique viverra eget, dictum ac neque. Sed fringilla, ante eget sodales mattis, erat turpis ultricies eros, quis volutpat neque sem et felis. Proin pretium lacinia mauris, non posuere est hendrerit at. Aenean magna erat, euismod ac porttitor id, sodales ac eros. Nulla commodo nibh quis metus accumsan eget rutrum turpis molestie. Phasellus varius hendrerit sem, non suscipit urna euismod non. Vivamus sed elit ut justo hendrerit porta ac nec diam. Etiam sed arcu diam, sed imperdiet justo. Curabitur consectetur pellentesque felis eget tempus. In hac habitasse platea dictumst.', 1357079761, 1358106092, 1),
(2, 1, 'Another board', '', '', NULL, NULL, 1357261003, 1357261003, 1),
(3, 1, 'Yet another board', '', '', 1, '', 1357261013, 1358123702, 1),
(4, 1, 'I was aboard', 'Tejoâ€™s walk, stance, gesture and speech are all seemingly naturalist, fitting in with her role as an efficient business woman and loyal daughter-in-law, and yet her clothes seem more like costumes, too ornate, too mysteriously beautiful in colour, so that one begins to observe that her walk is also similarly ornamented, as are her other movements and especially her poses. The pose, a dynamic equilibrium in Indian dance and sculpture, is animated in the miniature tradition to bring into focus everyday gestures as well. ', '', 0, '', 1357261023, 1358049006, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `topic_photo_id`, `comment`, `created`, `modified`) VALUES
(4, 3, 2, 'g', 1357180586, 1357180586),
(5, 3, 2, 'I also wanted to say this', 1357181024, 1357181024);

-- --------------------------------------------------------

--
-- Table structure for table `summaries`
--

CREATE TABLE IF NOT EXISTS `summaries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `photo1` int(11) NOT NULL,
  `photo2` int(11) NOT NULL,
  `photo3` int(11) NOT NULL,
  `description` text NOT NULL,
  `complete` tinyint(4) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `summaries`
--

INSERT INTO `summaries` (`id`, `user_id`, `board_id`, `photo1`, `photo2`, `photo3`, `description`, `complete`, `created`, `modified`) VALUES
(1, 1, 1, 1, 2, 4, 'This is something I want to edit later.', NULL, '2013-01-13 18:23:28', '2013-01-13 18:23:28'),
(2, 3, 3, 0, 0, 0, '', NULL, '2013-01-13 19:35:25', '2013-01-13 19:35:25'),
(3, 3, 1, 1, 3, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis vehicula diam. Aenean sed orci odio, ut rhoncus ipsum. Donec nec tellus vitae ante viverra gravida. Nullam fringilla dignissim nisl, id iaculis orci laoreet eu. Pellentesque eu mi vel odio semper varius. Aenean purus arcu, tempus et volutpat ac, tempus vel nulla. Aliquam molestie, metus viverra dictum condimentum, elit ligula sagittis odio, non ullamcorper magna diam et ligula. Quisque quam dolor, semper eget volutpat sed, pretium nec est. Mauris ac dui orci. Integer sapien ipsum, fermentum ut elementum sed, pulvinar id ligula. Vivamus vel nunc leo, sit amet rutrum enim. Phasellus tempor laoreet risus nec volutpat.\r\n\r\nPhasellus non odio ac arcu ullamcorper aliquet sit amet sit amet lectus. Vestibulum non diam mauris, tincidunt ultrices mi. Nulla vel ligula risus. Nullam at mauris id velit aliquet convallis ut ac eros. Etiam vulputate enim sit amet eros feugiat rutrum. Integer lobortis felis eu lorem condimentum sollicitudin. Donec risus mauris, porttitor ac facilisis id, commodo ut lorem. Curabitur erat massa, fermentum a ultrices ac, cursus et ligula. Pellentesque congue iaculis semper. Donec sollicitudin rutrum pellentesque. Duis id massa magna, vitae vulputate mauris. Proin quis ante vel arcu accumsan eleifend vel id sapien. Fusce convallis varius lorem, suscipit vehicula turpis convallis vel. Praesent felis nisl, rutrum sit amet tempor non, faucibus sed mauris.\r\n\r\nAenean accumsan condimentum auctor. Aenean tempor malesuada risus quis condimentum. Aliquam ac erat a nisi vulputate accumsan ut eu elit. Nulla nec fermentum massa. Donec porta tortor gravida felis dapibus sit amet scelerisque risus elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas et tellus augue. Vestibulum imperdiet pretium quam, ut porta lectus scelerisque non. Nullam at lectus et quam malesuada euismod. Cras dapibus ipsum sed lectus viverra scelerisque. Mauris tincidunt, magna sit amet commodo viverra, sapien velit ullamcorper nisl, quis rhoncus dolor magna eu sem. Donec lacinia tortor ut enim ultricies non bibendum nunc tristique. Ut ac urna id risus feugiat mattis et sit amet orci.', 1, '2013-01-13 20:33:32', '2013-01-13 20:33:32');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `board_id`, `title`, `description`, `created`, `modified`, `active`) VALUES
(1, 0, 1, 'Spaceships', 'Yeah they are cool ass yo.', 1357082528, 1357082528, 1),
(2, 0, 1, 'Black holes', 'A black hole sucks light.', 1357082552, 1357082552, 1),
(3, 0, 1, 'Stars', 'Stars are giant balls of hot gas.', 1357082587, 1357082587, 1),
(4, 1, 3, 'Some stuff', '', 1357265337, 1357265337, 1),
(5, 1, 4, 'Something something', '', 1357267878, 1357267878, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `topic_photos`
--

INSERT INTO `topic_photos` (`id`, `user_id`, `active`, `description`, `topic_id`, `filename`, `filetype`, `filesize`, `filepath`, `url`, `anonymous`, `created`, `modified`) VALUES
(1, 1, 1, 'Spaceships are kinda like boats. They help us travel on Earth while spaceships do the same in space.', 1, '1358105589_4716639739_5416967bb1_b.jpg', 'image/jpeg', 185703, '/files/images/', '', 0, 1358105589, 1358105589),
(2, 1, 0, 'Luke is like the spaceship.', 1, '1358105652_luke.jpg', 'image/jpeg', 175278, '/files/images/', '', 0, 1358105652, 1358105652),
(3, 1, 1, 'Andaaz apna apna hai is a funny movive with stars.', 3, '1358105695_41.jpg', 'image/jpeg', 29841, '/files/images/', '', 0, 1358105696, 1358105696),
(4, 1, 1, 'India is far away, but I can see the same stars from here that my family can see in India', 3, '1358105799_indiatouristmap64.gif', 'image/gif', 1484892, '/files/images/', '', 0, 1358105799, 1358105799),
(5, 3, 0, 'vbzcgbxgvbzcgbxgvbzcgbxgvbzcgbxgvbzcgbxgvbzcgbxgvbzcgbxgvbzcgbxg', 4, '1358125873_OAVG4Io69K.jpg', 'image/jpeg', 364059, '/files/images', 'http://24.media.tumblr.com/266adf5797f230d0261345c125b192d6/tumblr_mg8jb9tyWz1rbqpjlo1_500.jpg', 0, 1358125873, 1358125873),
(6, 3, 1, 'zdfvzdfbvgdzdfvzdfbvgdzdfvzdfbvgdzdfvzdfbvgdzdfvzdfbvgd', 4, '1358126001_0jQi9e1Xgd.png', 'image/png', 17110, '/files/images/', 'http://nilaratna.com/images/asonyt.png', 0, 1358126001, 1358126001),
(7, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis vehicula diam. Aenean sed orci odio, ut rhoncus ipsum. Donec nec tellus vitae ante viverra gravida. Nullam fringilla dignissim nisl, id iaculis orci laoreet eu. Pellentesque eu mi vel odio semper varius. Aenean purus arcu, tempus et volutpat ac, tempus vel nulla. Aliquam molestie, metus viverra dictum condimentum, elit ligula sagittis odio, non ullamcorper magna diam et ligula. Quisque quam dolor, semper eget volutpat sed, pretium nec est. Mauris ac dui orci. Integer sapien ipsum, fermentum ut elementum sed, pulvinar id ligula. Vivamus vel nunc leo, sit amet rutrum enim. Phasellus tempor laoreet risus nec volutpat.', 5, '1358127130_480FRCcYWh.jpg', 'image/jpeg', 285186, '/files/images/', 'http://25.media.tumblr.com/8f57bdff8b68d2497044da5029ff7a11/tumblr_mgjdi0RqLJ1rbqpjlo1_500.jpg', 0, 1358127130, 1358131599),
(8, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis vehicula diam. Aenean sed orci odio, ut rhoncus ipsum. Donec nec tellus vitae ante viverra gravida. Nullam fringilla dignissim nisl, id iaculis orci laoreet eu. Pellentesque eu mi vel odio semper varius. Aenean purus arcu, tempus et volutpat ac, tempus vel nulla. Aliquam molestie, metus viverra dictum condimentum, elit ligula sagittis odio, non ullamcorper magna diam et ligula. Quisque quam dolor, semper eget volutpat sed, pretium nec est. Mauris ac dui orci. Integer sapien ipsum, fermentum ut elementum sed, pulvinar id ligula. Vivamus vel nunc leo, sit amet rutrum enim. Phasellus tempor laoreet risus nec volutpat.', 1, '1358132475_wo0A9iPynh.jpg', 'image/jpeg', 24595, '/files/images/', 'http://farm8.staticflickr.com/7100/6917703112_d18e3e1b95_m.jpg', 0, 1358132475, 1358133140),
(9, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis vehicula diam. Aenean sed orci odio, ut rhoncus ipsum. Donec nec tellus vitae ante viverra gravida. Nullam fringilla dignissim nisl, id iaculis orci laoreet eu. Pellentesque eu mi vel odio semper varius. Aenean purus arcu, tempus et volutpat ac, tempus vel nulla. Aliquam molestie, metus viverra dictum condimentum, elit ligula sagittis odio, non ullamcorper magna diam et ligula. Quisque quam dolor, semper eget volutpat sed, pretium nec est. Mauris ac dui orci. Integer sapien ipsum, fermentum ut elementum sed, pulvinar id ligula. Vivamus vel nunc leo, sit amet rutrum enim. Phasellus tempor laoreet risus nec volutpat.\r\n', 1, '1358132579_E0NCSlnzq5.gif', 'image/gif', 881239, '/files/images/', 'http://24.media.tumblr.com/tumblr_ma7ztgtizT1qgb5p1o1_500.gif', 0, 1358132579, 1358132615),
(10, 3, 1, '', 1, '1358132604_Px4Csae6cy.jpg', 'image/jpeg', 14031, '/files/images/', 'http://farm8.staticflickr.com/7140/7061825385_0ccedf2a8e_m.jpg', 0, 1358132604, 1358132604),
(11, 3, 1, '', 1, '1358132978_FmdcNEUyb9.jpg', 'image/jpeg', 73947, '/files/images/', 'http://25.media.tumblr.com/26bd7dfcb5df8a16235c8674224a9f91/tumblr_mgjlvbTF0j1qgj6jvo1_500.jpg', 0, 1358132978, 1358132978);

-- --------------------------------------------------------

--
-- Table structure for table `topic_photo_badges`
--

CREATE TABLE IF NOT EXISTS `topic_photo_badges` (
  `topic_photo_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `role` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `name`, `created`, `modified`) VALUES
(1, 'admin', '40c14df0a598bc02e80e41993cb895c36aa34c15', 'admin', 'Pritika N', '2012-12-27 13:31:09', '2013-01-12 18:14:02'),
(2, 'teacher', 'f27c555b5641c6abe73d33db16030cb131286abf', 'teacher', '', '2012-12-27 13:31:23', '2013-01-12 18:09:12'),
(3, 'student', 'a1eeb2be8abb0bcfc6964bb4cfb868c870ec4949', 'student', 'PN', '2012-12-27 13:31:41', '2013-01-12 18:54:07'),
(4, 'student2', '29b5eab87602be5ba3ef818c888134cee4987428', 'student', '', '2012-12-27 13:35:37', '2012-12-27 13:35:37'),
(5, 'abe', 'dd8d4580aace881546f4ba832a01ab89901bf5cf', 'teacher', '', '2013-01-04 00:33:26', '2013-01-12 18:09:52'),
(6, 'alex', '9c7f194023e149284cb886e4f58f4ecd8c2f9654', 'teacher', '', '2013-01-04 00:35:17', '2013-01-12 18:10:01'),
(7, 'victorsigma@kmart.com', '08c447cc4c8da841b7e2cce1f3b7f44f6a56973b', 'student', '', '2013-01-09 18:43:16', '2013-01-09 19:47:45'),
(8, 'pritika.nilaratna@gmail.com', '3ef00900f900b3bf278e6ee5dda6e3dc9cd813ba', 'student', '', '2013-01-12 17:08:33', '2013-01-12 17:08:33'),
(9, 'mrcohen754@gmail.com', '3ef00900f900b3bf278e6ee5dda6e3dc9cd813ba', 'teacher', 'Abe Cohen', '2013-01-12 17:22:46', '2013-01-12 18:11:52');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
