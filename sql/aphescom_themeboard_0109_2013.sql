-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2013 at 04:28 PM
-- Server version: 5.5.29
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aphescom_themeboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
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
(1, 'Revolutions 2.0', 'A revolution is a dramatic change. Revolutions can be political or non-political.', 'http://25.media.tumblr.com/tumblr_mc551o7qbF1rog5d1o1_500.jpg', 1355723908, 1355724436, 1),
(2, 'Revolutions', 'A revolution is a dramatic change. Revolutions can be political or non-political.', 'http://www.ultimateminority.com/wp-content/uploads/2011/02/revolution.jpg', 1355723992, 1355762490, 1),
(3, 'zsf', 'SFG', 'SFRG', 1355724044, 1355724427, 0),
(4, 'zsf', 'SFG', 'SFRG', 1355724065, 1355724259, 0),
(5, 'Heroes!', 'We are going to begin considering what types of heroes we would like to examine for the last part of the course.\r\n\r\nTo begin our search, we are going to start by examining some of the different types of heroes we have faced: classic heroes and controversial heroes. Finally, we will begin to consider heroes that might be real-world examples of heroes!', 'http://blog.actogetherministries.org/wp-content/uploads/2011/02/Super-Hero.jpg', 1355800239, 1355800498, 1),
(6, 'Conformity', 'Conformity is all around in our society - in dress, in actions, and even in thinking. How does conformity influence our everyday lives? Where do we see examples of conformity in our lives?', 'http://www.lkingroup.co/upfiles/DIN5685-Link-Chain-main-slink_chain.jpg', 1355801632, 1355837683, 1),
(7, 'Conformity, Trial 2', 'Conformity is all around in our society - in dress, in actions, and even in thinking. How does conformity influence our everyday lives? Where do we see examples of conformity in our lives?\r\n\r\nMake sure to complete the task at http://bronxarena.org/courses/conformity/challenge3/3.1.html\r\n\r\nThen, email Sandra a copy of your responses! (sbegley@bronxarena.org)', 'http://www.lkingroup.co/upfiles/DIN5685-Link-Chain-main-slink_chain.jpg', 1355837673, 1355837797, 1),
(8, 'Helping the dead vanquish death', 'In his essay on writing, Elie Wiesel concludes, "Why do I write?  To wrench those victims from oblivion.  To help the dead vanquish death."\r\n\r\nYou can join in Wiesel''s mission in a number of ways:\r\n\r\n1) You can help those lost during Wiesel''s memoir to vanquish death by researching and reporting on their culture and lives.\r\n\r\n2) You can help others oppressed under similar circumstances to vanquish death by researching and reporting on their culture and lives.\r\n\r\n3) You can help your own family members, community members, etc. to vanquish death by researching and reporting on their culture and lives.  ', 'http://static.ddmcdn.com/gif/wiesel-family.jpg', 1355920697, 1355920697, 1),
(9, 'Fulfilling One''s Duty', 'The Bhagavad Gita tells one of Indiaâ€™s most famous stories.  In it, Krishna instructs the warrior Arjuna on the role of duty in oneâ€™s life:\r\n\r\nâ€œHaving regard to your own duty also, you ought not to falter, for there is nothing better for a [warrior] than a righteous battle.  Happy those [warriors]... who can find such a battle... an open door to heaven! But if you will not fight this righteous battle, then you will have abandoned your own duty and your fame, and you will incur sin...â€\r\n\r\nFulfilling one''s caste duty was an important idea in Hinduism. (Although today, caste has less importance than in the past).  How does the idea of "duty" present itself in modern America?\r\n\r\nWhat duties do people have to themselves?\r\nWhat duties do people have to their families and friends?\r\nWhat duties do people have to their jobs/professions?\r\nWhat duties do people have to society as a whole?', 'http://www.yogawithkatrina.com/blog/wp-content/uploads/2010/10/bhagavad-gita.jpg', 1355945845, 1355945845, 1),
(10, 'Food!', 'Eating isn''t just necessary to survive - it''s a primary mode of interaction between people. Through food, people create communities, exchange traditions, celebrate life events, and innovate new processes.\r\n\r\nIn this board, you will explore different the relationship between food and culture during our field trip to the Global Kitchen exhibit at the American Museum of Natural History. Take pictures as you go through the exhibit that relate to the categories and questions below. Tag your images with 1-3 specific key words of how they relate to the question or category.\r\n\r\nFor homework over the next week, you will research these questions more in depth and continue posting responses. \r\n\r\nImage: This is an advertisement for India''s new vegetarian McDonalds restaurants. Instead of just burgers and fries, they are appealing to the population''s traditional cuisine and Hindu beliefs that hold the cow as a sacred animal. (Source: http://hungeree.com/edibles/mcdonalds-in-india/)\r\n\r\n', 'http://hungeree.com/wp-content/uploads/2012/09/mcdonalds-india_2329277k.jpg', 1356986472, 1356986472, 1),
(11, 'Living Environment Review', 'Over the course of today''s field trip, you will be asked to identify a variety of examples of key Living Environment terms throughout the Museum of Natural History. Use your phone or mobile device to upload different examples of the museum connections you make! ', 'http://www.amnh.org/extension/amnh/design/amnh_user/images/logo.png', 1357335614, 1357353818, 1);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `board_id`, `title`, `description`, `created`, `modified`, `active`) VALUES
(1, 2, 'Causes of Revolutions', 'What are some reasons or conditions that cause people to revolt?', 1355724293, 1355724293, 1),
(2, 2, 'Effects of Revolutions', 'How have past revolutions shaped our lives?', 1355724311, 1355724311, 1),
(3, 2, 'Obstacles to Revolution', 'What elements in the world prevent people, communities or societies from revolting?', 1355724331, 1355724331, 1),
(4, 2, 'Facilitators of Revolution', 'As a revolution starts, it can gain power. What things help to accelerate this power?', 1355724350, 1355724350, 1),
(5, 2, 'Revolution in Action', 'Images depicting revolutions in progress. (Internet search is allowed...)', 1355724373, 1355724373, 1),
(6, 2, 'aser', 'asetrat', 1355762394, 1355762394, 1),
(7, 5, 'Classical Heroes', 'These heroes clearly follow the Hero''s Journey - they are in an ordinary world, experience a call to adventure, and, finally, face and triumph over a supreme ordeal. What types of heroes fall into this category?', 1355800576, 1355800576, 1),
(8, 5, 'Controversial Heroes', 'These heroes might be harder to identify than classical heroes - they might not triumph over a supreme ordeal, or might not face the same call to adventure. Which heroes might be controversial that we have examined?', 1355800674, 1355800674, 1),
(9, 5, 'Real World Investigations', 'We are going to begin examining real-world heroes - these are people who may have faced a call to adventure and done something extraordinary. Try to think about people who there might be writings or works about!', 1355800756, 1355800756, 1),
(10, 6, 'What is individuality?', 'In what ways do people act as individuals in our society? Where have you seen clear examples of people acting as individuals rather than as parts of a group or groups?', 1355801693, 1355836504, 1),
(11, 6, 'What obstacles are there to individuality?', 'There are many barriers that can prevent people from acting as individuals. What challenges do you (or other people) face in trying to be an individual?', 1355801763, 1355836609, 1),
(12, 6, 'What is conformity?', 'Conformity is all around us in society - in the way we act, dress, and even think. What are ways that you have seen people conform in the world around you?', 1355801872, 1355836655, 1),
(13, 6, 'Metaphors for Conformity', 'Create a metaphor for conformity. Explain your metaphor and how it illustrates the need to conform. For example, in the video of the task, a star on the belly is a metaphor that illustrates how Sneetches discriminate against each other.', 1355801919, 1355836996, 1),
(14, 6, 'Effects of Conformity - Bad', 'Conformity can cause people to be harmful, neglectful, or ignorant. Where have you seen people act in ways that the show bad effects of conformity?', 1355801981, 1355801981, 1),
(15, 7, 'What is individuality?', 'In what ways do people act as individuals in our society? Where have you seen clear examples of people acting as individuals rather than as parts of a group or groups?', 1355837698, 1355853072, 1),
(16, 7, 'What obstacles are there to individuality?', 'There are many barriers that can prevent people from acting as individuals. What challenges do you (or other people) face in trying to be an individual?', 1355837720, 1355837720, 1),
(17, 7, 'What is conformity?', 'Conformity is all around us in society - in the way we act, dress, and even think. What are ways that you have seen people conform in the world around you?', 1355837737, 1355837737, 1),
(18, 7, 'Metaphors for Conformity', 'Create a metaphor for conformity. Explain your metaphor and how it illustrates the need to conform. For example, in the video of the task, a star on the belly is a metaphor that illustrates how Sneetches discriminate against each other.', 1355837757, 1355837757, 1),
(19, 8, 'Wiesel''s People', 'Locate images related to life in Wiesel''s home (Sighet, Romania/Transylvania) before he was taken from it.  Who were the prominent people there?  What was the culture like?  What did the actual town look like?', 1355920856, 1355920856, 1),
(20, 8, 'Other Historically Oppressed People', 'Apply Wiesel''s thinking to others who have been oppressed.  Consider slavery in America, the Bosnian Genocide, the Rwandan Genocide, etc.  Collect images about the lives of people involved before these events took place.  What were their lives like?  What', 1355921329, 1355921329, 1),
(21, 8, 'Your People', 'Were any people in your family history lost to wars (either as civilians or soldiers), major historical tragedies and so on?  Collect what you can about these people.  Who were they?  What were their lives like before history changed them?  What were thei', 1355921417, 1355921417, 1),
(22, 9, 'Duties to self', '', 1355946257, 1355946257, 1),
(23, 9, 'Duties to family and friends', '', 1355946828, 1355946828, 1),
(24, 9, 'Duties to jobs/professions', '', 1355947546, 1355947546, 1),
(25, 9, 'Duties to society', '', 1355947589, 1355947589, 1),
(26, 7, 'Who conforms?', 'Put in pictures of people who have conformed, make sure you say why they have conformed.', 1355950640, 1355950640, 1),
(27, 10, 'Celebrate!', 'People use food to celebrate all sorts of occasions. Food is often symbolic of an accomplishment or event. How do different people use food to celebrate? How is the food connected to the celebration? How does it connect people to each other? ', 1356986585, 1356986585, 1),
(28, 10, 'Culture', 'Food and culture are closely tied. What is the relationship between food and culture? In what ways does food shape family, neighborhood, city, regional, or national culture? What foods are around your neighborhood? ', 1356986610, 1356986610, 1),
(29, 10, 'Trade', 'When people trade food, they do more than just exchange good things to eat - they trade ideas as well. What are some examples of people trading food AND ideas? Where can you see examples of cultural diaspora through food?', 1356986628, 1356986628, 1),
(30, 9, 'Duties to pets', '', 1356992977, 1356992977, 1),
(31, 11, 'Human Impact', 'In the past, natural events caused large-scale transformations of the environment and five global mass extinctions. Now, ecosystems are again undergoing a massive loss of biodiversity. This time, the changes are caused mainly by human activity.\r\n\r\nEven in', 1357335748, 1357335748, 1);

