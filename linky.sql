-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2013 at 10:19 AM
-- Server version: 5.5.31
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aphescom_linky`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
CREATE TABLE IF NOT EXISTS `badges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
CREATE TABLE IF NOT EXISTS `boards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `image` varchar(255) DEFAULT NULL,
  `summary` tinyint(1) DEFAULT NULL,
  `summary_prompt` text,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `user_id`, `title`, `description`, `image`, `summary`, `summary_prompt`, `created`, `modified`, `active`) VALUES
(1, 1, 'Beauty', 'Where do you see beauty in your life?', '', 1, 'The experience of "beauty" often involves the interpretation of some entity as being in balance and harmony with nature, which may lead to feelings of attraction and emotional well-being. Because this can be a subjective experience, it is often said that "beauty is in the eye of the beholder." Write a short summary using 3 photographs from this board.', 1358135732, 1358195610, 0),
(2, 3, 'Ecosystems!', 'What makes an ecosystem function? How do different organisms work together to create a stable ecosystem? Why are each of these organisms important to the larger whole?\r\n\r\nWe will use this board to begin making some real-world connections to the living environment tests. Use the categories below to find examples online and in the world you live in!', 'http://www.kidsgeo.com/images/ecosystem.jpg', 1, 'How do these organisms help to create stable ecosystems?', 1358225028, 1358264484, 0),
(3, 3, 'The Regents in REAL LIFE', 'You''ve probably spent a lot of time examining the definitions of different words for the Living Environment Regents. But science isn''t just about remembering definitions! \r\n\r\nUsing this board, you will have the opportunity to connect the vocabulary you know to some real-life examples of those things. What are some real-world examples of science? How does these different examples of science relate to your "mystery creature"?', 'http://us.cdn1.123rf.com/168nwm/vladislav_m/vladislav_m0902/vladislav_m090200045/4311911-vector-dna-icon-black-and-white-simply-change.jpg', 1, 'Create a summary of your mystery creature using images from our collective library.', 1358304009, 1358370275, 0),
(4, 5, 'American Decline', 'You have recently learned about the decline and fall of the Roman Empire.  In recent years, some academics have made the argument that the United States, after dominating world politics for the past century, is also on the decline.  Is the United States headed towards collapse, or are such fears imaginary?  What evidence can you find to support either side of this argument?', 'http://geopolicraticus.files.wordpress.com/2012/04/american-question.png', 1, 'Look through the bank of images uploaded by your classmates.  Is America on the decline, or are such fears imaginary?  Explain.  Support your answer with three images chosen from the image bank.  (1 paragraph minimum)', 1358310966, 1358861949, 1),
(5, 5, 'Civil Liberties', 'The first amendment in the Bill of Rights is perhaps the most famous.  It states:\r\n\r\n"Congress shall make no law respecting an establishment of religion, or prohibiting the free exercise thereof; or abridging the freedom of speech, or of the press; or the right of the people peaceably to assemble, and to petition the Government for a redress of grievances."\r\n\r\nIn what ways do you see the effects of the first amendment in the world around you?  How are these rights protected?  Are there exceptions to these protections, either in the law or in practice?  How about in other nations?  Do they have the same protections as we do?', 'http://alexwood.net/files/2012/12/freedom-of-speech-logo-pt1ert-300x158.jpg', NULL, NULL, 1358347241, 1358347241, 0),
(6, 5, 'Civil Liberties', 'The first amendment in the Bill of Rights is perhaps the most famous. It states:\r\n\r\n"Congress shall make no law respecting an establishment of religion, or prohibiting the free exercise thereof; or abridging the freedom of speech, or of the press; or the right of the people peaceably to assemble, and to petition the Government for a redress of grievances."\r\n\r\nIn what ways do you see the effects of the first amendment in the world around you? How are these rights protected? Are there exceptions to these protections, either in the law or in practice? How about in other nations? Do they have the same protections as we do?', 'http://alexwood.net/files/2012/12/freedom-of-speech-logo-pt1ert-300x158.jpg', 1, 'In what ways do you see the effects of the first amendment in the world around you? How are these rights protected? Are there exceptions to these protections, either in the law or in practice? How about in other nations? Do they have the same protections as we do? (1 paragraph)', 1358349082, 1359225632, 1),
(7, 3, 'Photos of the Earth (Museum)', 'Photos linking Earth Science Regents Prep. to American National History Museum. ', 'http://regentsprep.org/regents/earthsci/graphics/rckcycledia.jpg', 0, '', 1358367583, 1358368123, 1),
(8, 3, 'Mystery Animal History', 'So far, youâ€™ve spent the day examining the different features of your mystery animal - its adaptations, evolution, genetics, diet, and impact among other ideas.\r\n\r\nItâ€™s now your job to figure out how the mystery animal has evolved over time. Using the displays and the descriptions of African Mammals, describe how the mystery animal has adapted to its ecosystem, organisms that are closely related to it, and how humans have impacted this animal. ', 'http://news.nationalgeographic.com/news/bigphotos/images/070906-dinosaurs-birds_big.jpg', 1, 'How has the mystery animal evolved in relation to ecosystems, adaptations, inheritance, relationships, and human impact?', 1358380942, 1358383442, 1),
(9, 1, 'Tower Research Office', 'You Ed Labbers have been using the Tower Research office for many weeks. How does the office facilitate collaboration?', '', 1, 'If you were to design a co-working space, what are the essential features to include to maximize productivity and collaboration?', 1358384237, 1358384788, 1),
(10, 3, 'Future = Education', 'We face a critical juncture in education. Students and learning environments have become increasingly dynamic, collaborative and connected. Educators must begin thinking about where and how to facilitate learning as the paradigms of "classrooms", "teachers", and "education" shift.\r\n\r\nHow can we push education into the 21st century? What kinds of resources (tools, people, ideas) can take us where we need to go?', 'http://www1.ccs.k12.in.us/uploads/0004/9060/mortarboard1.jpg', 1, 'What will push education forward?', 1359173014, 1359173456, 1),
(11, 1, 'Demo Board', 'blah blah', '', NULL, NULL, 1359217820, 1359217820, 0),
(12, 5, 'Old meets new in NYC', 'New York is an interesting city architecturally as much of the building stock and infrastructure is quite old.  Yet New York is home to companies and offices requiring modern amenities and technology.  How does the space here at AlleyNYC embody this duality?  Do old and new combine in new and interesting ways?', 'http://www.selectism.com/news/wp-content/uploads/2012/05/wythe-hotel-williamsburg-1.jpg', 1, 'What are the architectural challenges and advantages of setting up an office in NYC?', 1359225785, 1359226035, 0),
(13, 3, 'The Seneca Falls Convention and 19th Amendment', 'In July of 1848, a group of women and men met in Seneca Falls, New York, to discuss women''s rights. In 1920, Congress approved an amendment to the constitution stating that "...the right of citizens of the United States to vote shall not be denied or abridged by the United States or by any State on account of sex."\r\n\r\nDid these represent progress for women? Why or why not?', 'http://enotes.files.wordpress.com/2013/01/women_vote.jpg?w=590', 1, 'Did the Seneca Falls Convention and 19th Amendment empower women? Why or why not?', 1359601517, 1359601678, 0),
(14, 7, 'My Board', 'This is the description that will show up on the main page of your board. Choose an image and insert the url. ', 'http://edesignlabs.org/wp-content/uploads/2012/06/banner.png', NULL, NULL, 1363373499, 1363373499, 1),
(15, 7, 'Field Trip to the Armory Show', 'The Armory Show is a historic event in which artists from around around the world come to show their work. On this field trip, we will be looking at many different styles. Document at least one image for each style.', 'http://www.thearmoryshow.com/cgi-local/db_images/site_images/cache/683-filename-700-467-fit.jpg', 1, 'What pieces are your favorite? Is there a common theme in how they were created or what they seek to communicate?', 1363373894, 1363374703, 1),
(16, 7, 'TEST', 'TEST', 'TEST', NULL, NULL, 1367941555, 1367941555, 0),
(17, 7, 'THIS IS YOUR TITLE', 'This is your introduction.', 'http://edesignlabs.org/hackathon/wp-content/uploads/2013/04/EDesignLabLogo.png', NULL, NULL, 1367947204, 1367947204, 1),
(18, 7, 'THIS IS YOUR TITLE', 'This is your introduction.', 'http://edesignlabs.org/hackathon/wp-content/uploads/2013/04/EDesignLabLogo.png', NULL, NULL, 1367947334, 1367947334, 1),
(19, 1, 'EDesign Lab Test', 'Lorem ipsum', '', NULL, NULL, 1370102482, 1370102482, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topic_photo_id` int(11) NOT NULL,
  `comment` text,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `summaries`
--

DROP TABLE IF EXISTS `summaries`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `summaries`
--