-- --------------------------------------------------------

--
-- Table structure for table `topic_photos`
--

DROP TABLE IF EXISTS `topic_photos`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=137 ;

--
-- Dumping data for table `topic_photos`
--

INSERT INTO `topic_photos` (`id`, `active`, `description`, `topic_id`, `filename`, `filetype`, `filesize`, `filepath`, `url`, `name`, `created`, `modified`) VALUES
(1, 0, 'SFSFGSSFSFGSSFSFGSSFSFGSSFSFGSSFSFGSSFSFGSSFSFGSSFSFGSSFSFGSSFSFGSSFSFGS', 1, '1355725282_IMG_20120415_112127.jpg', 'image/jpeg', 1270925, '/files/images/', '', '', 1355725283, 1355725283),
(2, 0, 'There are interesting developments in the Middle East as of late, primarily in the Egyptian protests that ultimately led to the removal of Hosni Mubarak from power.\r\n\r\nThe mainstream media has portrayed it as largely a scare story â€“ what will result from all this unrest? What will the Egyptian state look like after this revolt? Order must be restored, a new government must be formed.', 1, '1355762544_DSC_0065.jpg', 'image/jpeg', 452272, '/files/images/', 'http://www.3quarksdaily.com/.a/6a00d8341c562c53ef014e86b15d52970d-800wi', 'anonymous', 1355762544, 1355762764),
(3, 1, 'Katniss Everdeen from the Hunger Games falls into this category - she lives in an ordinary world (District 12), experiences a call to adventure (the reaping), and must go through a series of trials and the supreme ordeal (the hunger games)', 7, '', '', 0, '', 'http://images6.fanpop.com/image/photos/32300000/katniss-katniss-everdeen-32304978-460-613.jpg', 'Abe!', 1355800901, 1355800946),
(4, 1, 'Tookie Williams may be a hero. He showed redemption and answered the call to change himself. But his actions might not have made up for the things that he did before going to jail.', 8, '', '', 0, '', 'http://upload.wikimedia.org/wikipedia/en/6/63/Stanley_%27Tookie%27_Williams_mugshot.jpg', 'Abe', 1355801068, 1355801068),
(5, 1, 'People get on the train in the morning and stand clear of the closing doors. This means everyone can get on the train quickly and get to where they need to go! Conformity is good in this situation.', 13, '1355833256_image.jpg', 'image/jpeg', 2060746, '/files/images/', '', 'Abe', 1355833256, 1355833256),
(6, 1, 'Woot. TAJTPSAKJDTOAKS"DOTNSTDOKANSLKANSED', 13, '1355835579_photo.JPG', 'image/jpeg', 579823, '/files/images/', '', 'Abe', 1355835579, 1355835579),
(7, 1, 'Power to the people!', 1, '1355847699_image.jpg', 'image/jpeg', 1083409, '/files/images/', '', '', 1355847699, 1355847699),
(8, 1, 'The tennis is pink because it it not like every other tennis ball.', 15, '1355853241_individuality.jpeg', 'image/jpeg', 46878, '/files/images/', '', 'Felix', 1355853241, 1355853402),
(9, 1, 'This is relevant to the category because it shows a person standing out from the crowd.', 15, '1355853347_individuality.jpeg', 'image/jpeg', 64951, '/files/images/', '', 'Calena', 1355853347, 1355853347),
(10, 1, 'Because this is what individuality does people make fun of you because you are different in many ways.\r\n', 16, '1355853365_madefunof.jpeg', 'image/jpeg', 163217, '/files/images/', '', 'Felix', 1355853365, 1355853450),
(11, 1, 'Because its everyone and everybody trying to be like each other in dress and in actions.', 17, '1355853379_conformity.jpg', 'image/jpeg', 331760, '/files/images/', '', 'Virgilio Palao', 1355853379, 1355859463),
(12, 1, 'It''s relevant because the black sheep is in a crowd of white sheep, which shows individualism.', 15, '1355853441_Individuality.jpeg', 'image/jpeg', 71321, '/files/images/', '', 'Wilfredo Rivera', 1355853441, 1355853441),
(13, 1, 'This photo shows that sometimes when you try to be an individual you can be seen as an outcast.', 16, '1355853520_imgres.jpeg', 'image/jpeg', 6150, '/files/images/', '', 'Calena S', 1355853520, 1355853520),
(14, 1, 'Because its you as a person that does what they want to and not what other people want.', 15, '1355853525_wheelchair----individuality-concept-bbc2c9.jpg', 'image/jpeg', 173626, '/files/images/', '', 'Virgilio Palao', 1355853525, 1355853525),
(15, 1, 'This photo os relevant to this category because it show''s you an example of how people conform to things. In this image, the daughter sheep shows her body half shaved and her mom is looking confused and she''s explaining to her mom that all the girls are doing it. This deals with conformity because the daughter sheep is conforming to be like all the other girls and be a follower. This relates to the fashion industry. When you see more than one person wearing a certain type of clothing or brand , people conform to wear the same brand or clothing so they can look like everyone else instead of being the outcast. ', 17, '', '', 0, '', 'http://www.cartoonstock.com/newscartoons/cartoonists/jdi/lowres/jdin271l.jpg', 'Autumn B. Hannah ', 1355853624, 1355853624),
(16, 1, 'To do what everyone else does.', 17, '1355853625_conformity.jpeg', 'image/jpeg', 9779, '/files/images/', '', 'Felix', 1355853625, 1355853625),
(17, 1, 'This photo os relevant to this category because it show''s you an example of how people conform to things. In this image, the daughter sheep shows her body half shaved and her mom is looking confused and she''s explaining to her mom that all the girls are doing it. This deals with conformity because the daughter sheep is conforming to be like all the other girls and be a follower. This relates to the fashion industry. When you see more than one person wearing a certain type of clothing or brand , people conform to wear the same brand or clothing so they can look like everyone else instead of being the outcast. ', 17, '', '', 0, '', 'http://www.cartoonstock.com/newscartoons/cartoonists/jdi/lowres/jdin271l.jpg', 'Autumn B. Hannah ', 1355853626, 1355853626),
(18, 1, 'To do what everyone else does.', 17, '1355853627_conformity.jpeg', 'image/jpeg', 9779, '/files/images/', '', 'Felix', 1355853627, 1355853627),
(19, 1, 'This shows that if you try to be different, most people will reject you.', 16, '1355853652_9943392-leadership---individuality-concept.jpeg', 'image/jpeg', 28259, '/files/images/', '', 'Wilfredo Rivera', 1355853652, 1355853652),
(20, 1, 'Because as you see there at least people that does not like to be a follower.', 16, '1355853718_stock-photo-individuality-71575090.jpg', 'image/jpeg', 18912, '/files/images/', '', 'Virgilio Palao', 1355853718, 1355853718),
(21, 1, 'This picture shows that they conforming to style. They are all dressed similar to each other and each claim to be rappers.', 17, '1355853750_rappers-rap-conformity-demotivational-poster-1264424274.jpeg', 'image/jpeg', 67555, '/files/images/', '', 'Calena S', 1355853750, 1355853750),
(22, 1, 'Some obstacles there are to being an individual is being the outcast. ', 16, '', '', 0, '', 'http://artbiz.ca/files/wp-content/uploads/2012/09/individuality.jpg', 'Autumn B. Hannah', 1355853848, 1355853902),
(23, 1, 'This picture shows that people would wear something only because it''s popular.', 17, '1355853902_Concord-XIs-RegularOlTy.jpeg', 'image/jpeg', 74058, '/files/images/', '', 'Wilfredo Rivera', 1355853902, 1355853902),
(24, 1, 'Because everyone looks like each other in this world and a lot of people do what everyone wants to do now these days.', 18, '1355854033_Nonconformance330.jpg', 'image/jpeg', 18816, '/files/images/', '', 'Virgilio Palao', 1355854033, 1355854033),
(25, 1, 'Individuality is being different, being your one person, being independent and not like everyone else.', 15, '', '', 0, '', 'http://montre24.com/postimages/individuality_wallpaper_by_angelmarlo_2.jpg', 'Autumn B. Hannah ', 1355854042, 1355854042),
(26, 1, 'Because you will do what ever you can to conform', 18, '1355854097_conform.jpeg', 'image/jpeg', 65499, '/files/images/', '', 'Felix', 1355854097, 1355854097),
(27, 1, 'This shows that if you have some individualism, you''ll be more special than people who conform all the time.', 18, '1355854115_stock-photo-abstract-d-illustration-of-best-piggy-bank-choice-metaphor-70545094.jpeg', 'image/jpeg', 28186, '/files/images/', '', 'Wilfredo Rivera', 1355854115, 1355854115),
(28, 1, 'The picture says it all', 18, '1355854117_bquartet-conformity.jpeg', 'image/jpeg', 30409, '/files/images/', '', 'Calena S', 1355854117, 1355854117),
(29, 1, 'This photo is relevant to this category because, it''s basically telling you when you do something that everyone likes you''re do something they like. ', 18, '', '', 0, '', 'http://www.oneminutepresenter.com/wp-content/uploads/2011/09/metaphor-with-tagline.jpg', 'Autumn B. Hannah ', 1355854671, 1355854671),
(30, 1, 'These are all of my books I used to study last night.  It''s so much, but my duty to myself is to get good grades so I can get into college.', 22, '', '', 0, '', 'http://www.newyorker.com/online/blogs/photobooth/Books-06.jpg', 'Mr. Wood', 1355946981, 1355946981),
(31, 1, 'Spider Man is a classic hero because he goes through ordeals that mold him into what he is, a super hero.', 7, '', '', 0, '', 'http://2.bp.blogspot.com/-QM8t9Ivgtvw/UKpxgltARuI/AAAAAAAADNI/iIeUTKIj3qM/s1600/Amazing+Spiderman.jpg', '', 1355947564, 1355947564),
(32, 1, 'This is a revolution in communication ', 1, '1355963307_image.jpg', 'image/jpeg', 2218597, '/files/images/', '', '', 1355963307, 1355963307),
(33, 1, 'Waiting in the cold for the bus to go to church.. doing a duty to myself in the way that I''m going to benefit from listening to the Word.', 22, '1356137589_20121221_195013.jpg', 'image/jpeg', 2263910, '/files/images/', '', 'Esther Kim', 1356137589, 1356137589),
(34, 1, 'The anti-apartheid activist Nelson Mandela was imprisoned for his attempts at challenging discrimination in Africa. The government of his time oppressed similar people and organizations in order to maintain administrative power. The struggles of Mandela, who pursued a better life for his people, embody those of Wiesel, who pursued survival in the face of persecution.', 20, '', '', 0, '', 'http://unitedblackamerica.com/wp-content/uploads/2011/04/Mandela_94.jpg', 'Neil Chen', 1356816392, 1356816501),
(35, 1, 'It''s a duty to spend time with your family.', 23, '1356992387_IMG-20121225-00684.jpg', 'image/jpeg', 1224982, '/files/images/', '', 'Christina Louie', 1356992387, 1356992387),
(36, 1, 'It''s a duty to spend quality time with family members.', 23, '1356992492_IMG-20121225-00688.jpg', 'image/jpeg', 1247222, '/files/images/', '', 'Christina Louie', 1356992492, 1356992492),
(37, 1, 'It''s a duty to myself to study in school in order to get good grades.', 22, '1356992591_IMG-20121231-00751.jpg', 'image/jpeg', 1250850, '/files/images/', '', 'Christina Louie', 1356992591, 1356992591),
(38, 1, 'It''s a duty to myself to make my bed every morning.', 22, '1356992650_IMG-20121231-00754.jpg', 'image/jpeg', 1032884, '/files/images/', '', 'Christina Louie', 1356992650, 1356992650),
(39, 1, 'Everyday cooking rice is an important duty for myself as well as my family so we can eat.', 22, '1356992903_IMG-20121231-00755.jpg', 'image/jpeg', 1491568, '/files/images/', '', 'Christina Louie', 1356992903, 1356992903),
(40, 1, 'It''s my duty to feed my turtle, otherwise it may starve.', 30, '1356993046_IMG-20121231-00756.jpg', 'image/jpeg', 1094507, '/files/images/', '', 'Christina Louie', 1356993046, 1356993046),
(41, 1, 'By washing the dishes I am fulfilling my chores which are my duties to my family.', 23, '1356995377_20121230_180328.jpg', 'image/jpeg', 1948328, '/files/images/', '', 'Hannah Yoo', 1356995377, 1356995407),
(42, 1, 'It is a duty to myself to do my homework in order to get good grades.', 22, '1356995497_20121230_180348.jpg', 'image/jpeg', 2062657, '/files/images/', '', 'Hannah Yoo', 1356995497, 1356995497),
(43, 1, 'It is a duty to myself to exercise so that I can be healthy. ', 22, '1356996098_20121231_181856.jpg', 'image/jpeg', 1928570, '/files/images/', '', 'Hannah Yoo', 1356996098, 1356996098),
(44, 1, 'It is my duty to vacuum and clean the apartment so my parents can come home from work to a nice and clean home.', 23, '1356996929_023.jpg', 'image/jpeg', 2865143, '/files/images/', '', 'Geoffrey Lin', 1356996929, 1356997263),
(45, 1, 'Its my duty to myself to watch tv and relax, so I wont'' be overwhelmed from the stress of school and life.', 22, '1356997103_021.jpg', 'image/jpeg', 2504696, '/files/images/', '', 'Geoffrey Lin', 1356997103, 1356997236),
(46, 1, 'Studying and doing my homework is a duty to myself in order to get a good education, which will brighten my future as I grow up.', 22, '1356997131_IMG_9506.jpg', 'image/jpeg', 2710518, '/files/images/', '', 'Gabrielle Avancena', 1356997131, 1356997131),
(47, 1, 'It is a duty to myself to eat healthy and nutritious foods, like fruits, in order to keep a balanced diet and stay fit.', 22, '1356997217_IMG_9508.JPG', 'image/jpeg', 2556693, '/files/images/', '', 'Gabrielle Avancena', 1356997217, 1356997217),
(48, 1, 'It is my duty to my family that I clean the house in order for it to be neat and healthy to live in.  My parents are very busy and it is my job to help around and clean.  It even helps my friends when they come over, so make the environment more welcoming.', 23, '1356997839_IMG_9509.jpg', 'image/jpeg', 2872776, '/files/images/', '', 'Gabrielle Avancena', 1356997839, 1356997839),
(49, 1, 'Its my duty to myself to keep myself fully nourished so I have enough energy for the rest of the day', 22, '1356998156_026.jpg', 'image/jpeg', 53774, '/files/images/', '', 'Geoffrey Lin', 1356998062, 1356998163),
(50, 1, 'It is my duty to my pet dog, Marble, to play with her whenever I can in order to make her happy, bond with her, and also keep her fit with the exercise that playing catch can bring.  ', 30, '1356998587_IMG_9510.JPG', 'image/jpeg', 105618, '/files/images/', '', 'Gabrielle Avancena', 1356998587, 1356998599),
(51, 1, 'It is the duty of the worker to be punctual and on time.', 24, '1356999310_IMG_7744[1].JPG', 'image/jpeg', 250311, '/files/images/', '', 'Yun-Ping Tseng', 1356999271, 1356999310),
(52, 1, 'It is my duty to my job as a Christian to always pray whenever I can, whether it be at church or just praying the rosary and reading the Bible at home.', 24, '1356999334_IMG_9512.jpg', 'image/jpeg', 2784707, '/files/images/', '', 'Gabrielle Avancena', 1356999334, 1356999334),
(53, 1, 'It is a duty to myself to exercise as much as possible to stay fit and ensure good health.', 22, '1356999414_IMG_7747.JPG', 'image/jpeg', 236189, '/files/images/', '', 'Yun-Ping Tseng', 1356999414, 1356999428),
(54, 1, 'It is my duty to help clean the tables and other furniture when my family is busy.', 23, '1356999550_IMG_7749.JPG', 'image/jpeg', 251099, '/files/images/', '', 'Yun-Ping Tseng', 1356999550, 1356999550),
(55, 1, 'It is one''s duty to help out a friend when in need of missed classwork or homework.', 23, '1356999685_friend.png', 'image/png', 10222, '/files/images/', '', 'Yun-Ping Tseng', 1356999685, 1356999685),
(56, 1, 'It is my own duty to take a shower everyday to keep myself clean. ', 22, '1356999823_IMG_7746.JPG', 'image/jpeg', 237201, '/files/images/', '', 'Yun-Ping Tseng', 1356999823, 1356999823),
(57, 1, 'It''s one''s duty to their self to find different hobbies and interests to do during leisure time.', 22, '1357000028_IMG_7745.JPG', 'image/jpeg', 160008, '/files/images/', '', 'Yun-Ping Tseng', 1357000028, 1357000028),
(58, 1, 'By eating fruits, I am providing myself with the nutrition that I need in order to be healthy. I am fulfilling a duty to myself by keeping myself healthy and fit. ', 22, '1357003824_20121231_202603.png', 'image/png', 14087, '/files/images/', '', 'Hannah Yoo', 1357003824, 1357003824),
(59, 1, 'It is my duty as a Christian to read the Bible, and do mini services with my family. ', 24, '1357004298_20121231_203453.png', 'image/png', 19816, '/files/images/', '', 'Hannah Yoo', 1357004298, 1357004298),
(60, 1, 'It''s a duty to myself to shower so that I can be hygienic and keep myself looking presentable.  ', 22, '1357025209_DSC06418.JPG', 'image/jpeg', 1958909, '/files/images/', '', 'Eunice Baik', 1357025209, 1357025209),
(61, 1, 'It''s a duty to myself to shower so that I can be hygienic and keep myself looking presentable. ', 22, '1357025310_DSC06418.JPG', 'image/jpeg', 1958909, '/files/images/', '', 'Eunice Baik', 1357025310, 1357025310),
(62, 1, 'When I am ill, it is a duty to myself to take medicine. Doing so will help rid my body of possible diseases that could prove to be life-threatening, and also return it to a healthy state. ', 22, '1357025758_DSC06430.JPG', 'image/jpeg', 1412382, '/files/images/', '', 'Eunice Baik', 1357025758, 1357025758),
(63, 1, 'During the cold winter months, it is a duty of mine to dress appropriately for the weather in order to keep myself warm and prevent illness.', 22, '1357026499_DSC06433.JPG', 'image/jpeg', 1331207, '/files/images/', '', 'Eunice Baik', 1357026499, 1357026499),
(64, 1, 'Making sure I receive enough sleep every night is a duty to myself because I will then be provided with energy to be attentive in all my classes the next day. ', 22, '1357026752_DSC06432.JPG', 'image/jpeg', 1276124, '/files/images/', '', 'Eunice Baik', 1357026752, 1357026752),
(65, 1, 'It is a duty to society to pick up any litter that is seen lying around on the streets because this will keep the environment clean.', 25, '1357027257_DSC06417.JPG', 'image/jpeg', 2334956, '/files/images/', '', 'Eunice Baik', 1357027257, 1357027257),
(66, 1, 'It is a duty to my job as a student to bring to school daily the books necessary in  retaining the material that is being taught during a lesson. ', 24, '1357028183_DSC06434.JPG', 'image/jpeg', 1259161, '/files/images/', '', 'Eunice Baik', 1357028183, 1357028183),
(67, 1, 'It is duty to myself to find the other half of the yin yang symbol, so I will not over stressed by academic and off balance. ', 22, '1357055400_Photo0222.jpg', 'image/jpeg', 519368, '/files/images/', '', 'Min Li ', 1357055400, 1357055400),
(68, 1, 'My duty to my brother is to make sure he finish his homework and help him understand everything he learned. ', 23, '1357055507_Photo0221.jpg', 'image/jpeg', 591828, '/files/images/', '', 'Min Li ', 1357055507, 1357055507),
(69, 1, 'A student''s job is to learn, the duty for the student is to have fun learning but not pressuring themselves. ', 24, '1357055713_Photo0225.jpg', 'image/jpeg', 452259, '/files/images/', '', 'Min Li ', 1357055713, 1357055713),
(70, 1, 'It is duty to myself to study hard and do your best, but it is also duty to myself to learn from mistakes and relax!', 22, '1357056363_IMG_1798.JPG', 'image/jpeg', 4599768, '/files/images/', '', 'Min Li ', 1357056363, 1357056363),
(71, 1, 'It is duty to myself to eat healthy food and keep my body nice and strong, so my family will not worry about me so much. ', 22, '1357060118_022.jpg', 'image/jpeg', 445337, '/files/images/', '', 'Min Li ', 1357060118, 1357060118),
(72, 1, 'It is my duty to take care of my friend''s baby when they are busy.', 23, '1357088073_IMG_3157.JPG', 'image/jpeg', 1618700, '/files/images/', '', 'Wendy Kamio', 1357088073, 1357088073),
(73, 1, 'It is our duty to help make rice cakes so that people around us can eat freshly pound rice cakes.', 25, '1357099093_PC300746.JPG', 'image/jpeg', 2322648, '/files/images/', '', 'Wendy Kamio', 1357099093, 1357099093),
(74, 1, 'It is my duty to feed my beagle Dakota everyday because I love her so much and I own her, so it is my responsibility to take care of her.', 30, '1357169255_IMG_0498.JPG', 'image/jpeg', 2508487, '/files/images/', '', 'Ivanka Juran', 1357169255, 1357169255),
(75, 1, 'It is my duty as a friend to help find their lost child, even if it is at night, in the cold.', 23, '1357169706_IMG_3284.JPG', 'image/jpeg', 1378429, '/files/images/', '', 'Wendy Kamio', 1357169706, 1357169706),
(76, 1, 'It is my duty to research colleges while still a Freshman so that when it is time to apply to college, I will have a good understanding of where I want to go, and what requirements there are to the schools of my choice.', 22, '1357170474_IMG_0496.JPG', 'image/jpeg', 3151949, '/files/images/', '', 'Ivanka Juran', 1357170474, 1357170474),
(77, 1, 'It is my duty to do my homework everyday, and to study hard in order to be rewarded at the end, by getting good grades.', 22, '1357170513_Photoon1-2-13at6.47PM.jpg', 'image/jpeg', 211727, '/files/images/', '', 'Nicole Vu', 1357170513, 1357171466),
(78, 1, 'It is my duty to my family to partake in a Christmas pageant each year, even though I am not of the Christian faith, because my aunt needs my help and it is my duty, as a family member, to aid her when she needs it.', 23, '1357170838_IMG_0492.JPG', 'image/jpeg', 2411782, '/files/images/', '', 'Ivanka Juran', 1357170838, 1357170838),
(79, 1, 'It is my duty to feed my dog Toby everyday, in order to give him the nutrients/energy in order to survive and have a healthy diet everyday (sometimes eats human food...)', 30, '1357170920_0.jpeg', 'image/jpeg', 7227, '/files/images/', '', 'Nicole Vu', 1357170920, 1357171631),
(80, 1, 'It is my duty to help my family out, by doing the laundry, so that there are fresh clean clothes to wear everyday.', 23, '1357171292_0-2.jpeg', 'image/jpeg', 4776, '/files/images/', '', 'Nicole Vu', 1357171292, 1357171421),
(82, 1, 'It is my duty to wash the dishes everyday after dinner in order to have clean plates and bowls to eat off of, even if it means take a long time until the very last bowl is done.', 23, '1357171558_0-1.jpeg', 'image/jpeg', 4482, '/files/images/', '', 'Nicole Vu', 1357171558, 1357171558),
(81, 1, 'It is my duty to do my homework thoroughly each night, even if it takes me a long time, so that I can get good grades.', 22, '1357171353_IMG_0495.JPG', 'image/jpeg', 2203127, '/files/images/', '', 'Ivanka Juran', 1357171353, 1357171353),
(83, 1, 'It is my duty to practice playing the piano every night, in order to get a complete understanding of lessons taught in class, so that i can do well on exams and get good grades.', 22, '1357171739_0-3.jpeg', 'image/jpeg', 6933, '/files/images/', '', 'Nicole Vu', 1357171739, 1357171739),
(84, 1, 'It is my duty as a Catholic to attend church every Sunday.', 24, '1357172492_IMG-20121215-00430.jpg', 'image/jpeg', 498303, '/files/images/', '', 'Michelle Zalewski', 1357172492, 1357172492),
(85, 1, 'It is my duty to play with my dog Dakota, as well as pet her and scratch her behind her ears (she loves that) because she is my dog, and therefore my responsibility.', 30, '1357172843_IMG_0513.JPG', 'image/jpeg', 1949002, '/files/images/', '', 'Ivanka Juran', 1357172843, 1357172843),
(86, 1, 'It is my duty to walk my dog Chubby everyday. ', 30, '1357173847_1357173757621.jpg', 'image/jpeg', 699398, '/files/images/', '', 'Michelle Zalewski', 1357173847, 1357173847),
(87, 1, 'It is my duty to my family and friends to set time aside from all the school work to spend time with them.', 23, '1357174418_616425_3623010535436_1534626297_o.jpg', 'image/jpeg', 211968, '/files/images/', '', 'Michelle Zalewski', 1357174418, 1357174418),
(88, 1, 'It is my duty as a teacher''s assistant at local religion classes to arrive on time and help the students in need.', 24, '1357174531_470349_508071409215763_628555780_o.jpg', 'image/jpeg', 107764, '/files/images/', '', 'Michelle Zalewski', 1357174531, 1357174531),
(89, 1, 'It is our duty to help the homeless people in our community by providing them with food or helping out in a soup kitchen.', 25, '1357175138_IMG_2877.JPG', 'image/jpeg', 2165455, '/files/images/', '', 'Wendy Kamio', 1357175138, 1357175138),
(90, 1, 'It is my duty to myself to do all my homework in order to pass my classes.', 22, '1357180974_GEDC2424.JPG', 'image/jpeg', 6640208, '/files/images/', '', 'Seychelle Steele', 1357180975, 1357180975),
(91, 1, 'It is a duty to myself to do all my homework and study for each test in order to get good grades and be successful.', 22, '1357181902_Picture.jpg', 'image/jpeg', 6507671, '/files/images/', '', 'Michelle Zalewski', 1357181903, 1357181983),
(92, 1, 'It is my duty to make sure my dog Toby rests and sleeps in order to re-energize and wake up to a fresh new day, everyday.', 30, '1357183241_0-5.jpeg', 'image/jpeg', 6832, '/files/images/', '', 'Nicole Vu', 1357183241, 1357183241),
(93, 1, 'It is my duty to play with my dog Toby in order to keep him healthy and active, instead of just sitting in one spot.', 30, '1357183283_0-4.jpeg', 'image/jpeg', 5553, '/files/images/', '', 'Nicole Vu', 1357183283, 1357183283),
(94, 1, 'It is my duty to my family to help them clean up my baby sister''s toys after she is done playing with them. ', 23, '1357183570_GEDC2428.JPG', 'image/jpeg', 6942013, '/files/images/', '', 'Seychelle Steele', 1357183571, 1357183571),
(95, 1, 'It''s a duty to myself to practice my religion by praying occasionally from my Siddur.', 22, '1357189682_itsaduty1.JPG', 'image/jpeg', 145424, '/files/images/', '', 'Coryn Nahum Band 9', 1357189682, 1357189682),
(96, 1, 'It''s a duty to myself to stay up all hours of the night in order to study and finish all of my homework. (Notice that by all hours I mean that the digital clock beside the textbook reads 12:06 A.M.)', 22, '1357189757_itsaduty2.JPG', 'image/jpeg', 115380, '/files/images/', '', 'Coryn Nahum Band 9', 1357189757, 1357190224),
(97, 1, 'It''s a duty to myself that I get enough sleep every night to be a healthy, well-functioning human-being. ', 22, '1357189830_itsaduty3.JPG', 'image/jpeg', 160161, '/files/images/', '', 'Coryn Nahum Band 9', 1357189830, 1357189830),
(98, 1, 'It''s a duty to myself that I get enough sleep every night to be a healthy, well-functioning human-being. ', 22, '1357189838_itsaduty3.JPG', 'image/jpeg', 160161, '/files/images/', '', 'Coryn Nahum Band 9', 1357189838, 1357189838),
(99, 1, 'It''s a duty to myself that I get enough sleep every night to be a healthy, well-functioning human-being. ', 22, '1357189858_itsaduty3.JPG', 'image/jpeg', 160161, '/files/images/', '', 'Coryn Nahum Band 9', 1357189858, 1357189858),
(100, 1, 'It''s a duty to myself that I have a creative outlet so that I don''t have a breakdown from stress and so that I can be happy. My creative outlet is dance, as portrayed in the photo of me on pointe. ', 22, '1357190013_itsaduty4.JPG', 'image/jpeg', 68785, '/files/images/', '', 'Coryn Nahum Band 9', 1357190013, 1357190013),
(101, 1, 'It''s a duty to myself that I maintain a healthy level of cleanliness by showering and using soap.  By maintaining a healthy level of cleanliness, I catch and spread less diseases and illnesses causing me to live a better life.', 22, '1357190117_itsaduty5.JPG', 'image/jpeg', 97539, '/files/images/', '', 'Coryn Nahum Band 9', 1357190117, 1357190545),
(102, 1, 'Individuality is important to all, it is the qualities that identifies a person,animal,or object from another. Everyone and everything is different in their own ways and have different features, personality, and characteristics that describe them. The blue fish is different compared to all the goldfish because of its color and features.', 15, '', '', 0, '', 'http://dingo.care2.com/pictures/greenliving/uploads/2011/01/individuality.jpg', 'Israt Motaleb', 1357248407, 1357248407),
(103, 1, 'Many people from different cultures eat various types of food. The food you eat represents your culture and the religion you are from. Halal food is what many Muslims people eat in the religion of Islam. The Muslim culture eat food that are halal to follow their duties as a Muslim. Food is based on what culture you are from which determines your personality about your religion.', 28, '', '', 0, '', 'http://www.halalfoodinhanoi.com/_/rsrc/1343920868159/home/nisa_main.gif', 'Israt Motaleb', 1357248937, 1357248937),
(104, 1, 'It is my duty to always study for a test and complete all my assignments and homework''s on time. Also, organizing my textbooks and papers in a neat place so I can''t never forget anything.', 22, '', '', 0, '', 'http://www.google.com/imgres?q=textbooks&um=1&hl=en&tbo=d&biw=1138&bih=518&tbm=isch&tbnid=i3y8NAgH6W7XIM:&imgrefurl=http://www.collegemagazine.com/editorial/237/textbook-woes-used-new-brand-new&docid=WpcWGslwj64LUM&imgurl=http://www.collegemagazine.com/fi', 'Israt Motaleb', 1357249259, 1357249335),
(105, 1, 'It is my job to pray all the time so I can complete my duties of being a Muslim follower.', 22, '1357249611_IMG_5007.JPG', 'image/jpeg', 1009293, '/files/images/', '', 'Israt Motaleb', 1357249428, 1357249611),
(106, 1, 'It is my duty to go to clean the house, so when my parents come back home from work they can begin to pray.', 23, '1357249898_IMG_5007.JPG', 'image/jpeg', 1009293, '/files/images/', '', 'Israt Motaleb', 1357249898, 1357249939),
(107, 1, 'It is my duty as a Muslim to go to the mosque every Fridays.', 24, '1357250042_IMG_5011.JPG', 'image/jpeg', 654818, '/files/images/', '', 'Israt Motaleb', 1357250042, 1357250042),
(108, 1, 'It is a duty to society to reduce, reuse and recycle for a better healthy environment.', 25, '1357250329_IMG_4301.JPG', 'image/jpeg', 607820, '/files/images/', '', 'Israt Motaleb', 1357250251, 1357250329),
(109, 1, 'It is my duty to feed my goldfish once every day so they don''t get hungry.', 30, '', '', 0, '', 'http://www.ri.net/schools/Smithfield/Ripley/science/goldfish%20tank.jpg', 'Israt Motaleb', 1357250479, 1357250479),
(110, 1, 'Helping others, giving a helping hand to others with courage. Making the society a caring and helpful place.', 1, '1357250731_IMG_4314.PNG', 'image/png', 267464, '/files/images/', '', 'Israt Motaleb', 1357250731, 1357250731),
(111, 1, 'It is my duty to myself to make my bed every morning so that I can go to sleep in a well made bed every night, and so my room doesn''t look messy. ', 22, '1357251099_GEDC2432.JPG', 'image/jpeg', 6862132, '/files/images/', '', 'Seychelle Steele', 1357251100, 1357251100),
(112, 1, 'It is my duty to my family to wash up my dishes.', 23, '1357251773_GEDC2435.JPG', 'image/jpeg', 6871992, '/files/images/', '', 'Seychelle Steele', 1357251774, 1357251774),
(113, 1, 'It is a duty to myself to go to bed at a reasonable hour and make sure I wake up with enough sleep everyday.', 22, '1357252133_abedroom.jpg', 'image/jpeg', 704097, '/files/images/', '', 'Winnie Wang', 1357252133, 1357252133),
(114, 1, 'It is my duty to study and do my homework everyday in order to do well in school and life.', 22, '1357252203_ahomework.jpg', 'image/jpeg', 917964, '/files/images/', '', 'Winnie Wang', 1357252203, 1357252203),
(115, 1, 'It is my duty to wash the dishes when they are left in the sink for my family.', 23, '1357252451_adishes.jpg', 'image/jpeg', 918265, '/files/images/', '', 'Winnie Wang', 1357252451, 1357252451),
(116, 1, 'It is my duty to do the laundry for my family because we all need clean clothing.', 23, '1357252552_alaundry.jpg', 'image/jpeg', 620195, '/files/images/', '', 'Winnie Wang', 1357252552, 1357252552),
(117, 1, 'It is my duty to clean the floors so that it won''t be dirty for everyone walking on it.', 23, '1357252652_abroom.jpg', 'image/jpeg', 683925, '/files/images/', '', 'Winnie Wang', 1357252652, 1357252652),
(118, 1, 'Its my duty to make sure I keep myself healthy and focused by eating snacks and meals.', 22, '1357260760_ss002.JPG', 'image/jpeg', 2690294, '/files/images/', '', 'Laila Foda', 1357260760, 1357260760),
(119, 1, 'Its my duty to make sure I get enough sleep in order to stay focused in school.', 22, '1357260896_ss003.JPG', 'image/jpeg', 3348110, '/files/images/', '', 'Laila Foda', 1357260896, 1357260896),
(120, 1, 'Its my duty to make sure to study so I get get good grades on all my tests and quizzes. ', 22, '1357260998_ss004.JPG', 'image/jpeg', 2861601, '/files/images/', '', 'Laila Foda', 1357260998, 1357260998),
(121, 1, 'My duty is to do my homework everyday so that I do well in school.', 22, '1357261153_ss007.JPG', 'image/jpeg', 3398294, '/files/images/', '', 'Laila Foda', 1357261153, 1357261153),
(122, 1, 'My duty is to my dog Nyla. i have to feed her and walk her everyday', 30, '1357261440_CAM00177.jpg', 'image/jpeg', 534405, '/files/images/', '', 'Dasia moore ', 1357261365, 1357261440),
(123, 1, 'Its my duty to clean to help keep the house clean for all my family members. ', 23, '1357261427_ss008.JPG', 'image/jpeg', 2445815, '/files/images/', '', 'Laila Foda', 1357261427, 1357261427),
(124, 1, 'It is also mu duty to feed my turtle Tiana and make sure she is healthy. ', 30, '1357261579_CAM00179.jpg', 'image/jpeg', 504395, '/files/images/', '', 'Dasia moore ', 1357261579, 1357261579),
(125, 1, 'It is mu duty to wash dishes every night. ', 23, '1357261832_CAM00186.jpg', 'image/jpeg', 603872, '/files/images/', '', 'Dasia Moore ', 1357261832, 1357261832),
(126, 1, 'It is my duty to empty all the waste baskets in the house at the end of every week for garbage pickup . ', 23, '1357262038_CAM00187.jpg', 'image/jpeg', 592527, '/files/images/', '', 'Dasia Moore ', 1357262038, 1357262038),
(127, 1, 'My duty is to practice my flute for 15 mins a day every weekend. ', 22, '1357262448_CAM00189.jpg', 'image/jpeg', 812113, '/files/images/', '', 'Dasia Moore', 1357262245, 1357262448),
(128, 1, 'It is my duty to myself to prepare a quick snack to eat while doing my homework so I do not starve.', 22, '1357265222_GEDC2439.JPG', 'image/jpeg', 7035883, '/files/images/', '', 'Seychelle Steele', 1357265223, 1357265223),
(129, 1, 'It is my duty to wear my retainers every night so that my teeth do not go back to the way they were before my braces fixed them.', 22, '1357266171_photo2.JPG', 'image/jpeg', 1934897, '/files/images/', '', 'Wendy Kamio', 1357266171, 1357266171),
(130, 1, 'It is my duty to brush my teeth daily so that my teeth and gums stay clean and healthy.', 22, '1357266214_photo3.JPG', 'image/jpeg', 2364883, '/files/images/', '', 'Wendy Kamio', 1357266214, 1357266214),
(131, 1, 'It is a duty to myself to practice the violin and piano at least 3 times a week so that I may improve my skills, and further my learning.', 22, '1357270788_20130103_223333.png', 'image/png', 18632, '/files/images/', '', 'Hannah Yoo', 1357270788, 1357270788),
(132, 1, 'It is a duty to my family, to do the laundry so that I am doing my part in helping around the house. ', 23, '1357270887_20130103_223421.png', 'image/png', 18652, '/files/images/', '', 'Hannah Yoo', 1357270887, 1357270887),
(133, 1, 'It is a duty to myself, to shower everyday so that I can have good hygiene.', 22, '1357270933_20130103_223404.png', 'image/png', 17190, '/files/images/', '', 'Hannah Yoo', 1357270933, 1357270933),
(134, 1, 'It is a duty to myself, to shower everyday so that I can have good hygiene.', 22, '1357270936_20130103_223404.png', 'image/png', 17190, '/files/images/', '', 'Hannah Yoo', 1357270936, 1357270936),
(135, 1, 'It is my duty as a Christian, to give an offering to my church so that it may be used towards the work of God,  and my church.', 24, '1357271070_20121231_203547.png', 'image/png', 16706, '/files/images/', '', 'Hannah Yoo', 1357271070, 1357271070),
(136, 1, 'It is my duty to my family, to help bring in the grocery bags after going grocery shopping, so that I may lessen the burden of my parents in some way.', 23, '1357271192_20130103_223622.png', 'image/png', 18757, '/files/images/', '', 'Hannah Yoo', 1357271192, 1357271192);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