INSERT INTO `summaries` (`id`, `user_id`, `board_id`, `photo1`, `photo2`, `photo3`, `description`, `complete`, `created`, `modified`) VALUES
(1, 5, 1, 14, 16, 18, 'These three photos show natural phenomena that are seemingly random.  A collection of stars, the flow of sand, the formation of a crystal.  Yet each of these phenomena have been shaped by laws of nature, whether it be gravity, friction, or chemical structure.  Perhaps beauty in nature is when these invisible forces are somehow made apparent to the human eye.  Suddenly we gain a glimpse of the laws that shape the world around us.', 1, '2013-01-14 15:40:35', '2013-01-14 15:40:35'),
(2, 7, 1, 9, 16, 18, 'I think that beauty is perceived at scale. In order to find it, sometimes you have to zoom in a bit.', 1, '2013-01-14 15:49:51', '2013-01-14 15:49:51'),
(3, 1, 1, 0, 0, 0, 'xcbsfhbgsfhgnfh', 0, '2013-01-14 15:58:29', '2013-01-14 15:58:29'),
(4, 3, 1, 9, 18, 24, 'geometries in nature', 1, '2013-01-14 23:28:40', '2013-01-14 23:28:40'),
(5, 10, 2, 27, 31, 41, 'this are examples of carnivores , herbivores, and discomposers. this bacterias are gross but is good to know what they do!.', 1, '2013-01-15 11:39:45', '2013-01-15 11:39:45'),
(6, 3, 2, 31, 35, 41, 'Do you know what''s cool? ANIMALS! (And ecosystems!!!)', 1, '2013-01-15 12:06:10', '2013-01-15 12:06:10'),
(7, 11, 2, 30, 39, 43, ' These 3 photos show that bears are consumers. Lions are carnivores. And cows are herbivores. These animals make up an ecosystem.', 1, '2013-01-15 12:07:31', '2013-01-15 12:07:31'),
(8, 12, 1, 14, 16, 13, '', NULL, '2013-01-15 21:22:54', '2013-01-15 21:22:54'),
(9, 7, 2, 28, 30, 43, 'This is me testing the summary part.', 1, '2013-01-16 17:30:11', '2013-01-16 17:30:11'),
(10, 1, 2, 0, 0, 0, '', NULL, '2013-01-16 17:30:52', '2013-01-16 17:30:52'),
(11, 1, 3, 0, 0, 0, '', NULL, '2013-01-16 17:30:58', '2013-01-16 17:30:58'),
(12, 5, 2, 0, 0, 0, '', NULL, '2013-01-16 17:48:30', '2013-01-16 17:48:30'),
(13, 4, 1, 0, 0, 0, '', NULL, '2013-01-16 18:15:28', '2013-01-16 18:15:28'),
(14, 3, 8, 0, 0, 0, '', NULL, '2013-01-16 19:19:47', '2013-01-16 19:19:47'),
(15, 3, 3, 0, 0, 0, '', NULL, '2013-01-16 19:36:23', '2013-01-16 19:36:23'),
(16, 4, 8, 0, 0, 0, '', NULL, '2013-01-16 19:40:36', '2013-01-16 19:40:36'),
(17, 1, 8, 0, 0, 0, '', NULL, '2013-01-16 19:40:36', '2013-01-16 19:40:36'),
(18, 25, 1, 0, 0, 0, '', NULL, '2013-01-16 20:21:37', '2013-01-16 20:21:37'),
(19, 25, 8, 0, 0, 0, '', NULL, '2013-01-16 20:24:39', '2013-01-16 20:24:39'),
(20, 24, 9, 53, 59, 61, '', NULL, '2013-01-16 20:24:57', '2013-01-16 20:24:57'),
(21, 4, 9, 0, 0, 0, '', NULL, '2013-01-16 20:25:53', '2013-01-16 20:25:53'),
(22, 5, 9, 0, 0, 0, '', NULL, '2013-01-16 20:26:21', '2013-01-16 20:26:21'),
(25, 28, 1, 2, 7, 69, 'the last pic is not beauty', 1, '2013-01-16 20:30:31', '2013-01-16 20:30:31'),
(23, 6, 9, 63, 68, 70, '', NULL, '2013-01-16 20:26:49', '2013-01-16 20:26:49'),
(24, 3, 9, 56, 60, 67, 'Food, secret rooms and snacks. Game on.', 1, '2013-01-16 20:27:02', '2013-01-16 20:27:02'),
(26, 7, 8, 0, 0, 0, '', NULL, '2013-01-18 10:01:50', '2013-01-18 10:01:50'),
(27, 45, 8, 90, 93, 105, 'The mystery animal is from an ecosystem that provides food which are plants and consume other organisms. It preys on other organisms. It is like a bird like animal because it has bird like claws and maybe feathers on the side of it. ', 1, '2013-01-18 13:03:17', '2013-01-18 13:03:17'),
(28, 47, 8, 90, 93, 104, 'In relation to the ecosystem it might got adapted to the rain forest, it might got adapted by having feathers in all its body and becoming small an its heritage could be several birds in different ecosystems.', 1, '2013-01-18 13:03:18', '2013-01-18 13:03:18'),
(29, 46, 8, 90, 101, 105, 'This is the mystery animals habitat and its closest relative. ', 1, '2013-01-18 13:03:45', '2013-01-18 13:03:45'),
(30, 42, 8, 93, 97, 105, 'I picked these pictures because the birds could be related because the mystery animal has wings ', 1, '2013-01-18 13:04:51', '2013-01-18 13:04:51'),
(31, 43, 8, 93, 98, 105, 'It can live around birds but it looks like a modern dinosaur so it will eat dears.. I think', 1, '2013-01-18 13:04:59', '2013-01-18 13:04:59'),
(32, 41, 8, 92, 95, 103, 'I picked these 3 because the mystery animal looks like a raptor and in the 3 pics it shows to me certain environments where the animal would live and feed ', 1, '2013-01-18 13:05:05', '2013-01-18 13:05:05'),
(33, 44, 8, 88, 95, 104, 'The leaves in this animal are plants the mystery animal eats. ', 1, '2013-01-18 13:05:38', '2013-01-18 13:05:38'),
(34, 5, 8, 0, 0, 0, '', NULL, '2013-01-18 21:44:43', '2013-01-18 21:44:43'),
(35, 21, 9, 0, 0, 0, '', NULL, '2013-01-20 20:04:10', '2013-01-20 20:04:10'),
(36, 5, 4, 0, 0, 0, '', NULL, '2013-01-22 08:39:18', '2013-01-22 08:39:18'),
(37, 5, 6, 0, 0, 0, '', NULL, '2013-01-22 09:05:36', '2013-01-22 09:05:36'),
(38, 20, 6, 47, 82, 146, 'The effects of the first amendment can be seen in the world around me within the aspects of our everyday lives. The first amendment protects the freedom of religion, the freedom of speech, the freedom of press, the right to peaceably assemble and it also prohibits respecting an establishment of religion. The rights that we are granted by the first amendment are exercised frequently in the world around us. For example, Americans are able to practice any religion, or no religion at all. The first Amendment grants us this right. That is why, you can see churches, mosques and temples all in the same town. The first Amendment also allows us freedom of press and the freedom of speech. This is practiced most commonly by newspapers amongst many other types of publishing. Newspapers have the freedom to report and record whatever they please and publish works of any kind. This allows for Americans to be fully informed and this right help to prevent a strict form of government because publishings are not censored or limited. Freedom of speech is the reason why Americans are allowed to voice their opinions and say whatever they choose using whichever words they please. For example, anyone can publish a video in which they speak about any topic. The right to peaceable assembly is practiced all around the world. People congregate in order to petition for a common interest such as job availability or lower taxes, amongst many other issues. Recently, a march on Wall Street took place in which Americans called for changes to governmental policy. The rights granted by the first Amendment are protected by law because anyone who poses a limitation on another person''s rights can be arrested and prosecuted. There are, however, exceptions to the First Amendment. Cyber-bullying is one example. Regardless of freedom of speech, people cannot direct hateful speech towards one another and cannot threaten or imply harm on other. This is punishable by law. Other nations do not have the same protections as we do. For example, China, a communist nation, widely censors published materials and the internet and limits what people can say or publish. By doing so, China enforces a strict form of government in which people cannot freely express rebellious opinions. ', 1, '2013-01-22 10:54:58', '2013-01-22 10:54:58'),
(39, 17, 4, 45, 127, 150, 'I think these photos all show how the American economy is in decline. The US national debt is rising and people are losing jobs. Many things have become more expensive like homes and salaries aren''t rising much either. In one  of the pictures there is a boy asking for money. These things aren''t jokes. I even see people begging on the streets for money because they have lost their job, home, and don''t have any money.', 1, '2013-01-22 11:20:04', '2013-01-22 11:20:04'),
(40, 21, 4, 0, 0, 0, '', NULL, '2013-01-22 11:54:23', '2013-01-22 11:54:23'),
(41, 52, 4, 127, 142, 145, 'Yes, I do think that America is on the verge of declining. i would first like to address our government and how many say that it is a Democracy, but is it really? Basically, today big businesses control the economy and basically end up controlling the government. Like the picture with the rich man and the poor people carrying him, the rich control those lower than them with money because the have enough to spare and the poor need it  but use that money to the rich often use the money to their own benefit. Adding on to this, the United States is in enormous debt. As you can see the the national debt picture, we owe a lot of money, and believe me this price won''t go away anytime soon. As a result, we began to print more money and it is becoming to worth nothing, as you can see the the inflation cartoon, it is only ever increasing and it is extremely hard to deflate. Inflation is a problem and it has been one for a long time, some living even today remember when gas prices wasn''t so high. I''m not saying that America will never gain back a good economy or a better government, I''m saying things look bad and they don''t look like they''ll get any better, but if we try to make a difference and work hard to stop these problems, we can be one step closer to recovery.', 1, '2013-01-22 13:38:02', '2013-01-22 13:38:02'),
(42, 54, 4, 143, 150, 151, 'I believe that America is on the decline and such fears aren''t imaginary. The first image shows people waiting in line for food because they can''t afford it. These people most likely don''t have a job or possibly a home. Another picture shows a child holding a sign that says,"Homeless & Hungry." This shows that the economic crisis is affecting the whole country. That the innocent are no longer innocent , that our country is changing. According to the article, "Homeless Children in America" by Pat Hartman, at any given time the smallest amount of homeless children is 77,000. The final image shows the defacing of a mosque. This image shows that what was once a sanctuary is no longer a safe place. Based on the images, I believe that America is on a decline and our worst fears are coming true.', 1, '2013-01-22 13:46:05', '2013-01-22 13:46:05'),
(43, 36, 6, 78, 82, 107, 'The first Amendment plays a major role in the world around me. People might believe that it would be better to abide by their own rules but without the first amendment things wouldnâ€™t have been they way they are today. If it were not for the first amendment African Americans would still be separated from the whites and still be discriminated against. Martin Luther King Jr. would not have been able to make his famous â€œI had A Dreamâ€ speech at Lincoln memorial if it was not for the first amendment. However even though we have the right of freedom religion, speech, and assembly it does notmean we have the right to say or do what we want. If you are a group protesting against gun violence the first amendment does notprotect you if you chose to burn down two local gun stores in your community. If you are expressing your opinion on any topic such as religion the first amendment does not protect the negative opinions and ideas you express that can be seen as harmful to others. In India people have the right to practice what ever religion they want and in Greece people have the right to express their opinions by drawing graffati on the walls. With the first amendment we as a people have come a long way, and if it were not for the first amendment things would be completely different.', 1, '2013-01-22 15:20:10', '2013-01-22 15:20:10'),
(44, 16, 4, 44, 142, 159, 'I feel that America is slowly declining as time goes by. The first image I chose shows a man that is or looks like Uncle Sam sitting down begging for money. Someone drew this political cartoon showing America losing money and overall declining. It is saying that America is getting poorer and poorer by the minute. The second cartoon shows a rich man surrounded by bags of money sitting on a platform being held up by people who appear to be poor. The man is luring the people forward by holding a fishing pole with money at the end of it. This man in the political cartoon is the government and the poor people are the people that make up America; the working class. This cartoon is saying that the government is being unfair because they keep a lot of money that they should share with the poor, to make their lives better. If people continue to act like this, the poor will not be able to afford to pay taxes and this will push America even further into a decline. The third picture shows a man protesting with a sign that says "I keep my hair short to avoid tearing it out over the economy." The man is saying that the economy is bad and this upsets him. These three pictures all support the conclusion that America is on a decline mostly because of their economy. According to The Economist, the United States was the best place in the world to be born into back in 1988.  Today, America is tied for 16th place. In early 2005, the average price of a gallon of gasoline was less than 2 dollars a gallon. Now, the average price of a gallon of gas is about 3-4$. Inflation is occurring. Inflation also occurred in ancient Rome, and their empire declined. I think America is slowly declining, but it will take a long time for it to disappear completely. ', 1, '2013-01-22 17:02:51', '2013-01-22 17:02:51'),
(45, 63, 6, 73, 165, 178, 'The First Amendment consists of the Freedom of Speech and the Freedom of Assembly.  That means people can say what they want to say and that people may come and form together to defend a common interest.  The people of the United States have exercised their First Amendment rights as they come together and protests under the Occupy Wall Street Movement.  The people felt that there was a growing gap between the middle class and the upper class.  The middle and lower class, or the 99%, believe that it was not fair how most of the income were being taken by the upper class or the 1%.  For days, they have protested as shown on the first picture.  The people refused to stay silent and the movement spread to other cities such as Washington DC and Los Angeles.  Of course, officials had tried to silence the movement as seen in the second photograph.  These officials tried to "put a plug" on what the protesters were saying even though they had the right to assembly and the right of speech because of the First Amendment.  The officials tried to quiet the protesters as under the bill HR 347 or the 2011 Federal Restricted Building and Grounds Improvement Act.  The Act was an extension of the Senate Bill S. 1794 which prohibited the public from blocking or entering a public area where a person under the Secret Service protection might be, like the President''s inauguration.  The HR 347 bill extended the law by adding on more areas in Washington DC in response to the protesters of Occupy DC, therefore making it illegal for people to protest in certain areas.  Also, people may be fined or arrested for entering these areas even though they had no knowledge of their actions being illegal.  This is law, aside from being unfair, completely violates a person''s First Amendment Rights as it prohibits people from assembling together to get their voices heard and fight for injustices.', 1, '2013-01-22 20:47:29', '2013-01-22 20:47:29'),
(46, 62, 6, 49, 175, 191, 'The effects of the first amendment are present in the daily lives of everyone in the world around me. The first amendment not only affects citizens of the United States but people all around the world. The first amendment right protects the freedom of religion, freedom of speech, freedom of press, freedom of assembly and the right to petition. These rights are protected by the Constitution. These rights effect Americans because in America, you can find many different religions being practiced and places of religious observance. You can find   churches, mosques, temples, shrines and many more. The freedom of press allows newspapers and the media to report anything they feel that the public must know. The freedom of speech allows Americans to speak their opinions without any fear. The right to assemble allows Americans to gather in groups and protest against any problems they might be facing. Although we have the freedom of speech, one cannot send out hate messages or incite a riot. In order to protect the rights of other American citizens, some rights must be limited. One cannot shout â€œfireâ€ in a crowded theater and risk the lives of others by creating an upheaval. Laws like these are in effect in order to protect others and for the common welfare. Unfortunately other nations do not have the same rights as the United States. Many countries do not have the freedom to speech and freedom to press. Countries such as Ecuador, Egypt and China place limitations on the freedom of press. The information presented to the public is censored and biased. ', 1, '2013-01-22 21:37:28', '2013-01-22 21:37:28'),
(47, 2, 4, 129, 138, 141, 'This shown american decline.', 1, '2013-01-23 18:14:32', '2013-01-23 18:14:32'),
(48, 2, 6, 47, 71, 78, '', NULL, '2013-01-23 18:14:47', '2013-01-23 18:14:47'),
(49, 4, 2, 28, 34, 77, 't e s t ', 0, '2013-01-24 10:55:06', '2013-01-24 10:55:06'),
(50, 6, 8, 0, 0, 0, '', NULL, '2013-01-24 14:10:24', '2013-01-24 14:10:24'),
(51, 55, 6, 0, 0, 0, '', NULL, '2013-01-24 17:55:53', '2013-01-24 17:55:53'),
(52, 56, 6, 82, 167, 169, 'The first amendment protects our right to say what we want and our right to assemble for a cause. Without the first amendment, women would not be allowed to protest for equal pay and the LGBT community would not be able to express its pride. The protection of our first amendment rights are extremely important in changing our nation for the better. For example, without these rights, African Americans would have never been able to fight for their equality. Other nations are under extreme oppression and the first amendment rights we have are a faraway dream to the citizens of these nations. For example, Russia is pushing for an anti-gay law that will outlaw "homosexual propaganda" and ban public events that promote gay rights.  A law like this would cause an outrage in the United States because of our protection of freedom of speech and freedom of assembly.', 1, '2013-01-24 20:23:19', '2013-01-24 20:23:19'),
(53, 35, 6, 71, 78, 168, 'I think America has moved a long way since the first amendment. People practice any religion they desire. When walking down the street, you can see synagogues, churches, and other places of worship. Americans also have the option to be atheists. Unfortunately, other nations aren''t as lenient with freedom of religion. In the Middle East, freedom of religion has always been an issue. Many protests have taken place trying to promote it, but the government won''t budge. The first picture shows that people are protesting for freedom to marry whoever they desire. Even in America, some states have yet to establish gay marriage laws. Freedom of speech has come a long way as well. Americans are allowed to give their voice in newspapers, etc. ', 1, '2013-01-24 22:38:26', '2013-01-24 22:38:26'),
(54, 58, 6, 82, 168, 172, 'The first amendment is well portrayed in these three photographs. Freedom of assembly is well portrayed in the first picture as people are trying to protect and earn rights as equals in the United States. It is a clear demonstration of the first amendment in action. There are exceptions to this right in practice. In a school for example we are taught to follow the rules and control our language and behavior, such as shown in the third image. If the first amendment applied equally, there would be no such thing in schools. Other nations do not have the first amendment therefore they do not have these rights in neither practice nor law. However the second image depicts multiple religious symbols which are accepted in the United States. The United States is a nation that accepts equality and rights to all. That is how we differ from other nations and that is a special thing that nations do not have. The first amendment is unique to the United States therefore you can''t compare other nations rights to that of the first amendment in the United States.', 1, '2013-01-25 00:10:01', '2013-01-25 00:10:01'),
(55, 7, 4, 119, 157, 215, 'This is where I type in the summary of the three images I have chosen.', 0, '2013-01-25 13:32:44', '2013-01-25 13:32:44'),
(56, 5, 10, 0, 0, 0, '', NULL, '2013-01-26 09:51:55', '2013-01-26 09:51:55'),
(57, 2, 10, 0, 0, 0, '', NULL, '2013-01-26 13:12:57', '2013-01-26 13:12:57'),
(58, 2, 1, 0, 0, 0, 'zfdbvdgb', 0, '2013-01-26 13:13:16', '2013-01-26 13:13:16'),
(59, 1, 4, 119, 142, 145, '', NULL, '2013-01-26 14:09:01', '2013-01-26 14:09:01'),
(60, 1, 12, 0, 0, 0, '', NULL, '2013-01-26 14:31:11', '2013-01-26 14:31:11'),
(61, 68, 6, 0, 0, 0, '', NULL, '2013-01-26 14:41:23', '2013-01-26 14:41:23'),
(62, 70, 10, 0, 0, 0, '', NULL, '2013-01-26 14:45:23', '2013-01-26 14:45:23'),
(63, 68, 10, 0, 0, 0, '', NULL, '2013-01-26 14:48:53', '2013-01-26 14:48:53'),
(64, 71, 1, 0, 0, 0, '', NULL, '2013-01-26 14:54:27', '2013-01-26 14:54:27'),
(65, 71, 6, 78, 82, 168, '', NULL, '2013-01-26 15:01:31', '2013-01-26 15:01:31'),
(66, 70, 4, 0, 0, 0, '', NULL, '2013-01-26 15:04:17', '2013-01-26 15:04:17'),
(67, 72, 6, 0, 0, 0, '', NULL, '2013-01-26 17:55:43', '2013-01-26 17:55:43'),
(68, 3, 4, 150, 160, 162, '', NULL, '2013-01-27 22:10:21', '2013-01-27 22:10:21'),
(69, 66, 4, 0, 0, 0, '', NULL, '2013-01-28 12:26:28', '2013-01-28 12:26:28'),
(70, 66, 12, 0, 0, 0, '', NULL, '2013-01-28 12:27:06', '2013-01-28 12:27:06'),
(71, 66, 1, 0, 0, 0, '', NULL, '2013-01-28 12:28:32', '2013-01-28 12:28:32'),
(72, 66, 3, 0, 0, 0, '', NULL, '2013-01-28 12:43:46', '2013-01-28 12:43:46'),
(73, 73, 10, 0, 0, 0, '', NULL, '2013-02-01 16:32:32', '2013-02-01 16:32:32'),
(74, 74, 8, 89, 103, 105, '', NULL, '2013-02-14 09:20:46', '2013-02-14 09:20:46'),
(75, 7, 6, 0, 0, 0, 'This selection of images represents an interesting timeline of our freedom of speech, from the Freedom Riders to Women''s Rights to "Food Rights."\r\n\r\nI could type more, but this walkthrough is already long ;o)', 0, '2013-02-18 15:06:40', '2013-02-18 15:06:40'),
(76, 75, 9, 53, 55, 63, '', NULL, '2013-02-22 11:02:38', '2013-02-22 11:02:38'),
(77, 76, 1, 10, 14, 13, '', NULL, '2013-03-11 14:20:13', '2013-03-11 14:20:13'),
(78, 76, 10, 0, 0, 0, '', NULL, '2013-03-11 14:23:24', '2013-03-11 14:23:24'),
(79, 76, 6, 0, 0, 0, '', NULL, '2013-03-11 14:23:47', '2013-03-11 14:23:47'),
(80, 3, 6, 81, 117, 172, '', NULL, '2013-03-16 13:24:20', '2013-03-16 13:24:20'),
(81, 79, 10, 0, 0, 0, '', NULL, '2013-04-24 10:13:58', '2013-04-24 10:13:58'),
(82, 78, 4, 0, 0, 0, '', NULL, '2013-04-24 11:20:21', '2013-04-24 11:20:21'),
(83, 7, 9, 0, 0, 0, '', NULL, '2013-04-26 15:12:23', '2013-04-26 15:12:23'),
(84, 7, 12, 0, 0, 0, '', NULL, '2013-04-26 15:19:16', '2013-04-26 15:19:16'),
(85, 7, 13, 0, 0, 0, '', NULL, '2013-04-26 15:19:35', '2013-04-26 15:19:35'),
(86, 7, 3, 0, 0, 0, '', NULL, '2013-04-26 15:21:04', '2013-04-26 15:21:04'),
(87, 6, 15, 0, 0, 0, '', NULL, '2013-04-30 09:58:17', '2013-04-30 09:58:17'),
(88, 6, 6, 0, 0, 0, '', NULL, '2013-04-30 09:58:32', '2013-04-30 09:58:32'),
(89, 6, 12, 0, 0, 0, '', NULL, '2013-04-30 09:59:32', '2013-04-30 09:59:32'),
(90, 6, 10, 0, 0, 0, '', NULL, '2013-04-30 10:00:17', '2013-04-30 10:00:17'),
(91, 7, 15, 0, 0, 0, '', NULL, '2013-04-30 10:55:34', '2013-04-30 10:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `board_id`, `title`, `description`, `created`, `modified`, `active`) VALUES
(1, 1, 1, 'Uploaded via url', '', 1358135753, 1358135796, 1),
(2, 1, 1, 'Uploaded via file upload', '', 1358135819, 1358137075, 1),
(3, 3, 2, 'Producer', 'Producers are autotrophs. These are organisms that take inorganic compounds (like light, CO2) and use these compounds to create organic compounds and energy. These are also the organisms that are at the bottom of food chains.\r\n\r\nWhat are some real-world e', 1358225253, 1358225253, 1),
(4, 3, 2, 'Consumer', 'A consumer is a heterotrophic organism that feeds on other organisms in the food chain. These are organisms that use other organisms to get their energy, and are called "Consumers."\r\n\r\nWhat are some real-world examples of consumers?', 1358225378, 1358225378, 1),
(5, 3, 2, 'Decomposers', 'Decomposers are organisms that break down dead or decaying organisms. These organisms help in the process of decomposition. Like other heterotrophs, they use other animals to gain energy.\r\n\r\nWhat are some examples of some decomposers?', 1358225708, 1358225708, 1),
(6, 3, 2, 'Scavengers', 'Scavengers are organisms that only eat dead and decaying organic matter. These are organisms often eat dead organisms before the decomposer has an opportunity to break down this organism.\r\n\r\nWhat are some examples of scavengers?', 1358225847, 1358225847, 1),
(7, 3, 2, 'Carnivores', 'Carnivores are organisms that gain their energy primarily from animal tissue (think carne). Predators are almost always carnivores. What are some examples of carnivores?', 1358225939, 1358226212, 1),
(8, 3, 2, 'Omnivores', 'Omnivores are organisms that can gain energy from animals and plants. These organisms do not fall into the categories of herbivore or carnivore because they will eat either plant or animal.\r\n\r\nWhat are some examples of omnivores?', 1358226057, 1358226057, 1),
(9, 3, 2, 'Herbivores', 'Herbivores are organisms which gain their nutrition through the consumption of plants. Remember, herbivores are still consumers!\r\n\r\nWhat are some examples of herbivores?', 1358226134, 1358226134, 1),
(10, 3, 3, 'Ecosystems', '', 1358304582, 1358304582, 1),
(11, 3, 3, 'Genetics', 'Heredity is the passing of traits from parent to offspring.  Variation within a species can result from genetic recombination during fertilization or mutations.  What are some real world examples of variation within our species?', 1358304597, 1358365524, 1),
(12, 3, 3, 'Human Impact', 'Humans have different and varied impacts upon the organisms, ecosystems, and geography of the world. Find 3 ways in which humans have effected the environment.', 1358304614, 1358305558, 1),
(13, 3, 3, 'Adaptations', 'Find 3 examples of animals with adaptations. When you post, make sure to say whether the adaptation is behavioral, physiological, or structural, and explain what the adaptation is.', 1358304625, 1358365606, 1),
(14, 3, 3, 'Selective Breeding', '', 1358304649, 1358304649, 1),
(15, 3, 3, 'Evolution', '', 1358304773, 1358304773, 1),
(16, 5, 4, 'Political Strength', 'America is currently the world''s oldest democracy.  What examples can you find to support the view that America is still strong politically?', 1358311064, 1358311064, 1),
(17, 5, 4, 'Economic Strength', 'America is still the world''s largest economy.  In what ways is our economy strong, now and moving forward?', 1358311144, 1358311144, 1),
(18, 5, 4, 'Social Strength', 'What unites Americans to strengthen our nation?', 1358311240, 1358311240, 1),
(19, 5, 4, 'Political Weakness', 'Is America a democracy in name only?', 1358311342, 1358311342, 1),
(20, 5, 4, 'Economic Weakness', 'Reasons to believe we may not keep our #1 position in the world... or that Americans will not be able to maintain their economic comfort', 1358311503, 1358311503, 1),
(21, 5, 4, 'Social Weakness', 'Has America lost its values?  Are we divided as a nation?', 1358311556, 1358311613, 1),
(22, 5, 5, 'Establishment of religion', '', 1358347284, 1358347284, 1),
(23, 5, 5, 'Freedom of speech', '', 1358347305, 1358347305, 1),
(24, 5, 5, 'Freedom of the press', '', 1358347316, 1358347316, 0),
(25, 5, 5, 'Freedom of assembly', '', 1358347328, 1358347328, 1),
(26, 5, 5, 'Right to petition the government', '', 1358347347, 1358347347, 0),
(27, 5, 5, 'Exceptions to these rights', 'When does the first Amendment NOT apply?  What are the de facto (in reality) or de jure (in law) exceptions to these rights?', 1358347375, 1358347497, 1),
(28, 5, 5, 'Other nations', 'What is the situation in other nations?  Do they have the same protections Americans do?', 1358347386, 1358347416, 1),
(29, 5, 6, 'Freedom of religion', '', 1358349125, 1358349125, 1),
(30, 5, 6, 'Freedom of speech', '', 1358349140, 1358349140, 1),
(31, 5, 6, 'Freedom of assembly', '', 1358349159, 1358349159, 1),
(32, 5, 6, 'Exceptions to these rights', 'When does the first Amendment NOT apply? What are the de facto (in reality) or de jure (in law) exceptions to these rights?', 1358349197, 1358349197, 1),
(33, 5, 6, 'Other nations', 'What is the situation in other nations? Do they have the same protections Americans do?', 1358349221, 1358349221, 1),
(34, 3, 7, 'Hall of Planet Earth', 'Photos of objects in the Hall of Planet Earth that either earned you points or are connected to objects that earned you points.  ', 1358367814, 1358367814, 1),
(35, 3, 7, 'Warburg Hall of New York State Environment ', 'Photos of objects in the Warburg Hall of New York State Environment that either earned you points or are connected to objects that earned you points.', 1358367888, 1358367888, 1),
(36, 3, 7, 'Guggenheim Hall of Minerals', 'Photos of objects in the Guggenheim Hall of Minerals that either earned you points or are connected to objects that earned you points.', 1358367979, 1358367979, 1),
(46, 3, 10, 'Tools', 'What tools will move us forward?', 1359173083, 1359173186, 1),
(39, 3, 8, 'Ecosystems and Adaptations', 'The mystery animal has evolved to feet its environment. Find an example of an ecosystem that the mystery animal would thrive in, and describe how it has adapted to that environment.', 1358381047, 1358381047, 1),
(40, 3, 8, 'Inheritance and Relationships', 'The mystery animal has many close relationships. Find two animals to which the mystery animal is related, and describe those relationships.', 1358381098, 1358381098, 1),
(41, 3, 8, 'Human Impact', 'Humans have had a huge impact on the mystery animal. How have humans effected the range, food chains, and diet of the animal? How has this effected the animals'' evolution?', 1358381274, 1358381274, 1),
(42, 1, 9, 'Face-to-face collaboration', 'How does the Tower office encourage face-to-face collaboration?', 1358384417, 1358384637, 1),
(43, 1, 9, 'Remote collaboration', 'How does the Tower office facilitate remote collaboration?', 1358384427, 1358384614, 1),
(44, 1, 9, 'Encourage creative thinking', 'What do you see in the Tower office that encourages creativity?', 1358384479, 1358384479, 1),
(45, 1, 9, 'Inspire productivity', 'How does the Tower office inspire productivity?', 1358384516, 1358384516, 1),
(47, 3, 10, 'People', 'What kind of people will inspire education?', 1359173105, 1359173105, 1),
(48, 3, 10, 'Ideas', 'What ideas will inspire teachers and educators?', 1359173140, 1359173204, 1),
(49, 1, 11, 'Theme 1', 'theme prompt', 1359218126, 1359218135, 1),
(50, 5, 12, 'Aging infrastructure', '', 1359225827, 1359225827, 1),
(51, 5, 12, 'Modern amenities', '', 1359225839, 1359225839, 1),
(52, 5, 12, 'Interesting combinations of old and new', '', 1359225855, 1359225855, 1),
(53, 1, 10, 'RESEARCH', 'Scholarly work informs classroom pedagogy and can influence and demystify trends in teaching and learning in the 21st Century classroom.', 1359230709, 1359230743, 1),
(54, 3, 13, 'Image of Women''s Liberation', '', 1359601552, 1359601552, 1),
(55, 3, 13, 'Images of Un-liberated Women', 'In what ways have women not been liberated since the Seneca Falls convention?', 1359601722, 1359601789, 1),
(56, 3, 13, 'Powerful Women', '', 1359601764, 1359601764, 1),
(57, 7, 14, 'Theme #1', 'Insert a prompt here for students to answer. Larger, essential questions should be in the board description, while more specific questions should go here.', 1363373574, 1363373574, 1),
(58, 7, 15, 'Reflection', 'Find a piece you like that exhibits this property.', 1363373951, 1363373951, 1),
(59, 7, 15, 'Repetition', 'Find a piece that uses repetition as a central element.', 1363373986, 1363373986, 1),
(60, 7, 18, 'THEME #1', 'Prompt or question for theme #1.', 1367947364, 1367947364, 1),
(61, 7, 18, 'THEME #2', 'This is the question or prompt for theme #2.', 1367947490, 1367947490, 1),
(62, 1, 19, 'Theme 1', '', 1370102492, 1370102492, 1);

-- --------------------------------------------------------

--
-- Table structure for table `topic_photos`
--

DROP TABLE IF EXISTS `topic_photos`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=217 ;

--
-- Dumping data for table `topic_photos`
--

INSERT INTO `topic_photos` (`id`, `user_id`, `active`, `description`, `topic_id`, `filename`, `filetype`, `filesize`, `filepath`, `url`, `anonymous`, `created`, `modified`) VALUES
(1, 1, 1, 'Beauty is a good cup of coffee on a lazy sunday.', 1, '1358135783_G0PYhDwU7E.jpg', 'image/jpeg', 90270, '/files/images/', 'http://25.media.tumblr.com/tumblr_lvx3c5z2iO1qb8aeto1_500.jpg', 0, 1358135783, 1358137619),
(2, 1, 1, 'This lamp is beautiful because it is well photographed and made with unique materials.', 2, '1358135861_tumblr_mgjb4ycYMZ1r3wk1zo3_500.jpg', 'image/jpeg', 205910, '/files/images/', '', 0, 1358135861, 1358137524),
(7, 3, 1, 'Beauty is the most awesome cell project ever. ', 2, '1358172052_image.jpg', 'image/jpeg', 2158155, '/files/images/', '', 0, 1358172052, 1358172052),
(8, 3, 1, '"Time is beautiful," said one of the students in my class.', 2, '1358172315_image.jpg', 'image/jpeg', 835546, '/files/images/', '', 0, 1358172316, 1358172316),
(9, 4, 1, 'It depicts the intricate complexity of nature.', 1, '1358173842_aOAgFMwG1k.jpg', 'image/jpeg', 10132, '/files/images/', 'http://2.bp.blogspot.com/_Srgode7wuuI/TOIaISLsKhI/AAAAAAAAASg/WIsVM55vmWA/s1600/Naut%2BShell.jpg', 0, 1358173842, 1358173842),
(10, 4, 1, 'Miss America 2013 is from Brooklyn!', 2, '1358174006_miss-america-new-hollywood.n.jpg', 'image/jpeg', 52674, '/files/images/', '', 0, 1358174006, 1358174006),
(3, 2, 1, 'Fashion is beautiful.', 1, '1358135974_D0gTAP7run.jpg', 'image/jpeg', 100588, '/files/images/', 'http://25.media.tumblr.com/0e0f7539a0fd36dc1fdca4600d69e209/tumblr_mggush9FEg1qkeybeo1_500.jpg', 0, 1358135974, 1358137424),
(14, 3, 1, 'beautiful awesome!!!', 1, '1358176844_LWJgMor8Ua.jpg', 'image/jpeg', 738581, '/files/images/', 'http://www.spacetelescope.org/static/archives/images/screen/potw1240a.jpg', 0, 1358176844, 1358176844),
(15, 6, 1, 'Wires connecting devices, information, and people can be beautiful ', 2, '1358176880_wires_niemann.jpg', 'image/jpeg', 183735, '/files/images/', '', 0, 1358176880, 1358176964),
(16, 3, 1, 'Iceland Space Photos - Totally awesome. It''s hard to tell what is even being photographed it''s so cool.', 1, '1358177141_fUBTgZqFjX.jpg', 'image/jpeg', 80672, '/files/images/', 'http://iliketowastemytime.com/sites/default/files/iceland-aerial-photography-rivers-15.jpg', 0, 1358177141, 1358177141),
(4, 2, 1, 'This photograph is beautiful because of the colors, pattern and composition.', 2, '1358136014_tumblr_mgjdthzNSb1rbqpjlo1_500.jpg', 'image/jpeg', 252070, '/files/images/', '', 0, 1358136014, 1358137453),
(11, 4, 1, 'Fanny has very shiny black fur. She is very regal an sometimes looks like a panther.', 2, '1358174245_image.jpg', 'image/jpeg', 1469777, '/files/images/', '', 0, 1358174246, 1358174246),
(12, 4, 1, 'This is a great book by Umberto Eco.', 1, '1358174640_udns7hcyga.jpg', 'image/jpeg', 44651, '/files/images/', 'http://ecx.images-amazon.com/images/I/51VVwMXg6FL._SS500_.jpg', 0, 1358174640, 1358174640),
(13, 5, 1, 'I could use a vacation to a beautiful island right about now!', 1, '1358174761_MJROsyz0t7.jpg', 'image/jpeg', 586083, '/files/images/', 'http://suncityparadise.com/wp-content/uploads/2012/10/Nassau-Beach.jpg', 0, 1358174762, 1358174762),
(5, 2, 1, 'Sup doc', 2, '1358137013_1358136953179.jpg', 'image/jpeg', 193797, '/files/images/', '', 0, 1358137013, 1358137013),
(6, 2, 1, 'Science is cool.', 1, '1358137324_INK53byWaj.gif', 'image/gif', 916551, '/files/images/', 'http://i.imgur.com/5RhOO.gif', 0, 1358137324, 1358137324),
(17, 3, 1, 'Is that more awesome space pictures? Why yes, yes it is.', 2, '1358177434_MoreOuterSpace.jpg', 'image/jpeg', 40992, '/files/images/', '', 0, 1358177434, 1358177434),
(18, 6, 1, 'The microscopic can be beautifully complex - I drink coffee everyday, these are caffeine crystals', 1, '1358178663_79xiwose5K.jpg', 'image/jpeg', 13416, '/files/images/', 'http://static.ddmcdn.com/gif/caffeine-crystals-120719-676966--1.jpg', 0, 1358178663, 1358178716),
(19, 1, 1, 'NYC architecture is beautiful because landmarks such as the empire state inspire not just new yorkers but the entire world.', 1, '1358181678_m4JIOhr9yW.jpg', 'image/jpeg', 21693, '/files/images/', 'http://levysuniqueny.com/wp-content/uploads/2011/01/empire-st-distance1.jpg', 0, 1358181678, 1358181678),
(20, 1, 1, 'I look at the Brooklyn bridge everyday.', 2, '1358182130_20130114_113646.jpg', 'image/jpeg', 1938263, '/files/images/', '', 0, 1358182131, 1358182131),
(21, 6, 1, 'Someone drawing maps of remote islands ', 1, '1358184828_mZCvldXpIH.jpg', 'image/jpeg', 236526, '/files/images/', 'Www.essayprize.org/images/schalansky3.jpg', 0, 1358184828, 1358184828),
(22, 6, 1, 'Thoughts from their imagination that my friends draw', 2, '1358191371_image.jpg', 'image/jpeg', 2095826, '/files/images/', '', 0, 1358191372, 1358191372),
(23, 7, 1, 'Repurposing functional objects and designs into new aesthetics and narratives. ', 2, '1358192186_octo_hack.jpeg', 'image/jpeg', 146481, '/files/images/', '', 0, 1358192186, 1358192186),
(24, 7, 1, 'Sunsets are beautiful transitions. Minecraft is beautiful in its simplicity and potential as a creative tool. Sunsets in Minecraft. Whoa.', 1, '1358193234_3LBIdwxWYu.jpg', 'image/jpeg', 28253, '/files/images/', 'http://3.bp.blogspot.com/-p3nd9rt0Kck/TvP18QXvXjI/AAAAAAAAA1U/D3QeUgZxAEk/s1600/minecraftHD_sunset_01.jpg', 0, 1358193234, 1358193234),
(25, 1, 1, 'This photograph captures the romance of winter.', 1, '1358193871_cf13BMqkDN.jpg', 'image/jpeg', 64585, '/files/images/', 'http://bistropetit.com/uploads/2/9/5/7/2957925/697044332.jpg', 0, 1358193871, 1358193871),
(26, 5, 1, 'This vintage University Sound microphone has a beautiful form. And beautiful sound too. ', 2, '1358194277_image.jpg', 'image/jpeg', 1998933, '/files/images/', '', 0, 1358194278, 1358194569),
(27, 10, 1, '', 7, '1358268226_Carnivore.jpeg', 'image/jpeg', 117170, '/files/images/', '', 0, 1358268226, 1358268226),
(28, 10, 1, '', 4, '1358268428_imgres-2.jpeg', 'image/jpeg', 7014, '/files/images/', '', 0, 1358268428, 1358268428),
(29, 10, 1, 'they are consumers ', 4, '1358268451_imgres-1.jpeg', 'image/jpeg', 10811, '/files/images/', '', 0, 1358268451, 1358268451),
(30, 11, 1, 'This photo is relevant to this category because Animals are consumers.', 4, '1358268499_qtJZY1zgiV.jpg', 'image/jpeg', 248957, '/files/images/', 'http://www.deshow.net/d/file/animal/2009-01/motherly-love-animals-370-28.jpg', 0, 1358268499, 1358268499),
(31, 10, 1, 'this are discomposer bacterias ', 5, '1358268665_imgres.jpeg', 'image/jpeg', 12038, '/files/images/', '', 0, 1358268665, 1358268665),
(32, 10, 1, 'GRASS! this give food to the animals it means it produce food!', 3, '1358268812_imgres-1.jpeg', 'image/jpeg', 13850, '/files/images/', '', 0, 1358268812, 1358268812),
(33, 10, 1, 'GRASS! this give food to the animals it means it produce food!', 3, '1358268817_imgres-1.jpeg', 'image/jpeg', 13850, '/files/images/', '', 0, 1358268817, 1358268817),
(34, 11, 1, 'This is an example of decomposers.', 5, '1358268854_bUlsZ6O1VQ.jpg', 'image/jpeg', 238235, '/files/images/', 'http://www.scetv.org/web/web_of_water/images/uploads/Decomposers_in_lying_in_a_large_tree.jpg', 0, 1358268854, 1358268854),
(35, 10, 1, 'this is like triple gross! but this is an example of scavengers ewww!', 6, '1358268976_imgres-2.jpeg', 'image/jpeg', 9015, '/files/images/', '', 0, 1358268976, 1358268976),
(36, 10, 1, 'another one ughh', 6, '1358269008_imgres-3.jpeg', 'image/jpeg', 10516, '/files/images/', '', 0, 1358269008, 1358269008),
(37, 11, 1, 'This photo is relevant to this category because it is an example of scavangers. ', 6, '1358269026_OUQwPxNiGZ.jpg', 'image/jpeg', 68213, '/files/images/', 'http://ichef.bbci.co.uk/naturelibrary/images/ic/credit/640x395/s/sc/scavenger/scavenger_1.jpg', 0, 1358269026, 1358269026),
(38, 10, 1, 'Pigssss!!', 8, '1358269141_imgres-4.jpeg', 'image/jpeg', 15826, '/files/images/', '', 0, 1358269141, 1358269141),
(39, 11, 1, 'This photo is relevant to  this category because a Lion is a carnivore it eats meat.', 7, '1358269187_oDpHxsfGXT.jpg', 'image/jpeg', 337899, '/files/images/', 'http://blogs.scientificamerican.com/observations/files/2012/04/lion2.jpg', 0, 1358269187, 1358269187),
(40, 10, 1, 'horse !', 9, '1358269232_imgres-5.jpeg', 'image/jpeg', 6976, '/files/images/', '', 0, 1358269232, 1358269232),
(41, 10, 1, 'zebrass too!', 9, '1358269260_imgres-6.jpeg', 'image/jpeg', 11867, '/files/images/', '', 0, 1358269260, 1358269260),
(42, 11, 1, 'This is an omnivore.', 8, '1358269317_qWEyoADw3K.jpg', 'image/jpeg', 57889, '/files/images/', 'http://saburchill.com/images02/010805012.jpg', 0, 1358269317, 1358269317),
(43, 11, 1, 'Cows are herbivores they eat plants.', 9, '1358269430_PugfioOY4b.jpg', 'image/jpeg', 180328, '/files/images/', 'http://farm2.static.flickr.com/1359/1251650204_213c82e536.jpg', 0, 1358269430, 1358269430),
(44, 17, 1, 'This cartoon shows that America is in a time where it is falling. Many people do notice it and America may fall the way the Romans did.', 19, '1358373268_kuZY95lePn.jpg', 'image/jpeg', 37155, '/files/images/', 'http://0.tqn.com/d/politicalhumor/1/0/F/p/3/Empire-in-Decline.jpg', 0, 1358373268, 1358373268),
(45, 17, 1, 'This shows how the US is now relying on other countries for money. It is no longer self sufficient like how Rome turned out to be.', 20, '1358373881_Y6KtNQuX98.gif', 'image/gif', 5224, '/files/images/', 'http://www.brillig.com/debt_clock/history.gif', 0, 1358373881, 1358373881),
(46, 17, 1, 'This is what humans really evolved from and into.', 15, '1358374520_zSon9NAmHU.jpg', 'image/jpeg', 65587, '/files/images/', 'http://interactyx.com/wp-content/uploads/2012/10/evolution.jpg', 0, 1358374520, 1358374520),
(47, 19, 1, 'This photo shows both religious tolerance and diversity; the poster speaks for itself.', 29, '1358379023_a4i02lKsFP.jpg', 'image/jpeg', 47435, '/files/images/', 'http://25.media.tumblr.com/791efe5c309ab798698d385966cdeb71/tumblr_mgbqayWBNS1rmpurqo1_500.jpg', 0, 1358379023, 1358379023),
(48, 1, 0, 'sajihfakjdnfgnkgtkqe gjnq r', 1, '1358379625_248923_10150263024945110_509410109_9180407_1235438_n.jpg', 'image/jpeg', 69534, '/files/images/', '', 0, 1358379625, 1358379625),
(49, 19, 1, 'Freedom of speech can hurt others and in some severe cases, it is seen as unconstitutional.', 32, '1358379862_NtbYLGH10P.jpg', 'image/jpeg', 15248, '/files/images/', 'http://www.thechurchofnopeople.com/wp-content/uploads/2012/08/hate-speech-is-not-free-speech.jpg', 0, 1358379862, 1358379862),
(50, 1, 1, '', 1, '1358381104_248923_10150263024945110_509410109_9180407_1235438_n.jpg', 'image/jpeg', 69534, '/files/images/', '', 0, 1358381104, 1358381104),
(51, 5, 1, 'Our beautiful programmer', 2, '1358381301_image.jpg', 'image/jpeg', 1981089, '/files/images/', '', 0, 1358381302, 1358381302),
(52, 5, 1, 'Long conference tables get people together', 42, '1358385466_image.jpg', 'image/jpeg', 1670759, '/files/images/', '', 0, 1358385466, 1358385466),
(53, 24, 1, 'Yak yak yak.', 42, '1358385490_image.jpg', 'image/jpeg', 1721037, '/files/images/', '', 0, 1358385490, 1358385490),
(54, 25, 1, 'not sure', 45, '1358385528_XpuEdV43OU.jpg', 'image/jpeg', 39996, '/files/images/', 'http://www.macrobusiness.com.au/wp-content/uploads/2012/10/productivity1.jpg', 0, 1358385528, 1358385528),
(55, 5, 1, 'Fancy conference phones', 43, '1358385539_image.jpg', 'image/jpeg', 1891194, '/files/images/', '', 0, 1358385539, 1358385539),
(56, 6, 1, 'Food brings people to it', 42, '1358385573_image.jpg', 'image/jpeg', 2217263, '/files/images/', '', 0, 1358385574, 1358385574),
(57, 24, 1, 'Occluded faces.', 43, '1358385614_image.jpg', 'image/jpeg', 913027, '/files/images/', '', 0, 1358385615, 1358385615),
(58, 5, 1, 'Nothing inspires like outer space!', 44, '1358385632_image.jpg', 'image/jpeg', 1938478, '/files/images/', '', 0, 1358385633, 1358385633),
(59, 25, 1, 'this is fun', 44, '1358385649_CLgaZ39O6V.jpg', 'image/jpeg', 36193, '/files/images/', 'http://images5.fanpop.com/image/photos/30600000/Mickey-mickey-mouse-30636419-488-500.jpg', 0, 1358385649, 1358385649),
(60, 3, 1, 'Chat rooms? Why not?', 42, '1358385664_image.jpg', 'image/jpeg', 2487119, '/files/images/', '', 0, 1358385665, 1358385665),
(61, 6, 1, 'Wires to beam people in', 43, '1358385724_image.jpg', 'image/jpeg', 2099196, '/files/images/', '', 0, 1358385724, 1358385724),
(62, 24, 1, 'Horray!', 44, '1358385737_image.jpg', 'image/jpeg', 1657062, '/files/images/', '', 0, 1358385737, 1358385737),
(63, 5, 1, 'A ceiling full of globes means I see something when I daydream', 44, '1358385743_image.jpg', 'image/jpeg', 1867352, '/files/images/', '', 0, 1358385744, 1358385744),
(64, 3, 1, 'Big green boards and lots of markers. Creativity issues? Problem solved!', 44, '1358385820_image.jpg', 'image/jpeg', 2499069, '/files/images/', '', 0, 1358385821, 1358385821),
(65, 25, 0, 'I found him finally', 39, '1358385862_nhq1VDHRSe.jpg', 'image/jpeg', 101197, '/files/images/', 'http://weeklyworldnews.files.wordpress.com/2011/10/bigfoot_siberia.jpg', 0, 1358385862, 1358385862),
(66, 6, 1, 'Maps and guides to far off places', 44, '1358385866_image.jpg', 'image/jpeg', 2060807, '/files/images/', '', 0, 1358385867, 1358385867),
(67, 6, 1, 'We are fed', 45, '1358385990_image.jpg', 'image/jpeg', 1978562, '/files/images/', '', 0, 1358385990, 1358385990),
(68, 3, 1, 'No need for lunch - you should already be full. Happy snacking.', 45, '1358386003_image.jpg', 'image/jpeg', 2487607, '/files/images/', '', 0, 1358386003, 1358386003),
(69, 28, 1, 'This is not beauty', 1, '1358386150_6B1TOn8zjv.jpg', 'image/jpeg', 13556, '/files/images/', 'http://3.bp.blogspot.com/_zIvXJqa4gVI/S0F50biamOI/AAAAAAAAANs/HkoZcQkA2wY/s320/snooky.jpg', 0, 1358386150, 1358386150),
(70, 27, 1, 'The space has plenty of room for us to explore our ideas.', 42, '1358386238_whoa.jpg', 'image/jpeg', 80189, '/files/images/', '', 0, 1358386238, 1358386238),
(71, 29, 1, 'Supporters of gay marriage use their freedom of assembly to march and advocate marriage equality. ', 31, '1358387024_yX80dCwNRL.jpg', 'image/jpeg', 40943, '/files/images/', 'http://cache.boston.com/resize/bonzai-fba/Globe_Photo/2009/06/27/1246146298_5136/539w.jpg', 0, 1358387024, 1358387024),
(72, 22, 1, 'This is the symbol of the Coexist Foundation. Thanks to the First Amendment, in America, people can practice religion as they wish, and every religion can be practiced peacefully.', 29, '1358426928_coexist.gif', 'image/gif', 4321, '/files/images/', '', 0, 1358426928, 1358426928),
(73, 22, 1, 'Supporters of the Occupy Wall Street movement assemble to express their views.', 31, '1358427363_occupy-wall-street.jpg', 'image/jpeg', 93259, '/files/images/', '', 0, 1358427364, 1358427364),
(74, 34, 1, 'The United Nations is a place where the nations discuss and decide issues of peace, justice and economic and social well being.', 31, '1358441631_8wNhGtf54R.jpg', 'image/jpeg', 51599, '/files/images/', 'http://blog.heritage.org/wp-content/uploads/unitednations2_120713.jpg', 0, 1358441631, 1358441631),
(75, 35, 1, 'This photo has beauty because the arrangement of the fruits is very artistic. ', 2, '1358471460_securedownload-4.jpeg', 'image/jpeg', 496740, '/files/images/', '', 0, 1358471309, 1358471460),
(76, 35, 1, 'The calm water portrays a peaceful environment at the beach. ', 2, '1358471719_securedownload-2.jpeg', 'image/jpeg', 2079783, '/files/images/', '', 0, 1358471720, 1358471720),
(77, 35, 1, 'The picture shows two lions ripping apart an animal. ', 7, '1358472001_LZjIhF4XMA.jpg', 'image/jpeg', 182412, '/files/images/', 'http://3.bp.blogspot.com/_oXap3ckhMSY/TPUk8yLLUhI/AAAAAAAAAcY/0kIx0U0Jp3g/s1600/carnivores.jpg', 0, 1358472001, 1358472001),
(78, 35, 1, 'A group of people are protesting and holding a sign that says, "Free Speech." ', 30, '1358472089_0J3oHFwnvE.jpg', 'image/jpeg', 41541, '/files/images/', 'http://c481901.r1.cf2.rackcdn.com/wp-content/uploads/2012/09/freespeech.jpg', 0, 1358472089, 1358472089),
(79, 1, 0, 'jhgbhkbkjhbkjh', 39, '1358484676_IMG_20120414_145744.jpg', 'image/jpeg', 1561604, '/files/images/', '', 0, 1358484676, 1358484676),
(80, 36, 1, 'Freedom of religion doesn''t just mean your religion but it means every religion out there. From Christianity to Buddhism people have the right to practice the faith they want.', 29, '1358502935_freedomofreligion.jpg', 'image/jpeg', 12399, '/files/images/', '', 0, 1358502935, 1358502935),
(81, 36, 1, 'This painting titled Freedom of Speech by Norman Rockwell shows that even if you are  a middle-class worker surrounded by men who are higher up than you, you still have the right to communicate your opinions and ideas.', 30, '1358503383_Freedom_of_Speech.jpg', 'image/jpeg', 11685, '/files/images/', '', 0, 1358503383, 1358504806),
(82, 36, 1, 'In 1963,over 150,000 people joined together for a civil rights rally for equality on the steps of Lincoln Memorial.', 31, '1358503784_freedomofassembly.jpeg', 'image/jpeg', 58196, '/files/images/', '', 0, 1358503784, 1358503784),
(83, 36, 1, 'Although you have the right to express your opinions and ideas openly, the constitution does not protect the negative opinions and ideas you express that can be seen as harmful to others.', 32, '1358505136_exceptions.jpg', 'image/jpeg', 81487, '/files/images/', '', 0, 1358505136, 1358505172),
(84, 38, 0, 'this is a gem', 34, '1358516602_EmeraldSquare.gif', 'image/gif', 2205, '/files/images/', '', 0, 1358516602, 1358516602),
(85, 40, 1, 'In North Korea, the government rejects religion; Atheism is enforced. They are taught that God does not exist and their ruler is the only revered figure.', 33, '1358528395_xNKVMHprto.JPG', 'image/jpeg', 264145, '/files/images/', 'http://www.asianinfo.org/asianinfo/DPRK%20-%20small/Resized_DSC09470.JPG', 0, 1358528395, 1358528395),
(86, 40, 1, 'Here, we can see authoritative figures of different religions peacefully meeting. People are learning to live with others who have beliefs which differ from their own,', 29, '1358528730_asrCJDYkKR.jpg', 'image/jpeg', 24889, '/files/images/', 'http://3.bp.blogspot.com/_NPeIdlHaoaQ/SzTo8duz8DI/AAAAAAAAFv8/bL4Wzto6A3E/s400/pope_rabbi_park_east.jpg', 0, 1358528730, 1358528730),
(87, 40, 1, 'After a law was passed, people can not picket withing 500 feet of a funeral within one hour of that funeral being held. Members of hate groups such as the one seen here, are no longer allowed to protest close to funeral parlors.', 32, '1358529355_sTamJPG9B0.jpg', 'image/jpeg', 26439, '/files/images/', 'http://wac.450f.edgecastcdn.net/80450F/xlcountry.com/files/2012/12/320687_550156254997822_485779308_n.jpg', 0, 1358529355, 1358529355),
(88, 41, 1, 'I think this I where the mystery animal lived ', 39, '1358530993_image.jpg', 'image/jpeg', 1973475, '/files/images/', '', 0, 1358530994, 1358530994),
(89, 6, 1, 'The family looks similar', 40, '1358530996_image.jpg', 'image/jpeg', 1294774, '/files/images/', '', 0, 1358530997, 1358530997),
(90, 47, 1, 'By looking at its fur and its feaders one could say that a rain forest is perfect for the mystery animal.\r\n', 39, '1358531131_image.jpg', 'image/jpeg', 1805772, '/files/images/', '', 0, 1358531132, 1358531132),
(91, 44, 1, 'This is a good environment for the animal & there is plenty of plants for it to eat. ', 39, '1358531192_image.jpg', 'image/jpeg', 1786402, '/files/images/', '', 0, 1358531193, 1358531193),
(92, 41, 1, 'I think the mystery animal would live here because the animal might be a carnivore and love to eat the animals in this environment ', 40, '1358531193_image.jpg', 'image/jpeg', 2002047, '/files/images/', '', 0, 1358531194, 1358531194),
(93, 47, 1, 'This bird can be closely related because both have feathers and both are 2nd order consumers', 40, '1358531334_image.jpg', 'image/jpeg', 1072964, '/files/images/', '', 0, 1358531335, 1358531335),
(94, 44, 1, 'I think it''s related because there are many birds in this habitat.', 40, '1358531420_image.jpg', 'image/jpeg', 1720942, '/files/images/', '', 0, 1358531421, 1358531421),
(95, 47, 1, 'Thanks to the global warming some primates can''t find their food so many have to evolve into the canivalism.', 41, '1358531609_image.jpg', 'image/jpeg', 1548863, '/files/images/', '', 0, 1358531610, 1358531610),
(96, 44, 1, 'Because humans changed the environment of the animal ', 41, '1358531611_image.jpg', 'image/jpeg', 1927745, '/files/images/', '', 0, 1358531613, 1358531613),
(97, 41, 1, 'The humans changed the environment in which the animals lived ', 41, '1358531697_image.jpg', 'image/jpeg', 1316974, '/files/images/', '', 0, 1358531697, 1358531697),
(98, 43, 1, 'It can eat a baby dear to live', 40, '1358531707_image.jpg', 'image/jpeg', 1988318, '/files/images/', '', 0, 1358531708, 1358531708),
(99, 42, 1, 'The mystery animal would most likely survive in this ecosystem because it has other species to eat and it has a large variety of plants to eat if it is a herbivore ', 39, '1358531716_image.jpg', 'image/jpeg', 2007312, '/files/images/', '', 0, 1358531716, 1358531716),
(100, 46, 1, 'This where the mystery animal would fit in best. I think this because the ecosystem is full of herbivore and different plants it can consume.', 40, '1358531877_image.jpg', 'image/jpeg', 1679784, '/files/images/', '', 0, 1358531877, 1358531877),
(101, 45, 1, 'The organism is from a place where food & water is available for it. The other organisms will be in competition for this organism. ', 39, '1358531877_image.jpg', 'image/jpeg', 2757844, '/files/images/', '', 0, 1358531877, 1358531877),
(102, 43, 1, 'Can try and adapt to their environment ', 39, '1358531890_image.jpg', 'image/jpeg', 2545012, '/files/images/', '', 0, 1358531890, 1358531890),
(103, 43, 1, 'Humans change their environment ', 41, '1358531951_image.jpg', 'image/jpeg', 1651554, '/files/images/', '', 0, 1358531952, 1358531989),
(104, 47, 1, 'Considering that the mystery animal lives in the rain forest the global warming can be destroying its habitat altering its order in the food pyramid.', 41, '1358532042_image.jpg', 'image/jpeg', 1336203, '/files/images/', '', 0, 1358532042, 1358532042),
(105, 45, 1, 'This animal does not have horns like the other animals and has bird claws. ', 40, '1358532099_image.jpg', 'image/jpeg', 970815, '/files/images/', '', 0, 1358532100, 1358532100),
(106, 42, 1, 'It might be related because it has feathers that look similar to its own ', 40, '1358532184_image.jpg', 'image/jpeg', 1216596, '/files/images/', '', 0, 1358532184, 1358532184),
(107, 36, 1, 'Just Like people in the United States people in India have the right to freedom of religion. Trader, travelers and immigrants are just a few who have went to India and assimilated their religion into the region.', 33, '1358532216_freedomofreligioninindia.jpg', 'image/jpeg', 25982, '/files/images/', '', 0, 1358532216, 1358532251),
(108, 46, 1, 'This is most likely it''s closest relative', 40, '1358532215_image.jpg', 'image/jpeg', 1043038, '/files/images/', '', 0, 1358532216, 1358532216),
(109, 38, 1, 'It was a giant globe. It shows all the detailing of the earth. The surface felt really bumpy.', 34, '1358532438_20130118_110749.jpg', 'image/jpeg', 2747502, '/files/images/', '', 0, 1358532440, 1358688497),
(110, 38, 1, 'This is a Convergent plate boundary. It shows how the plates under the water go under the other plate.', 34, '1358532694_20130118_110945.jpg', 'image/jpeg', 3079998, '/files/images/', '', 0, 1358532698, 1358688585),
(111, 48, 1, 'Tell us the global texture', 34, '1358532796_20130118_110734.jpg', 'image/jpeg', 1859836, '/files/images/', '', 0, 1358532797, 1358532797),
(112, 21, 1, 'On a Friday night, the parking lot in a shopping center is almost empty. This shows the reluctance of Americans to buy items. ', 20, '1358555498_image.jpg', 'image/jpeg', 2211885, '/files/images/', '', 0, 1358555499, 1358617342),
(113, 49, 1, 'The citizens of the United States still hold the Constitution as the framework of our society. It explains the justice system, the balance of powers in the government and our individual rights as citizens. Without it we would fall like the other civilizations that we learned about.', 16, '1358614244_ty4LDgZUcB.jpg', 'image/jpeg', 129680, '/files/images/', 'http://www.usconstitution.net/gifs/docs/cpage1.jpg', 0, 1358614244, 1358614244),
(114, 49, 1, 'Our political strength lies with our nation''s citizens. Every American citizen has the right to vote. Voting has become a staple of our nation''s political citizen since the beginning of its birth. Without voting, we would live in a country where leaders create themselves. ', 16, '1358615852_JSPf4BNVY9.jpg', 'image/jpeg', 59809, '/files/images/', 'http://l.yimg.com/bt/api/res/1.2/lm4MSHzFlmZ5.mtepZ.fXA--/YXBwaWQ9eW5ld3M7Y2g9MTkwOTtjcj0xO2N3PTI4NjQ7ZHg9MDtkeT0wO2ZpPXVsY3JvcDtoPTQyMDtxPTg1O3c9NjMw/http://media.zenfs.com/en_us/News/ap_webfeeds/fb55d3f62d700b1e1f0f6a7067008db7.jpg', 0, 1358615852, 1358615852),
(115, 20, 1, 'This photo supports freedom or religion because it supports the idea that people should have the right to practice any religion, harbor any beliefs or follow any school of thought that they like. In this case, the photo suggests that people also have the right to practice no religion if they like. ', 29, '1358623555_EvyFsthVSG.jpg', 'image/jpeg', 158813, '/files/images/', 'http://coloradoindependent.com/wp-content/uploads/2008/12/imagine-no-religion.jpg', 0, 1358623555, 1358623555),
(116, 20, 1, 'This photo supports free speech because the man holding the poster believes that there should be no rules or regulations concerning what he can or cannot say. His poster suggests that people should have the right to speak for or against anything and that there should be no restrictions on how thoughts should be voiced. ', 30, '1358623848_tL5gpJbo0K.jpg', 'image/jpeg', 7192636, '/files/images/', 'http://fc02.deviantart.net/fs26/f/2008/127/f/0/Free_Speech_Zone_Protest_by_falcoln0014.jpg', 0, 1358623850, 1358623850),
(117, 20, 1, 'Americans assemble to rally for various changes such as integrated schools, voting rights, housing and jobs. In this photo, people express their right to assemble when they come together and collectively promote common interests. ', 31, '1358624153_DXNzwZra74.jpg', 'image/jpeg', 131777, '/files/images/', 'http://constitutioncenter.org/images/uploads/ftc/bg-freedom-of-speech.jpg', 0, 1358624154, 1358624154),
(118, 50, 1, 'This image shows how America is run by corporations. For America to be a democrat nation everyone should have a right rather than corporations. The image shows a few corporations on the flag showing America is run by companies over people. ', 19, '1358705827_corporate-america.gif', 'image/gif', 192340, '/files/images/', '', 0, 1358639345, 1358705827),
(127, 50, 1, 'This image shows America''s debt which is in the trillions! America is definitely on an economic weakness with trillions of dollars in debt. With America owing so much money, how can citizens be guaranteed Economic Comfort? ', 20, '1358706138_LxVekhBTtP.jpg', 'image/jpeg', 50769, '/files/images/', 'http://i.huffpost.com/gen/122103/thumbs/r-DEBT-SECURITY-THREAT-large570.jpg', 0, 1358706138, 1358706138),
(120, 50, 1, 'This image shows America''s GDP which is greater than any other country combined. America''s economy is greater than others by having a greater GDP that other nations and nations combined. ', 17, '1358644137_5rSaOTIbWk.jpg', 'image/jpeg', 47731, '/files/images/', 'http://static.seekingalpha.com/uploads/2007/10/30/etf1.jpg', 0, 1358644137, 1358644137),
(119, 50, 1, 'This photo shows how America is run by wealthy men.  It shows how America usually is run by America''s wealthy or 1%. For America to be a truly democratic country, everyone should have a voice. However, today only the wealthy have a voice rather than everyone else. ', 19, '1358639360_JPoDrnG4s7.jpg', 'image/jpeg', 93170, '/files/images/', 'http://1.bp.blogspot.com/-gaUjvmbrO_I/TsqY8H84G0I/AAAAAAAAhcw/PTLRoL_aN9g/s1600/We%2Bare%2Bthe%2B1%2525.%2Bcopy.jpg', 0, 1358639360, 1358639360),
(121, 38, 1, 'These are different types of rocks that were made by hardened magma.', 34, '1358689141_20130118_111745.jpg', 'image/jpeg', 3769222, '/files/images/', '', 0, 1358689142, 1358689142),
(122, 38, 1, 'This is an amazing mineral that we saw and it was called stibnite.', 36, '1358689282_20130118_120324.jpg', 'image/jpeg', 3514300, '/files/images/', '', 0, 1358689283, 1358689283),
(123, 38, 1, 'This is fossile that over millions of year was turned into a mineral.', 36, '1358689459_20130118_120411.jpg', 'image/jpeg', 3057845, '/files/images/', '', 0, 1358689460, 1358689460),
(124, 38, 1, 'This display shows a huge chunk of jade and the different things that are made from it.', 36, '1358689592_20130118_120351.jpg', 'image/jpeg', 3028325, '/files/images/', '', 0, 1358689593, 1358689593),
(125, 38, 1, 'This is what some people might call "fools gold" but in reality it is just pyrite. The texture was a bit greasy.', 36, '1358689783_20130118_121301.jpg', 'image/jpeg', 2900977, '/files/images/', '', 0, 1358689784, 1358689784),
(126, 38, 1, 'These were a few samples of 3 specific minerals. Those minerals are legrandite, azurite, and gold.', 36, '1358689996_20130118_122908.jpg', 'image/jpeg', 3332920, '/files/images/', '', 0, 1358689997, 1358689997),
(128, 50, 1, 'This image shows Statue of Liberty. With the Statue of Liberty we are reminded that everyone is equal and together in the United States of America. ', 18, '1358707550_e6GY2LTwpF.jpg', 'image/jpeg', 24764, '/files/images/', 'http://www.destination360.com/north-america/north-america.jpg', 0, 1358707550, 1358707550),
(129, 50, 1, 'This image shows America''s economical strength as new buildings are being created in Manhattan. America is rising from the recent rescission with business being created such as these buildings. ', 17, '1358708137_balpreet028.JPG', 'image/jpeg', 1268420, '/files/images/', '', 0, 1358708138, 1358708138),
(130, 50, 1, 'This image shows how America is divided as a nation from republican and democrats. Most politicians take a side for a democrat or republican and the image shows how they oppose each other.', 21, '1358710541_3H0Z5y1pdK.png', 'image/png', 43391, '/files/images/', 'http://zeldalily.com/wp-content/uploads/2012/10/dnr.png', 0, 1358710541, 1358710541),
(131, 50, 1, 'This image shows how America is split by ethnicity throughout the nation. Some areas are majority African-American while others are Latino. Thus, showing how America is divided. ', 21, '1358726758_rkLVyqCiPW.jpg', 'image/jpeg', 110214, '/files/images/', 'http://4.bp.blogspot.com/-iqlBhXm0eAo/TzLVytgqIbI/AAAAAAAAAVw/zUmU9bY7Ak8/s1600/400248_549785844060_145900243_31161285_715128554_n.jpg', 0, 1358726758, 1358726758),
(132, 50, 1, 'This image shows how America is on a economical weakness with the manufacturing employment decreasing by 15% over the last 50 years. ', 20, '1358727831_T6nfHZOzuq.jpg', 'image/jpeg', 256586, '/files/images/', 'http://www.nationalaffairs.com/imgLib/20091216_Manzi33.jpg', 0, 1358727832, 1358727832),
(133, 38, 1, 'This is a giant jellyfish that we saw at the museum. ', 35, '1358728373_20130118_113706.jpg', 'image/jpeg', 1884040, '/files/images/', '', 0, 1358728374, 1358728374),
(134, 38, 1, 'This is malarial mosquito. It is enlarged to show all of its details. ', 35, '1358729702_20130118_113755.jpg', 'image/jpeg', 3077771, '/files/images/', '', 0, 1358729703, 1358729703),
(135, 21, 1, 'The tag on a plush teddy bear indicates that it was made in china. This shows that the United States is reliant on other countries for its goods. ', 20, '1358730527_image.jpg', 'image/jpeg', 1720269, '/files/images/', '', 0, 1358730073, 1358730528),
(136, 38, 1, 'This exhibit shows life thrives on and in the ground. There are different types of animals here like a millipede, a spider, and a grub. ', 35, '1358730089_20130118_113728.jpg', 'image/jpeg', 3083551, '/files/images/', '', 0, 1358730090, 1358730090),
(137, 38, 1, 'This mineral is a type of quartz. The texture was smooth and sleek. ', 36, '1358730358_20130118_121434.jpg', 'image/jpeg', 3159960, '/files/images/', '', 0, 1358730359, 1358730359),
(138, 21, 1, 'The self check out aisle in a supermarket shows that employees are being replaced by machines and losing their jobs.', 20, '1358731018_image.jpg', 'image/jpeg', 1869993, '/files/images/', '', 0, 1358730615, 1358731067),
(139, 38, 1, 'This is another piece of quartz. This one is also identified as a rock crystal.', 35, '1358733593_20130118_121440.jpg', 'image/jpeg', 2869520, '/files/images/', '', 0, 1358733594, 1358733594),
(140, 21, 1, 'This shows the prices of milk in a store. In 1960, a gallon of milk was about 50 cents and now it is $5 (shown on top left). This means that inflation is occurring in America just like it did in Rome. ', 20, '1358738616_image.jpg', 'image/jpeg', 1576628, '/files/images/', '', 0, 1358738617, 1358738617),
(141, 52, 1, 'America has very diverse culture with many different people from different cultures, living together in unity. The picture, is one of a Mexican Grill, and of course this is only one example of how America shows diversity, from restaurants from cultures around the world. ', 18, '1358740770_IMG_0767.JPG', 'image/jpeg', 613107, '/files/images/', '', 0, 1358740770, 1358740770),
(142, 52, 1, 'This picture shows how the growth between the rich and the poor has grown. It also shows how the rich gained control of America, controlling the other social classes with their money.', 19, '1358741766_M9YSJQF230.jpg', 'image/jpeg', 276260, '/files/images/', 'http://2.bp.blogspot.com/-evnu62rVXHs/TyYECyWeHMI/AAAAAAAAPpg/r55TOsaKbuw/s1600/rich_and_poor_color.jpg', 0, 1358741766, 1358741766),
(143, 52, 1, 'This photo shows a line of people trying to get food. This shows that America really doesn''t have a economic security for all its citizens. It also shows how America also has poverty and suffer through economic struggles.', 20, '1358742367_HC3y0KqX8I.jpg', 'image/jpeg', 56186, '/files/images/', 'http://ivarfjeld.files.wordpress.com/2010/11/queue_21938a.jpg', 0, 1358742367, 1358742367),
(144, 52, 1, 'This is a picture of Chinatown. This is only one example of how our nation is divided by different cultures, there are regions with mostly Chinese and other cultures. This seem to separate each culture from one another and make America more divided.', 21, '1358743175_3APCZULDsW.jpg', 'image/jpeg', 46137, '/files/images/', 'http://www.explorechinatown.com/Images/ToC2005F.jpg', 0, 1358743175, 1358743175),
(145, 52, 1, 'Inflation is basically the excessive printing of money until it leads to little value. This political cartoon shows how inflation is a growing problem in America, that is why many prices one items rise over time.', 20, '1358743407_VdoNUL0Cxb.jpg', 'image/jpeg', 25338, '/files/images/', 'http://www.economicnoise.com/wp-content/uploads/2012/04/inflation.jpg', 0, 1358743407, 1358743437),
(146, 53, 1, 'In response to cyberbullying, Democrats have released the following statement: "PROPONENTS OF FREE SPEECH HAVE LONG ARGUED THAT A SOCIETY THAT PUTS PEOPLE ON TRIAL FOR THINGS THEY HAVE WRITTEN OR SAID IS NO LONGER A TRULY DEMOCRATIC SOCIETY. THE POWER OF THE WORD HAS BEEN UNDISPUTABLE; IT HAS BEEN ESSENTIAL TO PRESERVING DEMOCRACY AND, IN FACT, ITS FOUNDING PREMISE WAS TO PRESERVE THE EXCHANGE OF IDEAS: A â€œMARKET PLACEâ€ WHERE CITIZENS COULD SORT THROUGH BELIEFS AND IDEAS WHICH BEST RESONATED WITH THEM AND DISCARD THOSE THAT DID NOT,74 THEREBY ALLOWING FOR THE CREATION OF AN EVER-EVOLVING, OPEN SOCIETY. MOREOVER, THEY CONTEND THAT FREEDOM OF SPEECH IS RECOGNIZED AS A HUMAN RIGHT UNDER ARTICLE 19 OF THE UNIVERSAL DECLARATION OF HUMAN RIGHTS, SO IT CANNOT AND MUST NOT BE LIMITED. AND YET, PROPONENTS OF A MORE REFINED FIRST AMENDMENT ARGUE THAT THIS FREEDOM SHOULD BE TREATED NOT AS A RIGHT BUT AS A PRIVILEGE â€“ A SPECIAL ENTITLEMENT GRANTED BY THE STATE ON A CONDITIONAL BASIS THAT CAN BE REVOKED IF IT IS EVER ABUSED OR MALTREATED." This basically means that the democrats view "free speechâ€ as a â€œprivilege,â€ that the state can regulate. In this case, democrats go on to defining what they consider to be cyberbullying, and allow for the government to monitor any online behavior that falls under this definition. It shows a possible exception to the first amendment.\r\n', 29, '1358743920_OkRH2xNI5E.jpg', 'image/jpeg', 23016, '/files/images/', 'http://raisedonhoecakes.com/ROH/wp-content/uploads/2011/10/First-Amendment-Privilege-ROH.jpg', 0, 1358743920, 1358743920),
(147, 54, 1, 'This image shows that although many are going through a hard time economically, people can have a good humor about it.', 18, '1358790624_HWoKahAem8.jpg', 'image/jpeg', 262044, '/files/images/', 'http://seedofmustard.com/fpdb/images/618housetoosmall.jpg', 0, 1358790624, 1358790624),
(148, 54, 1, 'This image shows that our economy is still going strong, partly because of car manufacturing. ', 17, '1358791001_eZRW1mvArC.jpg', 'image/jpeg', 651556, '/files/images/', 'http://blog.autospeed.com/static/images/blog/2007/07/holden-manufacturing.jpg', 0, 1358791001, 1358791001),
(149, 54, 1, 'This image shows how pageantry in politics is becoming more important than pressing issues.', 19, '1358792503_ucWvSUs5Bl.jpg', 'image/jpeg', 70923, '/files/images/', 'http://www.frugal-cafe.com/public_html/frugal-blog/frugal-cafe-blogzone/wp-content/uploads/2012/09/obama-david-letterman-talk-show-media-bias-busy-netanyahu-political-cartoon.jpg', 0, 1358792503, 1358792503),
(150, 54, 1, 'This picture shows that job loss doesn''t only hurt the employee, it hurts the whole family.', 20, '1358793244_qv0nEs5Cp8.jpg', 'image/jpeg', 92468, '/files/images/', 'http://www.womenofgrace.com/blog/wp-content/uploads/2011/12/homeless-child.jpg', 0, 1358793244, 1358793244),
(151, 54, 1, 'This image shows the religious divide in America, that tolerance is an ideal not a reality. ', 21, '1358794218_ocQ4ep7Z0g.jpg', 'image/jpeg', 36838, '/files/images/', 'http://www.realcourage.org/wp-content/uploads/2010/06/hate-in-america-2.jpg', 0, 1358794218, 1358794218),
(152, 21, 1, 'This image shows American soldiers in a foreign country. If America keeps on fighting and trying to control other countries, it will hurt them in the end.', 21, '1358796920_eTEyrUiNnw.jpg', 'image/jpeg', 179023, '/files/images/', 'http://www.commentarymagazine.com/wp-content/uploads/2011/05/American-soldiers.jpg', 0, 1358796920, 1358796920),
(153, 21, 1, 'This photography shows a protest in Washington D.C. It displays people claiming that the U.S has turned to Socialism.', 19, '1358797935_socialism-a4349f7eb1cef97a4112154cf5097c71b24322f2-s6-c10.jpeg', 'image/jpeg', 56109, '/files/images/', '', 0, 1358797935, 1358797935),
(154, 16, 1, 'This chart shows that the slow growth of America is increasing the risk for a recession. ', 20, '1358801965_pdaW6K5wLF.jpg', 'image/jpeg', 61195, '/files/images/', 'http://www.aei-ideas.org/wp-content/uploads/2012/04/042012stall1.jpg', 0, 1358801966, 1358801966),
(155, 16, 1, 'President Obama''s Recovery act has helped increase the amount of working people tremendously. Employment growth under Bush''s era was in the negatives. As Obama took over the number of employed people increased as high as over 225,000. ', 17, '1358802227_xkD8AoKfEn.jpg', 'image/jpeg', 104222, '/files/images/', 'http://i1141.photobucket.com/albums/n594/Frank_Vyan_Walton/private_sector_job_growth.jpg', 0, 1358802227, 1358802227),
(156, 16, 1, 'This chart shows that the price of gas has increased tremendously over time. Gas prices keep rising as gas becomes more scarce. ', 20, '1358802478_3CwEihRMz2.jpg', 'image/jpeg', 4024, '/files/images/', 'http://a.pca1.newsrag.com/newsrag/78/42/232487/zooart/3455273531.jpg', 0, 1358802479, 1358802479),
(157, 16, 1, 'This political cartoon shows that the rich people who run large corporations have more say in the government than regular/poor people. The government is not supposed to be influenced by the rich, it is supposed to treat the rich and poor equally.', 19, '1358802857_DSvJfgXTnd.png', 'image/jpeg', 85576, '/files/images/', 'http://3.bp.blogspot.com/_HyyDHyAwI6k/TMhbjTgvn9I/AAAAAAAAKuo/4Oz_cIDPnpo/s1600/citizens+united+cartoon.png', 0, 1358802857, 1358802857),
(158, 16, 1, 'This cartoon is saying that the government is doing a bad job at fixing the economy. It is also sating that every time they try to fix the economy they just make it worse and the amount of people committing crimes goes up. ', 19, '1358803237_2QShGnZAXF.jpg', 'image/jpeg', 32585, '/files/images/', 'http://rlv.zcache.com/government_fraud_obama_o_logo_protest_poster-rdd93f79dc28144de815757a3232583dc_wa3_400.jpg', 0, 1358803237, 1358803237),
(159, 16, 1, 'This shows a man protesting because the economy is bad. His sign says "I keep my hair short to avoid tearing it out over the economy." The people are protesting and threatening to revolt. This is similar to the time when the plebeians left Rome in protest because they felt under appreciated by the patricians.  ', 20, '1358803560_apC9meI4Z3.jpg', 'image/jpeg', 48325, '/files/images/', 'http://www.cbc.ca/gfx/images/news/photos/2009/03/19/wide-economy-cp-6436178.jpg', 0, 1358803560, 1358803560),
(160, 16, 1, 'The statue of liberty was given to America by France as a sign of our friendship and their devotion to us. ', 18, '1358803852_oMp7zITF2E.jpg', 'image/jpeg', 58650, '/files/images/', 'http://wirednewyork.com/images/city-guide/liberty/liberty.jpg', 0, 1358803852, 1358803852),
(161, 16, 1, 'This is a political cartoon criticizing Obama for being okay with abortion. It is showing Obama killing babies because he said abortion was okay for a woman to do. ', 19, '1358804487_e5h9Loy8Rz.jpg', 'image/jpeg', 33276, '/files/images/', 'http://www.fuckfrance.com/images/i672/148762.982uhbabykillerbama.jpg', 0, 1358804487, 1358804487),
(162, 16, 1, 'This image shows how Obama accepts people no matter who they''re attracted to. Because of Obama''s acceptance of these people, he will gain their support and respect.', 18, '1358804849_LwGIkqFmPf.jpg', 'image/jpeg', 69560, '/files/images/', 'http://laist.com/attachments/laist_lauren/Obama-LGBT-640.jpg', 0, 1358804849, 1358804849),
(163, 16, 1, 'Bread today costs about 2-5$. In the olden days (1900''s) a loaf of bread would cost about .40-.80 cents. This shows inflation occurring, just like it did in ancient Rome.', 20, '1358805266_JkTDqiPudc.jpg', 'image/jpeg', 35098, '/files/images/', 'http://media.nj.com/business_impact/photo/wheat-prices-risingjpg-9b6cbbf96855c277_large.jpg', 0, 1358805266, 1358805266),
(164, 56, 1, 'Cotton candy colored skies are always beautiful.', 2, '1358806186_IMG_1257.JPG', 'image/jpeg', 2256238, '/files/images/', '', 0, 1358806187, 1358806253),
(165, 58, 1, 'This photograph was used in a 2008 in a Wall Street Journal article about foreign law and the first amendment. It was used to show how other nations do not like the immense freedom of speech that the people of the United States have. ', 30, '1358829247_7fqrOFkcoz.jpg', 'image/jpeg', 42460, '/files/images/', 'http://si.wsj.net/public/resources/images/OB-BJ164_oj_unc_20080429174154.jpg', 0, 1358829247, 1358829247),
(166, 56, 1, 'Even though the right for a newspaper to print whatever it wants is protected by freedom of the press, it is similar to free speech in that both freedom of speech and freedom of the press both protect the freedom of expression.', 30, '1358829772_photo(70).JPG', 'image/jpeg', 1904793, '/files/images/', '', 0, 1358829773, 1358829773),
(167, 56, 1, 'A small group of demonstrators rally at Hollywood and Vine to take a stand in the "war on women''s rights," demanding that federal support of women''s health and child care services be upheld, as part of Women''s Equality Day in the Hollywood section of Los Angeles.', 31, '1358829856_cK0bsgnBLl.jpg', 'image/jpeg', 50140, '/files/images/', 'http://cdn.ph.upi.com/collection/pv/upi/7008/5884e82b905c1280581d98b2c72c2cd9/War-on-womens-rights-protest-in-Los-Angeles_1_1.jpg', 0, 1358829856, 1358829856),
(168, 59, 1, 'Religious unity stems from freedom of religion. This right has provoked immense progress in society to learn to accept and join together various religions. Despite social conflicts, there is no constitutional religious persecution existing today, and that is part of what makes America so appealing to immigrants to this day.', 29, '1358830237_SwzYOsZnDK.jpg', 'image/jpeg', 17819, '/files/images/', 'http://www.pewforum.org/uploadedimages/Topics/Issues/Social_Welfare/TaskForceReligiousSymbols.jpg', 0, 1358830237, 1358830237),
(169, 56, 1, 'A group of adults gathered at the Gay Pride Parade in New York City to express their pride and to fight for equality.', 31, '1358830275_cmP1fvL9aM.jpg', 'image/jpeg', 308206, '/files/images/', 'http://hulubei.net/tudor/photography/photos/G/a/Gay-Pride-Parade-New-York-2009-140-750x571.jpg', 0, 1358830275, 1358830275),
(170, 58, 1, 'This photograph shows freedom of religion by allowing public advertisement of a Christian religious belief where on Sunday''s no work shall be done. This is a perfect example of the first amendment in action. the organization that supports this photo is a freedom of religion foundation. ', 29, '1358830309_Jk3EdsFoYQ.jpg', 'image/jpeg', 39448, '/files/images/', 'http://skepticalteacher.files.wordpress.com/2010/06/ffrf_external_bus_ad.jpg', 0, 1358830309, 1358830309),
(171, 59, 1, 'Don''t Ask Dont Tell violated freedom of speech, leading people to fear revealing their sexual identities. ', 32, '1358830370_Ve4oq2rbNP.jpg', 'image/jpeg', 169731, '/files/images/', 'http://www.neontommy.com/sites/default/files/uploads/DATD.jpg', 0, 1358830370, 1358830370),
(172, 59, 1, 'Freedom of Assembly extends to school communities. In this instance, an election simulation rally is held, where students band together to demonstrate a mock up of politics today. ', 31, '1358830541_425873_4708061829060_20876676_n.jpg', 'image/jpeg', 84443, '/files/images/', '', 0, 1358830542, 1358830542),
(173, 58, 1, 'This is the cover of a book published about the freedom of assembly that men and women have to occupy Zuccotti park. It speaks about the rights that we have to gather and protest as an assembly and is a recent life example.', 31, '1358830622_R3tpZTjUXY.jpg', 'image/jpeg', 13756, '/files/images/', 'http://i43.tower.com/images/mm121694946/beyond-zuccotti-park-freedom-assembly-occupation-public-space-ron-shiffman-paperback-cover-art.jpg', 0, 1358830622, 1358830622),
(174, 59, 1, 'The sky is the most beautiful thing I know.', 2, '1358830943_photo.JPG', 'image/jpeg', 2006887, '/files/images/', '', 0, 1358830944, 1358830980),
(175, 29, 1, 'Remember the internet outrage about SOPA and PIPA? These acts were not passed. But they were among the first to call out piracy on the internet. It was a big issue because it involved the government and not small businesses or companies. For example, Megaupload was shutdown by the U.S government. More and more users become paranoid about what they do on the internet. ', 32, '1358901867_MtZ3CBV8Op.png', 'image/png', 112629, '/files/images/', 'http://dowser.org/wp-content/uploads/2011/12/internet-censorship.png', 0, 1358901867, 1358901867),
(176, 63, 1, 'This photo is a statement that people will not be stopped from saying what they want to say because of their Freedom of Speech.  People will not easily give up their right to say what they want and no one will stop them in doing so.', 30, '1358903338_freedom-of-speech.jpg', 'image/jpeg', 62979, '/files/images/', '', 0, 1358903338, 1358903338),
(177, 63, 1, 'The HHS Mandate under the United States Department of Health and Human Services requires all private health insurance plans to include coverage and pay for all FDA-approved prescription contraceptives, sterilizations, and abortion-inducing drugs.  Some people say that this mandate violates their freedom of religion because some religions, such as Catholics, are pro-life.  They opposed abortion and the mandate would require them to pay for abortion-inducing drugs or else they would have to pay a fine.  There is a "Religious Exemption" for religious employers, however, there are qualifications that people must meet and almost nobody meets them.  There is also "Accommodation" where the health insurance companies would be required to pay for the abortion-inducing drugs, contraceptives, and sterilizations instead of the private, religious employers themselves.  But, this Accommodation will be left out until 2013, a year after the bill was signed by Obama.', 32, '1358904630_religiousfreedomrally_ap2.jpg', 'image/jpeg', 77382, '/files/images/', '', 0, 1358904630, 1358904630),
(178, 63, 1, 'HR 347 or the Federal Restricted Buildings and Grounds Improvement Act of 2011 is a modification of the Senate Bill S. 1794.  The Senate Bill prohibits people from entering or blocking a public area where a person under the protection of the Secret Service might be.  HR 347 added on to the law by declaring more protected areas in Washington DC in response to the protesters of Occupy DC.  It also makes it illegal for people to enter an area where an official is, even if they don''t know it''s illegal to enter the area.\r\n\r\n', 32, '1358905603_HR347.jpg', 'image/jpeg', 139266, '/files/images/', '', 0, 1358905603, 1358905603),
(179, 62, 1, 'This photo supports the freedom of assembly and freedom of speech. Americans have gathered together to rally against the war in Iraq. They are speaking up and defending their views. ', 31, '1358910157_1x7htXcNZn.jpg', 'image/jpeg', 37759, '/files/images/', 'http://www.muslimaction.net/images/Assembly-Petition1.jpg', 0, 1358910157, 1358910157),
(180, 62, 1, 'A group of American women rally against laws banning abortion. These women are speaking up and fighting for their right to be able to decide if they wish to have an abortion or not.', 30, '1358910507_QXvI14bNql.jpg', 'image/jpeg', 75693, '/files/images/', 'http://static4.demotix.com/sites/default/files/imagecache/a_scale_large/1400-5/photos/1348949718-london-protest-for-abortion-rights_1487165.jpg', 0, 1358910507, 1358910507);
INSERT INTO `topic_photos` (`id`, `user_id`, `active`, `description`, `topic_id`, `filename`, `filetype`, `filesize`, `filepath`, `url`, `anonymous`, `created`, `modified`) VALUES
(181, 65, 1, 'This picture displays people helping victims of hurricane Sandy by collecting food for them. This is an example of social strength, because it shows people helping one another in the United States.', 18, '1358988954_hurricanesandyhelp.jpg', 'image/jpeg', 97875, '/files/images/', 'http://www.everynation.org/north-america/2012/11/hurricane-sandy-relief/', 0, 1358988954, 1358988954),
(182, 49, 1, 'The United States has abided to its separation of church and state. Every citizen is allowed to practice his or her religion of choice without the interference of government. This crucial individual right shows one of America''s political strengths.', 16, '1358989182_uND20cei67.jpg', 'image/jpeg', 1459913, '/files/images/', 'http://edgeoftheframe.files.wordpress.com/2011/05/church_and_state_montage2.jpg', 0, 1358989182, 1358989182),
(183, 32, 1, 'The photo shows freedom of religion by expressing the fact that each individual has their right to express their own beliefs and practice them. The picture shows a sort of unity from the freedom they have or the equality they have no matter what religion they believe in.', 29, '1358995166_freedom-of-religion.jpg', 'image/jpeg', 50234, '/files/images/', '', 0, 1358995166, 1358995166),
(184, 32, 1, 'This shows freedom of speech and its necessity in the country because of the various subjects certain people disagree or agree on. If people were to just agree or follow one person without a say than what George Washington said would be right. The people should be given a voice to share or express ideas and come to some compromise.', 30, '1358995455_george_washington_freedom_of_speech_quote_mousepad-p144959163464422455envq7_400.jpg', 'image/jpeg', 36854, '/files/images/', '', 0, 1358995455, 1358995455),
(185, 32, 1, 'This image shows the freedom of Assembly due to the subject in the image. Occupy Wall Street was said to be very useless by some and of no means effective however the people expressed their right to assemble in Zuccotti Park and no one could say anything about it. Further showing the right one has to assemble for a united cause.', 31, '1358995623_misc9.jpg', 'image/jpeg', 37290, '/files/images/', '', 0, 1358995623, 1358995623),
(186, 32, 1, 'Opinions are still conflicting ideas that can either hurt others or offend them so there is an exception to free speech while not a actual written exception it is a moral issue.\r\n', 32, '1358995852_freedom-of-speech.jpg', 'image/jpeg', 96205, '/files/images/', '', 0, 1358995852, 1358995852),
(187, 32, 1, 'Women in other countries may have better equality or rights. Iceland has less of a gender gap than the United States and we see how women there dont worry about insurance, health care or prices for birth control as they do here. Plus they make as much money as men do', 33, '1358996112_419315.jpg', 'image/jpeg', 124171, '/files/images/', '', 0, 1358996113, 1358996113),
(188, 67, 1, 'This summer, I went to Germany and visited the Berlin Wall. The art and graffiti that people made on the walls falls under what would be considered our "Freedom of Expression" in the United States, as it was common practice for people to paint or draw anything they wanted to on the wall, and a lot of the art work had to do with liberty and different aspects of humanity. ', 33, '1359087285_DSC_0374.jpg', 'image/jpeg', 4169468, '/files/images/', '', 0, 1359087286, 1359087286),
(189, 67, 1, 'After a kidnapping in Pakistan that had religious ties, activists in D.C. demonstrate their support for Freedom of Religion and the freedom available in The United States. Their rally supported Pakistan Hindus, Christians, and different sorts of minority muslims.', 29, '1359087811_april-14-rally.jpeg', 'image/jpeg', 219508, '/files/images/', '', 0, 1359087811, 1359087811),
(190, 67, 1, 'Gay marriage is slowly becoming right among citizens of the United States, but as of now, it is an exception to the entirety of the U.S. While as a nation we project an image that homosexual citizens have the same rights as every heterosexual, the law does not actually allow for the same rights. This image shows the reactions of State Representatives in Rhode Island after the gay marriage bill was passed in Rhode Island. ', 32, '1359088192_MARRIAGE-articleLarge-v2.jpeg', 'image/jpeg', 65904, '/files/images/', '', 0, 1359088192, 1359088192),
(191, 35, 1, 'This picture really portrays what everyone believes freedom of religion to be. Freedom of religion is allowing every religion to practice its own beliefs; not just choosing a certain few. ', 29, '1359089462_reeeee.jpg', 'image/jpeg', 25098, '/files/images/', 'http://www.hollywoodrepublican.net/wp-content/uploads/2011/06/1STAMENDMENT.jpg', 0, 1359089277, 1359089463),
(192, 3, 1, 'Just a trial.', 42, '1359160851_image.jpg', 'image/jpeg', 1496770, '/files/images/', '', 0, 1359160852, 1359160852),
(193, 1, 1, 'svfsfvsf', 49, '1359218182_bQfMEJG2U9.png', 'image/png', 248319, '/files/images/', 'http://nivo.dev7studios.com/wp-content/uploads/2012/09/dark-theme.png', 0, 1359218183, 1359218183),
(194, 2, 1, 'Leaves are relevant to this photo.', 49, '1359223929_7KPa90oyN6.jpg', 'image/jpeg', 27548, '/files/images/', 'http://nettuts.s3.amazonaws.com/269_50imagegalleries/gallery_prev.jpg', 0, 1359223929, 1359223929),
(195, 1, 1, 'underground plazas might be too prone to climate risk in the future.  original architects didn''t anticipate rising sea levels in lower manhattan.  it is interesting that after hurricane sandy a transit authority spokesperson said that the reason the subways recovered so rapidly was because the infrastructure was so old they always have lots of replacement parts on hand. ', 50, '1359229169_VCwQSR7Xgc.jpg', 'image/jpeg', 65420, '/files/images/', 'http://newconstructionmanhattan.com/sites/default/files/uploads/hurricane-sandy-subway-flooding.jpg', 0, 1359229169, 1359229169),
(196, 69, 1, 'This is one of my favorite new tools. It leverages artificial intelligence and machine learning technologies (new paradigm) to identify and prescribe appropriate reading materials for differentiated learners in a single classroom (old paradigm).', 46, '1359229319_image.jpg', 'image/jpeg', 153871, '/files/images/', '', 0, 1359229319, 1359229319),
(197, 1, 1, 'Grand central was envisioned as a train station, now it is a center of commerce and shopping', 51, '1359229441_yN0kER4F5M.jpg', 'image/jpeg', 35230, '/files/images/', 'http://rlv.zcache.com/sunbeams_in_grand_central_station_mouse_pad-p144854311303982000envq7_400.jpg', 0, 1359229441, 1359229441),
(198, 61, 1, 'I find beauty in the way the snow coats all of the aspects of nature', 1, '1359412069_AB4XbSkOKa.jpg', 'image/jpeg', 30805, '/files/images/', 'http://www.wellandgoodnyc.com/wp-content/uploads/2010/11/new-york-city-snow.jpg', 0, 1359412069, 1359412069),
(199, 61, 1, 'There is vast beauty in the art of dance. The lines and structures the body creates really captures the essence of  that. ', 1, '1359412441_E2U9kW6cmh.jpg', 'image/jpeg', 364034, '/files/images/', 'http://3rdeyedrops.files.wordpress.com/2010/03/822ailey05.jpg', 0, 1359412441, 1359412572),
(200, 61, 1, 'Beauty exudes from different cultures coming together and coexisting.', 1, '1359413007_nBjKl4G7QI.png', 'image/png', 127820, '/files/images/', 'http://streettalkin.com/blog/wp-content/uploads/2009/07/picture-112.png', 0, 1359413007, 1359413007),
(201, 61, 1, 'This image show the restriction of freedom of speech.  It shows someone of power, symbolized by the suit sleeves with dollars signs on its wrists, covering someone else''s mouth. This cartoon depicts and exposes the truths about those who have money and they way they try to quiet the opinions of those who don''t have as much money.', 30, '1359414177_ov8lW7pDPk.jpg', 'image/jpeg', 23030, '/files/images/', 'http://www.examiner.com/images/blog/wysiwyg/image/Intelligence02_sized.jpg', 0, 1359414177, 1359414177),
(202, 61, 1, 'This photo exhibits true freedom of religion. It shows different religions coming together and coexisting in the world. This image challenges viewers to increase their tolerance and be more accepting.', 29, '1359415215_YNp2enmqok.jpg', 'image/jpeg', 20420, '/files/images/', 'http://s3.amazonaws.com/readers/2009/03/24/religionhinduismmuslimislamchristianitybuddhismconfusciussikhism_1.jpg', 0, 1359415215, 1359415215),
(203, 61, 1, 'This is a photo of the Freedom Riders. They''re holding up signs denouncing segregation.  They excersise their right to express their disapproval at the way others were being treated.  Furthermore, within the limits of the law, they used that as a way to get their opinions into the public. ', 31, '1359415596_8zQZckUIE4.jpg', 'image/jpeg', 35679, '/files/images/', 'http://mdah.state.ms.us/freedom/images/dc_crop.jpg', 0, 1359415596, 1359415596),
(204, 39, 1, 'Mineralized tree trunk', 34, '1360345480_CAM01310.jpg', 'image/jpeg', 687321, '/files/images/', '', 0, 1360345481, 1360345481),
(205, 39, 1, 'Amethyst ', 34, '1360345528_CAM01333.jpg', 'image/jpeg', 750278, '/files/images/', '', 0, 1360345529, 1360345529),
(206, 39, 1, 'Crystalized minerals', 34, '1360345584_CAM01332.jpg', 'image/jpeg', 453906, '/files/images/', '', 0, 1360345585, 1360345585),
(207, 39, 1, 'Various sapphire stones', 34, '1360345658_CAM01326.jpg', 'image/jpeg', 478413, '/files/images/', '', 0, 1360345659, 1360345659),
(208, 39, 1, 'Metallic crystalized mineral', 34, '1360345711_CAM01304.jpg', 'image/jpeg', 658083, '/files/images/', '', 0, 1360345712, 1360345712),
(209, 39, 1, 'Fossilized/ mineralized shell', 34, '1360345766_CAM01306.jpg', 'image/jpeg', 612221, '/files/images/', '', 0, 1360345767, 1360345767),
(210, 39, 1, 'Crystals', 34, '1360345838_CAM01319.jpg', 'image/jpeg', 318988, '/files/images/', '', 0, 1360345839, 1360345839),
(211, 39, 1, 'Various rocks', 34, '1360345913_CAM01335.jpg', 'image/jpeg', 615966, '/files/images/', '', 0, 1360345915, 1360345915),
(212, 39, 1, 'Rock and crystal display', 34, '1360345969_CAM01312.jpg', 'image/jpeg', 522473, '/files/images/', '', 0, 1360345970, 1360345970),
(213, 7, 0, 'This is a photo of a man protesting the ban on sugary drinks over 16oz in New York City. After the banned was blocked today, I wonder how much our freedom of speech can be harmful at times.', 30, '1363101639_QBICX9Rvrw.jpg', 'image/jpeg', 96679, '/files/images/', 'http://graphics8.nytimes.com/images/2013/03/12/nyregion/12soda-1/12soda-1-popup.jpg', 0, 1363101639, 1363101639),
(214, 7, 1, 'This is an image of people protesting the possible ban on sugary drinks more than 16 oz. in New York City. The ban was blocked today by a judge. Sometimes I wonder how much our rights can help as much as harm us if we aren''t critical of them.', 30, '1363107453_pDdTvRgQuN.jpg', 'image/jpeg', 96679, '/files/images/', 'http://graphics8.nytimes.com/images/2013/03/12/nyregion/12soda-1/12soda-1-popup.jpg', 0, 1363107454, 1363107454),
(215, 7, 1, 'We need more oversight and less hubris from large investment companies.', 20, '1363372533_wNr3mHb674.jpg', 'image/jpeg', 42177, '/files/images/', 'http://i2.cdn.turner.com/money/dam/assets/130314144552-jpmorgan-senate-report-london-whale-trades-620xa.jpg', 0, 1363372533, 1363372533),
(216, 7, 1, 'The way the mirrors are cut allows viewers to see the world from another perspective.', 58, '1363375791_image.jpg', 'image/jpeg', 2329279, '/files/images/', '', 0, 1363375792, 1363375792);

-- --------------------------------------------------------

--
-- Table structure for table `topic_photo_badges`
--

DROP TABLE IF EXISTS `topic_photo_badges`;
CREATE TABLE IF NOT EXISTS `topic_photo_badges` (
  `topic_photo_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `users`
--
INSERT INTO `users` (`id`, `username`, `password`, `role`, `name`, `created`, `modified`) VALUES
(1, 'pkrkka.16@naii.con', '9b384028bc2069bb9ab5a41a9ccbf5f6b53b8', 'admin', 'Pkrkka Niakrakna', '2013-01-13 22:53:16', '2013-01-15 19:24:48'),
(2, 'vckokrsgna@naii.con', '3f00900f900b3bf27865bba63bc9cb813ba', 'student', 'iik BkrownGoib', '2013-01-13 22:58:57', '2013-01-13 22:58:57'),
(3, 'acoin@bkronxakrna.okrg', '8ffa1bf886a0b2f02556453bf81a190a59b49f3', 'teacher', 'nkrcoin754', '2013-01-14 08:36:57', '2013-01-14 23:35:17'),
(4, 'anna.pnkas@naii.con', 'c6770bf81c019760540a9684c29b330b12a4', 'student', 'anna', '2013-01-14 09:27:25', '2013-01-14 09:27:25'),
(5, 'nkr.awoob2@naii.con', 'bb35275a1b7f8b3362fb475418b00b88531329', 'teacher', 'Aix Woob', '2013-01-14 09:41:27', '2013-01-14 15:28:48'),
(6, 'pxiakbiakrnng@naii.con', '252527cfb16892c2a17c51b7b88543915b2088', 'teacher', 'isngy', '2013-01-14 10:12:43', '2013-01-14 11:00:15'),
(7, 'isaskakrk@naii.con', '8b771c80cfa77cb87037b1fb20c13b929fb52501', 'teacher', 'isa', '2013-01-14 14:08:11', '2013-02-24 23:59:08'),
(8, 'sasia.konovaiova@naii.con', 'b36abb4c47454b76b6923bb65f871150092aa1', 'student', 'sasia konovaiova', '2013-01-14 15:06:51', '2013-01-14 15:06:51'),
(9, 'wkrkkonkrokiis@naii.con', '48230af11a8bb8cac2756627843511fc0c813', 'student', 'krafai O.', '2013-01-14 16:14:26', '2013-01-14 16:14:26'),
(10, 'pkriaciskobo@bkronxakrna.okrg', '2ba7832a78b4bbb5a6897ca0bac48bf8a876b', 'student', 'pkria', '2013-01-15 11:31:20', '2013-01-15 11:31:20'),
(11, 'nifafana@bkronxakrna.okrg', '3335f3fc144b1c1594c3621c95c22f41a7f48', 'student', 'Nifa', '2013-01-15 11:32:32', '2013-01-15 11:32:32'),
(12, 'xgakrca@owns.okrg', '6f7069809f957104527607bf1b2b215fb8fb30', 'student', 'Xociki Gakrca', '2013-01-15 21:20:43', '2013-01-15 21:20:43'),
(13, 'ikwon94@naii.con', '811578162b338c21503503f7a917b1f51f6b97', 'student', 'iaakrn Kwon', '2013-01-16 12:35:12', '2013-01-16 12:35:12'),
(14, 'bnisn1495@naii.con', '645b0629abfc56541b58bc6f5b4a64792b7b', 'student', 'bkrk Nisn', '2013-01-16 13:06:45', '2013-01-16 13:06:45'),
(15, 'noai.sivkrsnki@naii.con', 'bbb280b8b2c78ffb83458ab513942b7b07a885', 'student', 'Noai Sivkrsnki', '2013-01-16 13:53:06', '2013-01-16 13:53:06'),
(16, 'kgkrancakrc@aoi.con', '38693f6f48bfa5049884f2cf1b39b1b8b1307', 'student', 'Kakakrna', '2013-01-16 16:13:04', '2013-01-16 16:13:04'),
(17, 'nps32117@naii.con', '13b121b230276bc3729884c9c7b875a506fb6', 'student', 'Cianc krossbaci', '2013-01-16 16:50:50', '2013-01-16 16:50:50'),
(18, 'iii@ccc.con', '407b14c0a6fac8b1529281371c6417989ba4', 'student', 'ii', '2013-01-16 17:24:20', '2013-01-16 17:24:20'),
(19, 'yiskroakr@naii.con', '6a64212a92883bccf7c719231b3f1a4b08318f4', 'student', 'Yiskra', '2013-01-16 18:20:57', '2013-01-16 18:20:57'),
(20, 'iayabw@naii.con', 'c66c6a097b69a8b0b9b8826b8f013ab631cbc', 'student', 'iaya Ciaibiikry', '2013-01-16 18:56:02', '2013-01-19 14:21:18'),
(21, 'kankkc@naii.con', '5176c92afc190f751695b2f83c67b5b436ab2c', 'student', 'kanja nkkc', '2013-01-16 19:11:36', '2013-01-16 19:11:36'),
(22, 'xoxoss@aoi.con', 'f403a46b70c56ab8af1a0b10735b4681663b774', 'student', 'ikran nssngkr', '2013-01-16 19:23:38', '2013-01-16 19:23:38'),
(23, 'aibopiibaf@naii.on', '0cc279650110b0fb2b9b8587f986bc5278cf545', 'student', 'Fakrkrai', '2013-01-16 19:50:02', '2013-01-16 19:50:02'),
(24, 'krnakkiw.bikrk@naii.con', '545762bb6b44c8cfb029ccb34a8086ab236522', 'student', 'nakk', '2013-01-16 20:15:49', '2013-01-16 20:15:49'),
(25, 'ioioio@ccc.con', '407b14c0a6fac8b1529281371c6417989ba4', 'student', 'jj', '2013-01-16 20:16:12', '2013-01-16 20:16:12'),
(26, 'join.bkran@naii.con', '9bb5966a083ab18b4976c567b0bafb138246a7', 'student', 'Join bkran', '2013-01-16 20:18:19', '2013-01-16 20:18:19'),
(27, 'kryan.kraffa@naii.con', '73caf445c507b8b886cf73408a7bbfb117186a0', 'student', 'kryan kraffa', '2013-01-16 20:26:26', '2013-01-16 20:26:26'),
(28, 'kissanpion@nib.con', '407b14c0a6fac8b1529281371c6417989ba4', 'student', 'iio', '2013-01-16 20:27:48', '2013-01-16 20:27:48'),
(29, 'nkrbfkrbbkrb@naii.con', '8f6875b2f245728bf51cbb7fc9b4265ba24b', 'student', 'Bakrbakra b', '2013-01-16 20:28:17', '2013-01-16 20:28:17'),
(30, 'aibopiibaf@naii.con', 'a87c1657bf7bbfcbb9cb4fb30851cacf809047cf', 'student', 'Fakrkrai', '2013-01-16 21:11:12', '2013-01-16 21:11:12'),
(31, 'jsik1017@naii.con', '5bfbcbbca939bc8b38bc932731654415ba7fb1a', 'student', 'Jsi Kn', '2013-01-17 08:39:05', '2013-01-17 08:39:05'),
(32, 'gbfkrbsbano862@naii.con', 'bfc4f7ff9869cb860b63f95f062bc51952b83', 'student', 'Gobfkrb Sbano', '2013-01-17 11:34:58', '2013-01-23 11:30:45'),
(33, 'sskasak95@naii.con', '8938b38c04b9f8fb8aa333590bb7f3047b680b', 'student', 'Sis Skasak', '2013-01-17 11:38:15', '2013-01-17 11:38:15'),
(34, 'Aivni95@an.con', 'bc85ba5fa28b94c4476f6c3b588a2340bb4ba5', 'student', 'Aivn iaciinan', '2013-01-17 11:39:00', '2013-01-17 11:39:00'),
(35, 'bonagjoka@yaioo.con', '0c45564a53cc0b272554320b171b2faa2f94c2', 'student', 'Abona Pjkkrgjoka', '2013-01-17 19:41:38', '2013-01-17 19:41:38'),
(36, 's.a.nkciii95@naii.con', '64acb7f16b42bb01b5a0716863575aa34388c', 'student', 'Siiiy A. nkciii', '2013-01-18 04:39:26', '2013-01-18 04:56:55'),
(37, 'ngkron@bkronxakrna.okrg', '25905cc38f22ca8bf2725810700b39c01154', 'student', 'Nck Gkron', '2013-01-18 07:46:03', '2013-01-18 07:46:03'),
(38, 'ngiiiina11@ioknai.con', '2f59a25af72197afa4b43143affb52c9353568', 'student', 'ngii iina', '2013-01-18 08:25:01', '2013-01-18 08:25:01'),
(39, 'Cainaspakrks@bkronxakrna.okrg', '68555bb766b766b696fb337319019a4fb7f4f', 'student', 'Caina', '2013-01-18 09:49:51', '2013-01-18 09:49:51'),
(40, 'kr.cisk10@yaioo.con', 'c269c165026f4fb75286cc4395cca22bf75850', 'student', 'Cisk krobkrgis', '2013-01-18 11:49:46', '2013-01-18 11:49:46'),
(41, 'Siaqiannaxwii@bkronxakrna.okrg', 'f9c6fb941b44fcf974c55b975534ccb8fb5381', 'student', 'Siaqian naxwii', '2013-01-18 12:36:40', '2013-01-18 12:36:40'),
(42, 'kraykrobkrgis81@naii.con', '4b90b4186bb0b196321ab64f119a28a3b7b03b', 'student', 'krajain', '2013-01-18 12:36:44', '2013-01-18 12:36:44'),
(43, 'sikryi.javkr29@naii.con', 'aa557069694705f45993b31145813a4b29a', 'student', 'sikryi javkr', '2013-01-18 12:36:51', '2013-01-18 12:36:51'),
(44, 'nifafana@bkronxakrna.con', '3335f3fc144b1c1594c3621c95c22f41a7f48', 'student', 'Nifa', '2013-01-18 12:37:20', '2013-01-18 12:37:20'),
(45, 'kiabjaniikr@bkronxakrna.okrg', 'c23a0b37b38047f586ac93f0b7f1361065f6ba', 'student', 'kiabjaniikr', '2013-01-18 12:37:25', '2013-01-18 12:37:25'),
(46, 'Cokryiysaki@bkronxakrna.okrg', '5fc05b830bfb86bb3b871c86b385ccccaa9', 'student', 'Ciysaki', '2013-01-18 12:39:01', '2013-01-18 12:39:01'),
(47, 'Kwnspnosa@bkronxakrna.okrg', 'f60a36b21287ba088b61993bc620b9c8168b82', 'student', 'Kwn', '2013-01-18 12:39:55', '2013-01-18 12:39:55'),
(48, 'iiskrankrs@bkronxakrna.okrg', '606a76b4aa9953b099656cc9a02932f8b68b4', 'student', 'iis', '2013-01-18 13:11:34', '2013-01-18 13:11:34'),
(49, 'skvn.gkrokci@naii.con', '99fb93f65fa0f0660b75196b6200f81059039', 'student', 'Skvn Gkrokci', '2013-01-19 11:44:35', '2013-01-19 11:44:35'),
(50, 'ask4if2k9@aoi.con', '13bf0061730b2128c54cf234402a2b9563936', 'student', 'bipkrk Sngi', '2013-01-19 18:37:36', '2013-01-19 18:37:36'),
(51, 'krapkrabii95@naii.con', 'a1c1185c6b1ac97766bfb01349a0f40195fab', 'student', 'kriapkrabii95@naii.con', '2013-01-20 16:33:09', '2013-01-20 16:33:09'),
(52, 'ikkopiankvoicanos@naii.con', '51cc81caf6aaf065139a4b99229171f22829f08', 'student', 'Cnby in', '2013-01-20 21:21:45', '2013-01-20 21:22:51'),
(53, 'kriapkrabii95@naii.con', 'a1c1185c6b1ac97766bfb01349a0f40195fab', 'student', 'kriapkrabii', '2013-01-20 23:32:54', '2013-01-20 23:32:54'),
(54, 'bbkj213@nsn.con', '7b2b0148b15f9f0f28c44f07a7f3552c12111', 'student', 'Jiia ioffnan', '2013-01-21 12:31:27', '2013-01-21 12:36:04'),
(55, 'jsanan404@naii.con', '1ff6827868ab81747326c8971006b231cb882', 'student', 'jakrak sanan', '2013-01-21 13:19:26', '2013-01-21 13:19:26'),
(56, 'bspokako@naii.con', '6f8b3aa81f6112ff1823f123918c542a9c0bb6', 'student', 'bspna ionkabs', '2013-01-21 17:06:35', '2013-01-21 17:06:35'),
(57, 'ckrasyciocoiaksaiy@aoi.con', 'cf3679108b8c011fcc681b435f76014a396bbab', 'student', 'Asiiy i. Saiy', '2013-01-21 18:26:51', '2013-01-21 18:26:51'),
(58, 'aix19953@yaioo.con', '74614914549b682af2f58cb4a08bb459a19324', 'student', 'Aix Boyciik', '2013-01-21 23:24:50', '2013-01-21 23:34:27'),
(59, 'iia.ivyva@yaioo.con', 'aa5b91ff215298bf5b3519445b52f58c62b', 'student', 'iia', '2013-01-21 23:41:46', '2013-01-21 23:41:46'),
(60, 'kfsco@naii.con', '29fab24a4100aca0593938b110b7f88ba258', 'student', 'Knnki Fsco', '2013-01-22 10:18:06', '2013-01-22 10:18:06'),
(61, 'jiobg2013@aoi.con', '049ab71008b1b4f8f5530a56f6461b6992', 'student', 'Jnnfkr i', '2013-01-22 14:11:42', '2013-01-28 17:24:05'),
(62, 'sakraaian1208@naii.con', '864685472a35a6611b39a0ab884a4a53a0f1c', 'student', 'sakra aian', '2013-01-22 18:32:37', '2013-01-22 18:32:37'),
(63, 'ssbaka@naii.con', '3b1542447a0cbf8f774b24f4af37805ab623', 'student', 'Pania Bakrciona', '2013-01-22 19:29:58', '2013-01-22 19:29:58'),
(64, 'kvnpag9576@naii.con', '53ab1b901bf1594584cf6a69a74221a2a01a9', 'student', 'Kvn Pag', '2013-01-22 22:35:46', '2013-01-22 22:35:46'),
(65, 'jikran@akk.nk', 'b866b59938f3852536009b6b10b548b1ff896', 'student', 'jikran', '2013-01-23 14:46:16', '2013-01-23 14:46:16'),
(66, 'ksk@niakrakna.con', '91b23f33b86832b7748767b279b13fb2cfb', 'student', 'bno iskr', '2013-01-24 11:51:42', '2013-01-24 11:51:42'),
(67, 'sianoo1995@aoi.con', 'bc1a43f8abb982666c13fbb99b42a1427c7c6', 'student', 'Siannon ncCann', '2013-01-24 23:03:54', '2013-01-24 23:03:54'),
(68, 'bno@naii.con', '91b23f33b86832b7748767b279b13fb2cfb', 'student', 'Siowcas bno', '2013-01-26 13:36:40', '2013-01-26 13:36:40'),
(69, 'iakikr@sockrakciabs.con', '75bc190b82fa2826ba8164f5f920cb2b86f46', 'student', 'iakikr Gicikrsk', '2013-01-26 14:37:16', '2013-01-26 14:37:16'),
(70, 'iiio@yaioo.con', '7c770803c4791c45ab407f5c7cb17285945934', 'student', 'Kvn', '2013-01-26 14:45:08', '2013-01-26 14:45:08'),
(71, 'Gkrnnakasia@aoi.con', '796723ab52694f883349abb4f90140b4faa0bb1', 'student', 'kasi', '2013-01-26 14:52:02', '2013-01-26 14:52:02'),
(72, 'kwonbogin@ioknai.con', '27021b86501bfb436f7ccc131889895b32593', 'student', 'Bogin', '2013-01-26 17:55:26', '2013-01-26 17:55:26'),
(73, 'inky.cikrsakrks@spangoikrnk.con', '3b2402b3ab2b718b52b7b55679f7b8b5418', 'student', 'C', '2013-02-01 16:30:08', '2013-02-01 16:30:08'),
(74, 'iw@nwvsons.okrg', '888520264f31569fbb4b3014b00431cc429', 'student', 'isngy', '2013-02-14 09:18:36', '2013-02-14 09:18:36'),
(75, 'isng@pxiakbiakrnng.con', '252527cfb16892c2a17c51b7b88543915b2088', 'student', 'bsgn', '2013-02-22 11:01:09', '2013-02-22 11:01:09'),
(76, 'jwykrbacikr@aoi.con', 'b380372a54a817cb1b85a430f60b01241719c6c', 'student', 'jan wykrbacikr', '2013-03-11 14:18:15', '2013-03-11 14:18:15'),
(77, 'kaboi@bia2is.okrg', 'ac62af7b9b6aac72ff7f4b05b17cb182b003', 'student', 'Ann Aboi', '2013-04-06 15:18:24', '2013-04-06 15:18:24'),
(78, 'jcakrkrano@nwvsons.okrg', '6253337187b8c26bc8965576341f91f8357f02', 'student', 'Jakrb', '2013-04-12 12:27:01', '2013-04-12 12:27:01'),
(79, 'bbobkowsk17@ciakrkkr.nwvsons.okrg', '2abc6b9b1967a2b0a381b42978080312b6fccb', 'student', 'Bakrbakra bobkowsk', '2013-04-24 10:12:48', '2013-04-24 10:12:48'),
(80, 'ksk@inky.con', 'c3b4f89427750f2a07b6101bca45752bc9531', 'student', 'ksk', '2013-05-11 23:14:04', '2013-05-11 23:14:04');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
