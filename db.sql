-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 21, 2014 at 11:32 PM
-- Server version: 5.1.72-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `millenn1_barfinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkins`
--

CREATE TABLE IF NOT EXISTS `checkins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `venueid` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=451 ;

--
-- Dumping data for table `checkins`
--

INSERT INTO `checkins` (`id`, `uid`, `venueid`, `updated`) VALUES
(429, 25, 4192, '2013-12-14 00:43:52'),
(430, 25, 4166, '2014-02-16 06:26:52'),
(431, 25, 4166, '2014-02-16 06:27:19'),
(432, 25, 4166, '2014-02-16 06:27:20'),
(433, 25, 4166, '2014-02-16 06:27:21'),
(434, 25, 4166, '2014-02-16 06:28:01'),
(435, 25, 4166, '2014-02-16 06:45:34'),
(436, 25, 4166, '2014-02-16 06:45:34'),
(437, 25, 4166, '2014-02-16 06:45:35'),
(438, 25, 4166, '2014-02-16 06:45:35'),
(439, 25, 4166, '2014-02-16 06:45:36'),
(440, 25, 4166, '2014-02-16 06:45:36'),
(441, 25, 4166, '2014-02-16 06:45:52'),
(442, 25, 4166, '2014-02-16 06:45:53'),
(443, 25, 4166, '2014-02-16 06:45:53'),
(444, 25, 4166, '2014-02-16 06:45:53'),
(445, 25, 4166, '2014-02-16 06:45:53'),
(446, 25, 4166, '2014-02-16 06:45:54'),
(447, 25, 4166, '2014-02-16 07:33:50'),
(448, 25, 4142, '2014-02-16 07:56:38'),
(449, 25, 4486, '2014-02-16 22:05:49'),
(450, 25, 4501, '2014-02-17 00:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `venueid` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `uid`, `venueid`, `updated`, `comment`) VALUES
(1, 18, 4166, '2013-10-31 16:41:41', 'test'),
(2, 18, 4166, '2013-10-31 16:42:19', 'test'),
(3, 18, 4166, '2013-10-31 16:42:45', 'test'),
(4, 18, 4166, '2013-10-31 16:43:41', 'test'),
(5, 18, 4166, '2013-10-31 16:45:04', 'test2'),
(6, 18, 4166, '2013-10-31 16:46:02', '23'),
(7, 18, 4166, '2013-10-31 16:46:23', '23'),
(8, 18, 4166, '2013-10-31 16:46:36', '34'),
(9, 18, 4166, '2013-10-31 16:47:25', '23'),
(10, 18, 4166, '2013-10-31 16:47:27', '2342'),
(11, 18, 4166, '2013-10-31 16:52:25', '32'),
(12, 18, 4166, '2013-10-31 16:52:27', '3212'),
(13, 18, 4166, '2013-10-31 17:04:04', '123456 phone test'),
(14, 20, 4134, '2013-10-31 17:07:48', 'Testing 123'),
(15, 18, 4592, '2013-10-31 23:15:58', 'test'),
(16, 18, 4592, '2013-10-31 23:17:34', ''),
(17, 18, 4592, '2013-10-31 23:17:37', ''),
(18, 18, 4166, '2013-11-03 17:13:19', 'This place is awesome'),
(19, 18, 4166, '2013-11-03 17:13:34', 'Try their chicken wings'),
(20, 18, 4166, '2013-11-03 17:13:52', 'Pints for sleeve price gamedays'),
(21, 17, 4666, '2013-11-03 17:27:41', 'Awesome Mango BBQ Wings!! Must try.'),
(22, 18, 4166, '2013-11-04 06:37:10', 'vxcvdsfdfds'),
(23, 18, 4166, '2013-11-04 06:37:11', 'vxcvdsfdfdsfsdfsd'),
(24, 18, 4166, '2013-11-04 07:13:28', 'zfsdfdsfds'),
(25, 22, 4486, '2013-11-07 22:51:50', 'This place is awesome!'),
(26, 22, 4362, '2013-11-08 04:50:47', 'Test'),
(27, 22, 4367, '2013-11-08 05:48:59', 'Test'),
(28, 18, 4166, '2013-11-08 06:22:28', 'I''ve been in line for 30 minutes.'),
(29, 18, 4166, '2013-11-08 06:22:37', 'This is taking forever!'),
(30, 18, 4166, '2013-11-08 06:24:25', 'This place is bumpin'''),
(31, 22, 4486, '2013-11-09 00:49:00', 'I''ve been in line for 15 minutes.'),
(32, 22, 4486, '2013-11-09 00:49:01', 'I''ve been in line for 15 minutes.'),
(33, 25, 4147, '2013-11-18 18:37:18', 'This place is bumpin'''),
(34, 25, 4147, '2013-11-18 18:37:20', 'This place is bumpin'''),
(35, 25, 4147, '2013-11-20 01:48:39', 'This place is so sick!'),
(36, 25, 4564, '2013-11-20 05:49:12', 'I''ve been in line for 15 minutes.'),
(37, 25, 4564, '2013-11-20 05:49:16', 'This place is bumpin'''),
(38, 24, 4166, '2013-11-20 06:12:55', 'This place is bumpin'''),
(39, 24, 4374, '2013-11-20 06:17:09', 'I''ve been in line for 30 minutes.'),
(40, 24, 4374, '2013-11-20 06:17:12', 'This is taking forever!'),
(41, 22, 4355, '2013-12-11 03:28:36', 'This is taking forever!'),
(42, 22, 4355, '2013-12-11 03:28:45', 'I''ve been in line for 30 minutes.'),
(43, 0, 4666, '2013-12-13 03:48:26', 'This place is bumpin\\'''),
(44, 0, 4666, '2013-12-13 03:48:30', 'This place is bumpin\\''');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE IF NOT EXISTS `favourites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `venueid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`,`venueid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `userid`, `venueid`) VALUES
(45, 25, 4142),
(47, 25, 4147),
(48, 25, 4486);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `venueid` int(11) NOT NULL,
  `imagepath` varchar(100) NOT NULL,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=806 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `uid`, `venueid`, `imagepath`, `uploaded`, `flag`) VALUES
(801, 0, 4166, 'http://api.youqueue.ca/images/90551416c3aeb6664fef4f5ff892acb4.jpg', '2014-02-16 07:31:14', 0),
(802, 0, 4166, 'http://api.youqueue.ca/images/d1c6bdc3d919cecb6febcb5a04dc94c0.jpg', '2014-02-16 07:33:11', 0),
(803, 0, 4166, 'http://api.youqueue.ca/images/f064d29e0d18f0c74339c0141957bcf7.jpg', '2014-02-16 07:33:25', 0),
(804, 0, 4142, 'http://api.youqueue.ca/images/5925f142f71de111c4282b9e8aa42497.jpg', '2014-02-16 07:57:29', 0),
(805, 0, 4147, 'http://api.youqueue.ca/images/10179bae58c567315bd8939f41e32963.jpg', '2014-02-16 23:17:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fbid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fbid` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'public/images/default-avatar.png',
  `age` tinyint(11) DEFAULT NULL,
  `gender` enum('male','female','undisclosed') DEFAULT 'undisclosed',
  `name` text,
  `points` int(11) NOT NULL DEFAULT '0',
  `anonymize` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fbid` (`fbid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fbid`, `email`, `password`, `image`, `age`, `gender`, `name`, `points`, `anonymize`) VALUES
(2, 513892508, NULL, '', NULL, 0, 'male', NULL, 4300, 0),
(3, 507847654, NULL, '', NULL, 0, 'male', NULL, 2400, 0),
(4, 516990041, NULL, '', NULL, 0, 'male', NULL, 2450, 0),
(11, NULL, 'JonathanClark21@gmail.com', '$2y$10$FFWKbyA7qGByWCylVLpGYuMbJFi8uxj.F33jrWQMVUREroAskfcau', NULL, 0, 'male', 'test', 0, 1),
(12, NULL, 'JonathanClark1@gmail.com', '$2y$10$nAGaPq2ipIMY17uNkGNOoORAS2n.CxsfX/KFlYpyHTmQeCnO8QCqm', NULL, 22, 'male', 'jon', 0, 1),
(15, NULL, 'test@gmail.com', '$2y$10$yaNuUNyJFl4hqMT3JQODBOV7DAcM/DdD.q//vzrM.SKJvPTthGeJK', 'public/images/gravatar.jpeg', 22, 'male', 'jon', 13652, 0),
(16, NULL, 'JonathanClarkTest@gmail.com', '$2y$10$Ndw96ep.QJbuzyDHT5JGdOyLAc/Or53JnNnelyh7jczs7ErP/LIQq', NULL, 22, 'male', 'Jon', 0, 1),
(17, NULL, 'stephenrichter15@gmail.com', '$2y$10$kHcIk/wBrQid6MG3vpfNhOv2wgH4sDMYI0qiY.Oo19PtPjpDWHROi', 'public/images/default-avatar.png', 21, 'male', 'Stephen', 375, 0),
(18, NULL, 'JonathanClark11@gmail.com', '$2y$10$6jAxwBWUg27dFKlqe.5pTusppnuhsDF3ScuAPVqzFP4rlHcVyMG9a', 'public/images/gravatar.jpeg', 22, 'male', 'Jonathan Clark', 4075, 0),
(19, NULL, 'blake.adam11@gmail.com', '$2y$10$cIPW20.O61896VS6dglO8ORDKDy/aDUKCY4bB8TZTPRRbwlDrsjay', 'public/images/default-avatar.png', 23, 'male', 'Blake Adam', 0, 0),
(20, NULL, 'grahamkirkrogers@gmail.com', '$2y$10$3/qgLIotkIr2GhPpZCDGYu4sjnpZb7IjTZEKZkD7MUJONko0P24Xe', 'public/images/default-avatar.png', 24, 'male', 'Graham Rogers', 2325, 0),
(21, NULL, 'graham_hi5@hotmail.com', '$2y$10$ZWMqcw54YY9oBkf2MoVvT.lEPbAqZSiifd/IQsyTnksq16kxAm056', 'public/images/default-avatar.png', 20, 'male', 'Carlton Banks', 550, 0),
(22, NULL, 'test@hotmail.com', '$2y$10$Xr3K9YL/EddxiWrUvq2wluWyE/KGV4oxfoQOyEyjRid1HaNHNxWja', 'public/images/default-avatar.png', 23, 'male', 'Blake', 175, 0),
(24, 547945067, '', NULL, 'public/images/default-avatar.png', NULL, 'male', 'JonathanLClark', 100, 0),
(25, NULL, 'asdf@hotmail.com', '$2y$10$QS8rmwPNt7CwroC0PuX6KujfIrP2Ao06ZyKQbOg9Ez1KNwcYj6B5G', 'public/images/default-avatar.png', 54, 'male', 'test', 125, 0),
(26, NULL, 'qwer@hotmail.com', '$2y$10$aCGBJBei22N2UqYOdakyz.R5XjGJlCkiCUV690pXM65t4x66h/nDy', 'public/images/default-avatar.png', 21, 'male', 'qwer', 0, 0),
(27, NULL, 'RJClark89@Gmail.com', '$2y$10$i/m63aaOEbmmWx0vZMvdCuFPy1m1NUeK97nJ5SeOwR1j8zMCasWWK', 'public/images/default-avatar.png', 24, 'male', 'RJC89', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE IF NOT EXISTS `venues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cover` float DEFAULT NULL,
  `event` tinyint(4) DEFAULT NULL,
  `type` enum('club','pub','restaurant') NOT NULL DEFAULT 'pub',
  `image` text,
  `image_mobile` text,
  `logo` text,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `lat` double NOT NULL DEFAULT '0',
  `lng` double NOT NULL DEFAULT '0',
  `website` text,
  `twitter` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4685 ;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `enabled`, `lastUpdated`, `cover`, `event`, `type`, `image`, `image_mobile`, `logo`, `phone`, `address`, `lat`, `lng`, `website`, `twitter`, `facebook`, `city`) VALUES
(4129, 'Shine Nightclub', 0, '2014-02-16 07:35:14', 10, NULL, 'club', NULL, NULL, 'public/images/bars/4129/logo.png', '(604) 408-4321', '364 Water Street', 49.2845115661621, -123.110305786133, 'http://www.facebook.com/shinenightclub', 'shinenightclub', '', 'Vancouver'),
(4130, 'Library Square Public House', 1, '2014-02-16 07:35:26', 10, NULL, 'club', 'public/images/bars/4130/backdrop.jpg', 'public/images/bars/4130/backdrop-mobile.jpg', 'public/images/bars/4130/logo.png', '(604) 633-9644', '300 W Georgia St.', 49.2799523773773, -123.114495009184, 'http://donnellygroup.ca/locations/pubs/library-square/', 'librarysq', '', 'Vancouver'),
(4131, 'The Cambie', 1, '2014-02-16 07:35:39', 10, NULL, 'pub', NULL, NULL, 'public/images/bars/4131/logo.jpg', '(604) 684-6466', '300 Cambie St.', 49.2832554831803, -123.109069406986, 'http://www.thecambie.com', 'cambiegastown', '', 'Vancouver'),
(4132, 'Pourhouse', 0, '2014-02-16 07:35:14', 10, NULL, 'pub', 'public/images/bars/4132/backdrop.jpg', 'public/images/bars/4132/backdrop-mobile.jpg', 'public/images/bars/4132/logo.png', '(604) 568-7022', '162 Water St.', 49.2842102050781, -123.108543395996, 'http://www.pourhousevancouver.com', 'pourhouse_van', '', 'Vancouver'),
(4133, 'The Lamplighter Public House', 1, '2014-02-16 07:35:31', 10, NULL, 'club', 'public/images/bars/4133/backdrop.jpg', 'public/images/bars/4133/backdrop-mobile.jpg', 'public/images/bars/4133/logo.png', '(604) 687-4944', '92 Water St', 49.2837444965967, -123.106143385172, '', 'lamplighter_pub', '', 'Vancouver'),
(4134, 'AuBAR Nightclub', 0, '2014-02-16 07:35:14', 10, NULL, 'club', NULL, NULL, 'public/images/bars/4134/logo.jpg', '(604) 648-2227', '674 Seymour St.', 49.282299041748, -123.116653442383, '', 'aubarnightclub', '', 'Vancouver'),
(4135, 'The Black Frog', 0, '2014-02-16 07:35:14', 0, NULL, 'pub', 'public/images/bars/4135/backdrop.jpg', 'public/images/bars/4135/backdrop-mobile.jpg', 'public/images/bars/4135/logo.png', '(604) 602-0527', '108 Cambie St.', 49.2845840454102, -123.108596801758, '', '', '', 'Vancouver'),
(4136, 'Chill Winston', 0, '2014-02-16 07:35:14', 0, NULL, 'pub', 'public/images/bars/4136/backdrop.jpg', 'public/images/bars/4136/backdrop-mobile.jpg', 'public/images/bars/4136/logo.png', '(604) 288-9575', '3 Alexander St.', 49.283539824396, -123.103983253241, 'http://www.chillwinston.com/chillwinston/home.html', '', '146389218754008', 'Vancouver'),
(4137, 'The Revel Room', 0, '2014-02-16 07:35:14', 5, NULL, 'pub', 'public/images/bars/4137/backdrop.jpg', 'public/images/bars/4137/backdrop-mobile.jpg', 'public/images/bars/4137/logo.png', '(604) 687-4088', '238 Abbott St', 49.2831077575684, -123.106689453125, '', '', '', 'Vancouver'),
(4138, 'YEW seafood + bar', 0, '2014-02-16 07:35:14', 0, 0, 'pub', 'public/images/bars/4138/backdrop.jpg', 'public/images/bars/4138/backdrop-mobile.jpg', 'public/images/bars/4138/logo.png', '(604) 692-4939', '791 West Georgia St.', 49.283489073205, -123.118116378784, 'http://www.yewseafood.com', 'fsvancouver', '', 'Vancouver'),
(4139, 'Subeez Cafe Restaurant Bar', 0, '2014-02-16 07:35:14', 0, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4139/logo.jpg', '(604) 687-6107', '891 Homer St.', 49.2786407470703, -123.118545532227, 'http://www.subeez.com', 'subeezcrb', '', 'Vancouver'),
(4140, 'Guilt & Co', 0, '2014-02-16 07:35:14', 0, NULL, 'pub', 'public/images/bars/4140/backdrop.jpg', 'public/images/bars/4140/backdrop-mobile.jpg', 'public/images/bars/4140/logo.png', '(604) 288-1704', '1 Alexander St.', 49.2834892272949, -123.104225158691, 'http://guiltandcompany.com', '', '', 'Vancouver'),
(4141, 'The Famous Warehouse', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 677-8080', '989 Granville St.', 49.2794799804688, -123.122718811035, 'http://thefamouswarehouse.com', '', '', 'Vancouver'),
(4142, 'Tap & Barrel', 1, '2014-02-16 07:35:46', 0, NULL, 'pub', 'public/images/bars/4142/backdrop.jpg', 'public/images/bars/4142/backdrop-mobile.jpg', 'public/images/bars/4142/logo.jpeg', '(604) 685-2223', '1 Athletes Way', 49.2716417387181, -123.106098413467, 'http://www.tapandbarrel.com', 'tapandbarrel', '', 'Vancouver'),
(4143, 'The Keg Steakhouse & Bar', 0, '2014-02-16 07:35:14', 0, NULL, 'restaurant', 'public/images/bars/4143/backdrop.jpg', 'public/images/bars/4143/backdrop-mobile.jpg', 'public/images/bars/4143/logo.png', '(604) 633-2534', '1011 Mainland St.', 49.2765850836741, -123.119296610355, 'http://www.kegsteakhouse.com/en/locations/bc/downtown-vancouver/yaletown-keg', 'thekeg', '', 'Vancouver'),
(4145, 'Six Acres', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', 'public/images/bars/4145/backdrop.jpg', 'public/images/bars/4145/backdrop-mobile.jpg', 'public/images/bars/4145/logo.png', '(604) 488-0110', '203 Carrall St.', 49.2833633422851, -123.104248046875, 'http://www.sixacres.ca', 'sixacres', '', 'Vancouver'),
(4146, 'Coast Restaurant', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', 'public/images/bars/4146/backdrop.jpg', 'public/images/bars/4146/backdrop-mobile.jpg', 'public/images/bars/4146/logo.png', '(604) 685-5010', '1054 Alberni St.', 49.2847722136147, -123.123274177313, 'http://www.glowbalgroup.com/coast/', 'glowbal_group', '', 'Vancouver'),
(4147, 'The Roxy', 1, '2014-02-16 07:35:51', 10, NULL, 'club', 'public/images/bars/4147/backdrop.jpg', 'public/images/bars/4147/backdrop-mobile.jpg', 'public/images/bars/4147/logo.png', '(604) 331-7999', '932 Granville St.', 49.2798089898423, -123.121995866299, 'http://www.roxyvan.com', 'roxyvancouver', '', 'Vancouver'),
(4148, 'Earls', 0, '2014-02-16 07:35:14', 0, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4148/logo.jpeg', '(604) 682-6700', '905 Hornby St.', 49.2817840576172, -123.123413085938, 'http://www.earls.ca', 'earlshornby', '', 'Vancouver'),
(4149, 'Cinema Public House', 1, '2014-02-16 07:35:54', 10, NULL, 'pub', 'public/images/bars/4149/backdrop.jpg', 'public/images/bars/4149/backdrop-mobile.jpg', 'public/images/bars/4149/logo.jpg', '(604) 694-0202', '901 Granville St.', 49.2802503047689, -123.121674627066, 'http://donnellygroup.ca/locations/pubs/cinema/', 'cinemapub', '', 'Vancouver'),
(4150, 'The Winking Judge Pub', 0, '2014-02-16 07:35:14', 0, NULL, 'pub', NULL, NULL, NULL, '(604) 684-9465', '888 Burrard St.', 49.2823182172701, -123.124188661575, '', '', '', 'Vancouver'),
(4151, 'The Fountainhead Pub', 0, '2014-02-16 07:35:14', 0, NULL, 'pub', 'public/images/bars/4151/backdrop.jpg', 'public/images/bars/4151/backdrop-mobile.jpg', NULL, '(604) 687-2222', '1025 Davie St', 49.2796622070356, -123.129825383425, 'http://www.thefountainheadpub.com', '', '', 'Vancouver'),
(4152, 'Gyu-Kaku Vancouver', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4152/logo.png', '(604) 558-3885', 'G3-888 Nelson St.', 49.2800788879394, -123.125137329102, 'http://www.gyu-kaku.com', 'gyukakuvc', '227775707234919', 'Vancouver'),
(4153, 'Earls', 0, '2014-02-16 07:35:14', 0, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4153/logo.jpeg', '(604) 688-4990', '1095 Mainland St.', 49.275634765625, -123.120460510254, 'http://www.earls.ca', 'earlsrestaurant', '', 'Vancouver'),
(4154, 'Cactus Club Cafe', 0, '2014-02-16 07:35:14', 0, NULL, 'pub', 'public/images/bars/4154/backdrop.jpg', 'public/images/bars/4154/backdrop-mobile.jpg', 'public/images/bars/4154/logo.png', '(604) 687-3278', '1136 Robson St', 49.2852592468262, -123.125633239746, 'http://www.cactusclubcafe.com', 'cactusclubcafe', '', 'Vancouver'),
(4155, 'Samesun Backpackers Hostel', 0, '2014-02-16 07:35:14', 0, NULL, 'pub', NULL, NULL, 'public/images/bars/4155/logo.jpg', '(604) 682-8226', '1018 Granville Street', 49.2788619995117, -123.123168945312, 'http://samesun.com', 'samesunnation', '', 'Vancouver'),
(4156, 'Milestones Grill & Bar', 0, '2014-02-16 07:35:14', 0, NULL, 'restaurant', NULL, NULL, NULL, '(604) 684-9111', '1109 Hamilton St', 49.2759221305597, -123.121342808008, 'http://www.milestonesrestaurants.com', '', '', 'Vancouver'),
(4157, 'Tap & Barrel', 0, '2013-09-02 16:27:38', 0, NULL, 'pub', NULL, NULL, NULL, '(604) 235-9827', '1055 Canada Pl.', 49.2897987365723, -123.11710357666, '', '', '', 'Vancouver'),
(4158, 'Loose Moose', 0, '2014-02-16 07:35:14', 0, NULL, 'pub', NULL, NULL, NULL, '(604) 633-1002', '724 Nelson Ave', 49.2794532775879, -123.123596191406, '', '', '', 'Vancouver'),
(4159, 'PINK Elephant THAI', 0, '2014-02-16 07:35:14', 0, NULL, 'restaurant', 'public/images/bars/4159/backdrop.jpg', 'public/images/bars/4159/backdrop-mobile.jpg', 'public/images/bars/4159/logo.jpg', '(604) 646-8899', '1152 Alberni', 49.2860457941502, -123.125115931034, 'http://www.pinkelephantthai.com', 'pinkethai', '', 'Vancouver'),
(4160, 'Pumpjack Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 685-3417', '1167 Davie Street', 49.2815017700195, -123.132713317871, 'http://www.pumpjackpub.com', '', '', 'Vancouver'),
(4161, 'The Factory', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 669-9463', '1017 Granville St.', 49.2791404724121, -123.123382568359, '', '', '', 'Vancouver'),
(4162, 'The New Oxford', 1, '2014-02-16 07:36:09', NULL, NULL, 'club', 'public/images/bars/4162/backdrop.jpg', 'public/images/bars/4162/backdrop-mobile.jpg', 'public/images/bars/4162/logo.jpeg', '(604) 899-3229', '1144 Homer St.', 49.2757352802622, -123.122251957655, 'http://donnellygroup.ca/locations/pubs/new-oxford/', 'newoxfordvan', '', 'Vancouver'),
(4163, 'The Morrissey', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', 'public/images/bars/4163/backdrop.jpg', 'public/images/bars/4163/backdrop-mobile.jpg', 'public/images/bars/4163/logo.jpeg', '(604) 682-0909', '1227 Granville St.', 49.276912689209, -123.126853942871, 'http://www.themorrisseypub.com', 'themorrisseypub', '', 'Vancouver'),
(4164, 'Milestones Grill & Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', NULL, NULL, NULL, '(604) 662-3431', '1210 Denman St', 49.2868954814588, -123.141929745674, 'http://www.milestonesrestaurants.com', '', '', 'Vancouver'),
(4165, 'The Distillery Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 669-2266', '1131 Mainland St', 49.2752456665039, -123.121253967285, '', '', '', 'Vancouver'),
(4166, 'Rogue Kitchen & Wetbar', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4166/logo.jpg', '', '602 West Broadway', 49.2632326902872, -123.117583841085, 'http://www.roguewetbar.com', 'roguewetbar', '403905432992059', 'Vancouver'),
(4167, 'The Bimini Public House', 1, '2014-02-16 07:36:14', NULL, NULL, 'pub', 'public/images/bars/4167/backdrop.jpg', 'public/images/bars/4167/backdrop-mobile.jpg', NULL, '(604) 733-7116', '2010 W 4th Ave', 49.2679885162099, -123.151156425476, 'http://donnellygroup.ca/locations/pubs/the-bimini/', '', '', 'Vancouver'),
(4168, 'The Three Brits Public House', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', 'public/images/bars/4168/backdrop.jpg', 'public/images/bars/4168/backdrop-mobile.jpg', 'public/images/bars/4168/logo.jpeg', '(604) 801-6681', '1780 Davie St.', 49.2871360778809, -123.141944885254, 'http://donnellygroup.ca/locations/pubs/three-brits/', 'thethreebrits', '134391496600528', 'Vancouver'),
(4169, 'LOCAL Public Eatery Kitsilano', 1, '2014-02-16 07:36:18', NULL, NULL, 'pub', 'public/images/bars/4169/backdrop.jpg', 'public/images/bars/4169/backdrop-mobile.jpg', 'public/images/bars/4169/logo.jpeg', '(604) 734-3589', '2210 Cornwall Ave.', 49.2723556891126, -123.155161470175, 'https://www.facebook.com/pages/local-public-eatery-kitsilano/157379987623411?ref=hl', 'localkits', '157379987623411', 'Vancouver'),
(4170, 'The Charlatan', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 253-2777', '1447 Commercial Dr.', 49.2715225219727, -123.069770812988, '', '', '', 'Vancouver'),
(4171, 'The Flying Beaver Bar & Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 273-0278', '4760 Inglis Drive', 49.1773147583008, -123.168342590332, '', '', '', 'Richmond'),
(4173, 'Zakkushi Charcoal Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', 'public/images/bars/4173/backdrop.jpg', 'public/images/bars/4173/backdrop-mobile.jpg', NULL, '(604) 874-9455', '4075 Main St.', 49.2490997314453, -123.101448059082, 'http://www.zakkushi.com', '', '', 'Vancouver'),
(4174, 'Central City Brew Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4174/logo.png', '(604) 582-6620', '13450 102 Ave.', 49.1879577636719, -122.84912109375, '', 'centralcitybrew', '', 'Surrey'),
(4175, 'Hops: A Northwest Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 522-0011', '48 8th Street', 49.2016983032227, -122.912422180176, '', '', '', 'New Westminster'),
(4176, 'Steamworks Brewing Company', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', 'public/images/bars/4176/backdrop.jpg', 'public/images/bars/4176/backdrop-mobile.jpg', 'public/images/bars/4176/logo.jpg', '(604) 689-2739', '375 Water St', 49.2851295471191, -123.111152648926, 'http://steamworks.com', 'steamworkspub', '', 'Vancouver'),
(4179, 'The Pint Public House', 1, '2014-02-16 07:36:24', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4179/logo.jpeg', '(604) 684-0258', '455 Abbott St.', 49.281273440694, -123.107652425766, 'http://www.thepint.ca', 'pintvancouver', '193644887376716', 'Vancouver'),
(4188, 'Commodore Ballroom', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4188/logo.jpg', '(604) 739-4550', '868 Granville St', 49.2806777954102, -123.120590209961, 'http://commodoreballroom.ca', 'commodorevcr', '48552623197', 'Vancouver'),
(4189, 'Black + Blue', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4189/logo.jpg', '(604) 637-0777', '1032 Alberni St.', 49.2841987609863, -123.123329162598, 'http://www.glowbalgroup.com/blackblue/', 'glowbal_group', '', 'Vancouver'),
(4191, 'JOEY Burrard', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', 'public/images/bars/4191/backdrop.jpg', 'public/images/bars/4191/backdrop-mobile.jpg', 'public/images/bars/4191/logo.jpeg', '(604) 683-5639', '820 Burrard St.', 49.2827796936035, -123.123153686523, 'http://www.joeyrestaurants.com', 'joeyrestaurants', '', 'Vancouver'),
(4192, 'Mahony & Sons Burrard Landing', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', 'public/images/bars/4192/backdrop.jpg', 'public/images/bars/4192/backdrop-mobile.jpg', 'public/images/bars/4192/logo.jpeg', '(604) 647-7513', '1055 Canada Place, Unit #36', 49.2893370179597, -123.114326238632, 'http://mahonyandsons.com', 'mahonyandsons', '', 'Vancouver'),
(4193, 'Alibi Room', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', 'public/images/bars/4193/backdrop.jpg', 'public/images/bars/4193/backdrop-mobile.jpg', 'public/images/bars/4193/logo.jpg', '(604) 623-3383', '157 Alexander St.', 49.2842063903809, -123.10026550293, 'http://alibi.ca', 'alibiroom', '', 'Vancouver'),
(4194, 'Italian Kitchen', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', 'public/images/bars/4194/backdrop.jpg', 'public/images/bars/4194/backdrop-mobile.jpg', 'public/images/bars/4189/logo.jpg', '(604) 687-2858', '1037 Alberni St.', 49.2844543457031, -123.122108459473, 'http://www.theitaliankitchen.ca', 'glowbal_group', '', 'Vancouver'),
(4200, 'Yaletown Brewing Company', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', 'public/images/bars/4200/backdrop.jpg', 'public/images/bars/4200/backdrop-mobile.jpg', 'public/images/bars/4200/logo.jpg', '(604) 681-2739', '1116 Mainland St.', 49.2754891407373, -123.120892375708, '', 'ybc_brewing', '', 'Vancouver'),
(4201, 'The Mill Marine Bistro and Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4201/logo.png', '(604) 687-6455', '1199 West Cordova Street', 49.2898941040039, -123.121292114258, 'http://www.millbistro.ca', 'millbistro', '', 'Vancouver'),
(4203, 'Celebrities Nightclub', 1, '2014-02-16 07:36:33', NULL, NULL, 'club', 'public/images/bars/4203/backdrop.jpg', 'public/images/bars/4203/backdrop-mobile.jpg', 'public/images/bars/4203/logo.jpeg', '(604) 681-6180', '1022 Davie St.', 49.2794304228115, -123.129937559366, 'http://www.celebritiesnightclub.com', 'celebrities_van', '', 'Vancouver'),
(4206, 'Numbers Cabaret Club', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, NULL, '(604) 685-4077', '1042 Davie St.', 49.2796821594238, -123.130378723145, '', '', '', 'Vancouver'),
(4208, 'Junction Public House', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 669-2013', '1138 Davie St.', 49.2808380126953, -123.132164001465, 'http://www.junctionpub.com', '', '', 'Vancouver'),
(4209, 'Oasis Ultra Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 685-1724', '1240 Thurlow St', 49.2801856994629, -123.131217956543, '', '', '', 'Vancouver'),
(4211, 'Score On Davie', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 632-1646', '1262 Davie St.', 49.2823600769043, -123.134506225586, 'http://www.scoreondavie.com', 'scoreondavie', '', 'Vancouver'),
(4212, '1181 Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 687-3991', '1181 Davie St.', 49.2816132001668, -123.132914692163, 'http://www.1181.ca', '1181lounge', '', 'Vancouver'),
(4213, 'The Capital', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '1178 Davie Street', 49.2813377380371, -123.132766723633, '', '', '', 'Vancouver'),
(4214, 'Cactus Club Cafe', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4154/logo.png', '(604) 681-2582', '1790 Beach Ave', 49.2867012023926, -123.142776489258, 'http://www.cactusclubcafe.com', 'cactusclubcafe', '', 'Vancouver'),
(4216, 'The Sandbar Seafood Restaurant', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4216/logo.jpg', '(604) 669-9033', '1536 Johnston St.', 49.2717815848996, -123.13463228941, 'http://www.vancouverdine.com/sandbar', 'the_sandbar', '', 'Vancouver'),
(4217, 'Storm Crow Tavern', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4217/logo.png', '(778) 707-0920', '1305 Commercial Dr.', 49.272705078125, -123.069686889648, 'http://www.stormcrowtavern.com', 'stormcrowtavern', '356143674438052', 'Vancouver'),
(4218, 'The Eatery', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 738-5298', '3431 West Broadway', 49.2644257949548, -123.180626809597, 'http://www.theeatery.ca', '', '', 'Vancouver'),
(4221, 'BigRidge Brewing Co.', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 574-2739', '5580 152 St', 49.104133605957, -122.800758361816, '', '', '', 'Surrey'),
(4222, 'The Terminal Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4222/logo.png', '(604) 522-6545', '115 12 Street', 49.2008743286133, -122.921836853027, 'http://www.theterminalpub.com', 'theterminalpub', '', 'New Westminster'),
(4223, 'Clough Club', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4223/logo.jpg', '(604) 558-1581', '212 Abbott St.', 49.2836456298828, -123.106452941895, 'http://donnellygroup.ca/locations/cocktail-taverns/clough-club/', 'cloughclub', '', 'Vancouver'),
(4224, 'The Vancouver Club', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4224/logo.jpg', '(604) 685-9321', '915 W Hastings St', 49.2867622375488, -123.115760803223, 'http://vancouverclub.ca', 'vancouverclub', '', 'Vancouver'),
(4232, 'Granville Room', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4232/logo.jpg', '(604) 633-0056', '957 Granville St', 49.2797821044429, -123.122486144304, 'http://donnellygroup.ca/locations/cocktail-taverns/granville-room/', 'granvilleroom', '', 'Vancouver'),
(4234, '1927 Lobby Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4234/logo.jpeg', '(604) 682-5566', '801 W Georgia St', 49.2832260131836, -123.118766784668, 'http://www.rosewoodhotels.com/en/hotelgeorgia/dining/restaurants/', 'rwhotelgeorgia', '', 'Vancouver'),
(4236, 'Society Dining Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4189/logo.jpg', '(604) 629-8800', '1257 Hamilton St.', 49.2743988037109, -123.123733520508, 'http://www.society-grg.ca', 'glowbal_group', '', 'Vancouver'),
(4237, 'Killjoy', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4237/logo.jpeg', '', '1120 Hamilton St.', 49.2755088806152, -123.121490478516, 'http://donnellygroup.ca/locations/cocktail-taverns/killjoy/', 'killjoybar', '', 'Vancouver'),
(4239, 'George Ultra Lounge & Wine Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4239/logo.jpg', '(604) 682-5555', '1137 Hamilton St.', 49.2755508422852, -123.12181854248, 'http://www.georgelounge.com', 'georgelounge', '', 'Vancouver'),
(4241, 'XiShi', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4241/logo.jpg', '(604) 689-1120', '1128 W. Georgia St.', 49.2857818603516, -123.123916625977, 'http://www.shangri-la.com/en/property/vancouver/shangrila/dining/restaurant/xishilounge', 'xishi_van', '', 'Vancouver'),
(4242, 'The Marquis', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '2666 Granville St.', 49.2620658874512, -123.138618469238, '', '', '', 'Vancouver'),
(4245, 'The Shameful Tiki Room', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '', 49.2461395263672, -123.101051330566, '', '', '', ''),
(4249, 'The Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4249/logo.png', '(604) 685-3189', '965 Granville St', 49.2795033618438, -123.122442424297, '', 'luxrestaurant', '', 'Vancouver'),
(4251, 'Unwined', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '', 49.278263092041, -123.126541137695, '', '', '', ''),
(4255, 'Earls Restaurant', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4255/logo.jpeg', '(604) 941-1733', '2850 Shaughnessy St', 49.2661628723145, -122.777114868164, 'http://www.earls.ca‎', 'earlspoco', '143108572426720', 'Port Coquitlam'),
(4258, 'Curve Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '', 49.1966896057129, -123.127883911133, '', '', '', ''),
(4260, 'Orrange Kitchen + Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4260/logo.jpeg', '(604) 941-9661', '111-1125 Nicola Ave', 49.2578887939453, -122.745460510254, 'http://www.orrange.com', 'orrangekitchen', '', 'Port Coquitlam'),
(4261, 'Big T Taphouse & Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '', 49.1155395507812, -122.889633178711, '', '', '', 'Surrey'),
(4269, 'Pub 340', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4269/logo.jpeg', '(604) 602-0644', '340 Cambie St', 49.283088684082, -123.109024047852, 'http://pub340.tumblr.com', 'thepub340', '', 'Vancouver'),
(4272, 'Brickhouse Late Nite Bistro', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 689-8645', '730 Main Street', 49.2778511047363, -123.099647521973, '', '', '', 'Vancouver'),
(4291, 'Squarerigger Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '1406 Marine Dr.', 49.3283729553223, -123.155006408691, '', '', '', 'West Vancouver'),
(4317, 'F212', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 689-9719', '1048 Davie St', 49.2796630859375, -123.130928039551, 'http://f212.com', '', '', 'Vancouver'),
(4355, 'Tableau Bar Bistro', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4355/logo.jpg', '(604) 669-5060', '1181 Melville St.', 49.2875061035156, -123.123756408691, 'http://tableaubarbistro.com', 'tableaubistro', '', 'Vancouver'),
(4356, 'Gerard Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', 'Sutton Place Hotel', 49.2825508117676, -123.123870849609, '', '', '', 'Vancouver'),
(4357, '900 West Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4357/logo.jpeg', '(604) 684-3131', '900 W. Georgia St.', 49.2838897705078, -123.120796203613, 'http://www.fairmont.com/hotelvancouver/guestservices/restaurants/900westlounge.htm', 'fairmontvan', '', 'Vancouver'),
(4359, 'Opus Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4359/logo.jpg', '(604) 642-0557', '350 Davie St.', 49.2747268676758, -123.122512817383, '', 'opusbar', '', 'Vancouver'),
(4362, 'Shangri-La Hotel Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4362/logo.jpeg', '', '1128 West Georgia St.', 49.285514831543, -123.126098632812, 'http://tinyurl.com/3qqvn3r', 'shangrilahotels', '', 'Vancouver'),
(4367, 'Gallery Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 683-1234', '655 Burrard Street', 49.2849502563476, -123.120140075684, '', '', '', 'Vancouver'),
(4374, 'Stages Bistro & Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '711 West Broadway', 49.2633666992188, -123.120109558105, '', '', '', 'Vancouver'),
(4377, 'Jetside Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4377/logo.jpg', '(604) 207-5200', '3111 Grant McConachie Way', 49.1945915222168, -123.175910949707, 'http://www.fairmont.com/vancouverairport/GuestServices/Restaurants/JetsideBar.htm', 'fairmontyvr', '', 'Richmond'),
(4379, 'The Burrard Public House', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 939-7811', '2414 St. Johns St', 49.2767105102539, -122.857643127441, '', '', '', 'Port Moody'),
(4390, 'The Metropole Pub', 1, '2014-02-16 07:37:04', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 915-5336', '320 Abbott St.', 49.2823905944824, -123.107086181641, '', '', '', 'Vancouver'),
(4391, 'Two Parrots Perch & Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 685-9657', '1202 Granville St.', 49.2770347595215, -123.126243591309, '', '', '', 'Vancouver'),
(4394, 'Checkers', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '1755 Davie st', 49.2869453430176, -123.141067504883, '', '', '', 'Vancouver'),
(4397, 'Simply Delicious', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '4316 Main St', 49.2465744018555, -123.10099029541, '', '', '', 'Vancouver'),
(4432, 'FIVESIXTY', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 678-6322', '560 Seymour St.', 49.2832832336426, -123.11474609375, 'http://www.fivesixty.ca', '', '', 'Vancouver'),
(4434, 'Goldies Rustic Pizza', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4434/logo.jpg', '(604) 681-0650', '605 W Pender St', 49.284351348877, -123.114082336426, 'http://goldiespizza.com', 'goldiespizza', '', 'Vancouver'),
(4439, '131 Water Kitchen & Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4439/logo.jpg', '(604) 669-7219', 'Unit 127 -131 Water St.', 49.2840957641601, -123.107398986816, 'http://www.131water.com', '131water', '103335059751572', 'Vancouver'),
(4443, 'The Diamond', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 568-8272', '6 Powell St.', 49.2832984924316, -123.104232788086, '', '', '', 'Vancouver'),
(4446, 'Boneta Restaurant', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4446/logo.jpg', '(604) 684-1844', '12 Water St.', 49.2831916809082, -123.105087280273, 'http://www.boneta.ca', 'bonetavan', '', 'Vancouver'),
(4447, 'Keefer Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 688-1983', '135 Keefer Street', 49.2795219421387, -123.101455688477, '', '', '', 'Vancouver'),
(4451, 'Coast Coal Harbour Hotel', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4451/logo.jpeg', '(604) 697-0202', '1180 West Hastings Street', 49.2882537841797, -123.122398376465, 'http://www.coastcoalharbour.com', 'coasthotels', '', 'Vancouver'),
(4454, 'Glowbal Grill Steaks & Satay', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4189/logo.jpg', '(604) 602-0835', '1079 Mainland St.', 49.2758483886719, -123.120132446289, 'http://www.glowbalgrill.com', 'glowbal_group', '', 'Vancouver'),
(4459, 'Kibo Restaurant & Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 336-3268', '1261 Hamilton St', 49.2741470336914, -123.123603820801, '', 'twitter.com/kibo_yaletown', '', 'Vancouver'),
(4460, 'Lux Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4460/logo.png', '(604) 559-5533', '1180 Howe St', 49.2780876159668, -123.126373291016, 'https://www.facebook.com/HazePublicHouse', 'luxloungevan', '', 'Vancouver'),
(4461, 'Sip Resto Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4461/logo.jpg', '(604) 687-7474', '1117 Granville St', 49.2780609130859, -123.124839782715, 'http://www.siplounge.com', 'siploungevan', '', 'Vancouver'),
(4462, 'The Foundation', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 708-0881', '2301 Main St.', 49.2644348144531, -123.100883483887, '', '', '', 'Vancouver'),
(4463, 'Trattoria Italian Kitchen', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4189/logo.jpg', '(604) 732-1441', '1850 W 4th Ave', 49.2680435180664, -123.14656829834, 'http://www.trattoriakitchen.ca', 'glowbal_group', '', 'Vancouver'),
(4464, 'Cats Social House', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 647-2287', '1540 Old Bridge St.', 49.269718170166, -123.135757446289, '', '', '', 'Vancouver'),
(4465, 'The Cascade Room', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4465/logo.jpg', '(604) 709-8650', '2616 Main St', 49.2618255615234, -123.10083770752, 'http://thecascade.ca', 'thecascaderoom', '', 'Vancouver'),
(4466, 'Narrow Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4466/logo.jpg', '(778) 737-5206', '1898 Main St', 49.2683486938477, -123.100578308105, 'http://narrowlounge.com', 'narrowlounge', '', 'Vancouver'),
(4467, 'JOEY Broadway', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4191/logo.jpeg', '(604) 732-5639', '1424 W Broadway', 49.2634353637695, -123.136840820312, 'http://www.joeyrestaurants.com', 'joeyrestaurants', '', 'Vancouver'),
(4468, 'Bayside Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '1755 Davie St.', 49.2871360778809, -123.14168548584, '', '', '', 'Vancouver'),
(4469, 'Corduroy', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4469/logo.jpeg', '(604) 733-0162', '1943 Cornwall Ave', 49.2726135253906, -123.148773193359, 'http://www.corduroyrestaurant.com', 'corduroylounge', '', 'Vancouver'),
(4470, 'Hyde', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 709-6215', '2960 Main St.', 49.2586708068848, -123.101020812988, '', '', '', 'Vancouver'),
(4471, 'Cactus Club Cafe', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4154/logo.png', '(604) 733-0434', '1530 W Broadway', 49.263557434082, -123.139503479004, 'http://www.cactusclubcafe.com', 'cactusclubcafe', '', 'Vancouver'),
(4473, 'Libra Room', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4473/logo.jpg', '(604) 255-3787', '1608 Commercial Drive', 49.2702903747559, -123.069458007812, 'http://libraroom.com', 'libraroom', '', 'Vancouver'),
(4474, 'The Cellar Jazz Club', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4474/logo.jpeg', '(604) 738-1959', '3611 W Broadway', 49.2643814086914, -123.184188842773, '', 'cellarjazz', '', 'Vancouver'),
(4475, 'Chaise Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '4444 Main St.', 49.2451248168945, -123.101188659668, '', '', '', 'Vancouver'),
(4477, 'Blue Canoe Waterfront Restaurant', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4477/logo.png', '(604) 275-7811', '140 - 3866 Bayview St', 49.1236572265625, -123.18376159668, 'http://www.bluecanoerestaurant.com', 'bluecanoeresto', '', 'Richmond'),
(4478, 'Coppertank Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 731-6565', '3135 West Broadway', 49.2642936706543, -123.174842834473, '', '', '', 'Vancouver'),
(4479, 'Reflect Social Dining And lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 639-3756', '6083 McKay Avenue', 49.2287178039551, -123.004241943359, 'https://www.facebook.com/pages/Reflect-Social-Dining-Lounge/209073039149205', '', '', 'Burnaby'),
(4480, 'Drink Urban Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 525-4411', '609 Columbia St.', 49.2032012939453, -122.908172607422, '', '', '', 'New Westminster'),
(4486, 'Red Room Ultra Bar', 1, '2014-02-16 07:37:30', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 687-5007', '398 Richards St.', 49.2840957641601, -123.111503601074, '', '', '', 'Vancouver'),
(4488, 'The Bourbon', 1, '2014-02-16 07:37:26', NULL, NULL, 'club', NULL, NULL, 'public/images/bars/4488/logo.gif', '(604) 684-4214', '50 Cordova Street', 49.2827339172363, -123.105972290039, 'http://www.thebourboncountry.com', 'countrybourbon', '104259679626154', 'Vancouver'),
(4490, 'Gorgomish', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '698 Smithe St', 49.2802581787109, -123.121078491211, '', '', '', 'Vancouver'),
(4491, 'Pop Opera Nightclub', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, 'public/images/bars/4491/logo.', '(604) 683-0315', '686 West Hastings St.', 49.2849502563476, -123.113166809082, '', 'popopera', '', 'Vancouver'),
(4492, 'Caprice', 1, '2014-02-16 07:38:51', NULL, NULL, 'club', NULL, NULL, 'public/images/bars/4492/logo.jpeg', '(604) 685-3288', '967 Granville St', 49.279613494873, -123.12272644043, 'http://www.capricenightclub.com', 'thecaprice', '', 'Vancouver'),
(4495, 'Gossip Nightclub', 1, '2014-02-16 07:37:34', NULL, NULL, 'club', NULL, NULL, NULL, '(604) 669-8980', '750 Pacific Blvd', 49.2753219604492, -123.10969543457, '', '', '', 'Vancouver'),
(4496, 'Fortune Sound Club', 1, '2014-02-16 07:37:37', NULL, NULL, 'club', NULL, NULL, 'public/images/bars/4496/logo.jpg', '(604) 569-1758', '147 E Pender St.', 49.280517578125, -123.100692749023, 'http://www.fortunesoundclub.com', 'fortunesound', '', 'Vancouver'),
(4499, 'Brooklyn', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4499/logo.jpeg', '(604) 559-5180', '91 Powell Street', 49.2833976745606, -123.102676391602, '', 'brooklyngastown', '', 'Vancouver'),
(4500, 'BLVD22 Nightclub', 1, '2014-02-16 07:37:40', NULL, NULL, 'club', NULL, NULL, 'public/images/bars/4500/logo.jpg', '(866) 473-2125', 'B105A - 750 Pacific Blvd.', 49.2752227783203, -123.110046386719, 'http://www.blvd22.com', 'blvd22', '', 'Vancouver'),
(4501, 'The Cellar', 1, '2014-02-16 07:37:43', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 605-4340', '1006 Granville St.', 49.2790832519531, -123.122871398926, 'http://www.cellarvan.com', '', '', 'Vancouver'),
(4502, 'The Whiskey Bar', 1, '2014-02-16 07:37:46', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4502/logo.jpg', '(604) 558-1124', '303 Columbia St.', 49.2821846008301, -123.102493286133, 'http://www.whiskeydixbar.com', 'whiskeybarvan', '', 'Vancouver'),
(4504, 'Fanclub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 689-7720', '1050 Granville St', 49.2789878845215, -123.123985290527, 'http://www.vancouverfanclub.ca', '', '', 'Vancouver'),
(4505, 'L.E.D. Bar', 1, '2014-02-16 07:37:49', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 685-3288', '', 49.2796363830566, -123.122566223145, '', '', '', ''),
(4506, 'Joseph Richard', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, 'public/images/bars/4506/logo.jpg', '(604) 488-1333', '1082 Granville St', 49.2783546447754, -123.124290466309, 'http://www.josephrichard.ca', 'jrvancouver', '', 'Vancouver'),
(4507, 'Ginger 62', 1, '2014-02-16 07:37:52', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4507/logo.jpeg', '(604) 678-8991', '1219 Granville St.', 49.2770462036133, -123.126472473145, 'http://www.ginger62.com', 'ginger62', '', 'Vancouver'),
(4508, 'Forum Sports Bar', 1, '2014-02-16 07:37:55', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 605-1163', '1163 Granville St.', 49.2775535583496, -123.125534057617, 'http://www.forumsportsbar.com', '', '', 'Vancouver'),
(4509, 'Barcelona Ultra Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, 'public/images/bars/4509/logo.jpg', '(604) 488-9660', '1180 Granville St', 49.2773895263672, -123.125755310059, '', 'barcelonaclub', '', 'Vancouver'),
(4510, 'The Annex', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4510/logo.jpeg', '(604) 669-3266', '958 Granville St', 49.2795717486851, -123.122342675924, 'http://donnellygroup.ca', 'theannexyvr', '111677318884357', 'Vancouver'),
(4511, 'Bar None Nightclub', 1, '2014-02-16 07:37:59', NULL, NULL, 'club', NULL, NULL, 'public/images/bars/4511/logo.jpg', '(604) 689-7010', '1222 Hamilton St.', 49.2745323181152, -123.122978210449, 'http://donnellygroup.ca/locations/night-clubs/bar-none', 'barnoneclub', '', 'Vancouver'),
(4512, 'Queens Republic', 1, '2014-02-16 07:38:02', NULL, NULL, 'club', NULL, NULL, NULL, '', '', 49.279632497491, -123.122232556343, '', '', '', ''),
(4513, 'The Den @ Barclay', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '1348 Robson', 49.2875709533691, -123.129455566406, '', '', '', 'Vancouver'),
(4514, 'Atlantis nightclub', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, NULL, '', '1320 Richards St, Vancouver, BC V6B', 49.2755737304688, -123.124031066895, '', '', '', 'Vancouver'),
(4515, 'Status Nightclub', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, NULL, '', '', 49.2043266296387, -122.906692504883, '', '', '', ''),
(4516, 'Cactus Club Cafe', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4154/logo.png', '(604) 777-0440', '110-101 Schoolhouse  St', 49.2331733703613, -122.852233886719, 'http://www.cactusclubcafe.com', 'cactusclubcafe', '', 'Coquitlam'),
(4519, 'Roosters Country Cabaret', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 465-5552', '19040 Lougheed Hwy', 49.2323684692383, -122.693832397461, 'http://www.roosterscountry.com', '', '', 'Pitt Meadows'),
(4520, 'LaffLines Comedy Club', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4520/logo.jpg', '(604) 525-2262', '530 Columbia St', 49.2046813964844, -122.905723571777, '', 'lafflinescomedy', '', 'New Westminster'),
(4525, 'Mirage Nightclub', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, NULL, '(604) 583-8828', '15330 102A Avenue', 49.1885070800781, -122.797180175781, '', '', '', 'Surrey'),
(4526, 'TNB Night Club', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, NULL, '', '801 Brunette Ave', 49.2357749938965, -122.87525177002, '', '', '', 'Coquitlam'),
(4536, 'The Blarney Stone', 1, '2014-02-16 07:39:20', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 687-4322', '216 Carrall St.', 49.2827987670898, -123.104278564453, 'http://blarneystone.ca', '', '', 'Vancouver'),
(4537, 'The Portside Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4537/logo.jpeg', '(604) 559-6333', '7 Alexander St.', 49.283504486084, -123.104194641113, '', 'theportsidepub', '248935768572221', 'Vancouver'),
(4539, 'The Lennox Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4539/logo.jpg', '(604) 408-0881', '800 Granville St', 49.2811622619629, -123.119735717773, 'http://lennoxpub.com', 'thelennoxpub', '', 'Vancouver'),
(4541, 'The Irish Heather', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4541/logo.jpg', '(604) 688-9779', '212 Carrall St', 49.2829666137695, -123.10432434082, '', 'theirishheather', '', 'Vancouver'),
(4546, 'Ceilis Irish Pub and Restaurant', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 697-9199', '670 Smithe Street', 49.2806282043457, -123.121505737305, '', '', '', 'Vancouver'),
(4548, 'London Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4548/logo.jpg', '(604) 563-5053', '700 Main Street', 49.2785835266113, -123.099678039551, 'http://jenningsculture.com/thelondonpub.html', 'londonpubvan', '', 'Vancouver'),
(4550, 'Relish Gastropub & Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 669-1962', '888 Nelson St', 49.2803382873535, -123.124633789063, '', '', '', 'Vancouver'),
(4556, 'The Wicklow Public House', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4556/logo.jpg', '(604) 879-0821', '610 Stamps Landing', 49.2687034606934, -123.118804931641, 'http://www.thewicklow.com', 'thewicklowpub', '147096117674', 'Vancouver'),
(4557, 'Wings Tap & Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4557/logo.png', '(604) 682-3473', '1162 Granville St.', 49.2773246765137, -123.125579833984, 'http://www.greatwings.ca', 'great_wings', '', 'Vancouver'),
(4558, 'The Pirate Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4558/logo.png', '(604) 676-2337', '1012 Beach Ave.', 49.2755889892578, -123.135368347168, '', 'piratepub', '', 'Vancouver'),
(4559, 'The Backstage Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '1585 Johnston St.', 49.272403717041, -123.134315490723, '', '', '', 'Vancouver'),
(4560, 'Shamrock Alley', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '', 49.2876396179199, -123.1416015625, '', '', '', ''),
(4564, 'Portland Craft', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4564/logo.png', '(604) 569-2494', '3835 Main St', 49.250617980957, -123.101181030273, 'http://portlandcraft.com', 'portland_craft', '', 'Vancouver'),
(4565, 'The Dime', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 558-3463', '1565 Commercial Dr.', 49.2707405090332, -123.069549560547, '', '', '', 'Vancouver'),
(4567, 'Pumphouse Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 274-7424', '6031 Blundell Rd', 49.1557273864746, -123.158332824707, '', '', '', 'Richmond'),
(4568, 'Guildford Station Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 582-2800', '102 Ave.', 49.1876411437988, -122.795143127441, '', '', '', 'Surrey'),
(4569, 'Townhall Public House - Langley', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4569/logo.jpg', '(604) 510-5102', '19640 68 Ave', 49.1188354492188, -122.678611755371, 'http://www.townhallpublichouse.ca', 'wearejrg', '', 'Langley'),
(4572, 'Shark Club Bar & Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 687-4275', '180 W Georgia St', 49.2789611816406, -123.112602233887, '', 'sharkclubvan', '', 'Vancouver'),
(4575, 'Red Card Sports Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4575/logo.jpg', '(604) 689-4460', '560 Smithe St', 49.2795639038086, -123.120246887207, 'http://www.redcardsportsbar.ca', 'redcard_', '', 'Vancouver'),
(4576, 'The Ticket Kitchen & Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4576/logo.png', '(604) 694-2467', '808 Beatty St', 49.2773323059082, -123.11450958252, 'http://theticketbar.ca', 'theticketvan', '', 'Vancouver'),
(4577, 'G Sports Bar & Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 687-7684', '1208 Granville St.', 49.2768859863281, -123.126235961914, '', '', '', 'Vancouver'),
(4579, 'Indochine Kitchen', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4579/logo.jpg', '(604) 568-0828', '1 East Broadway', 49.2631568908691, -123.104675292969, 'http://www.indochinekitchen.ca', 'indochinelounge', '', 'Vancouver'),
(4580, 'Coco Rico Cafe Bistro & Tapas Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 687-0424', '1290 Robson St.', 49.286994934082, -123.128448486328, 'http://www.cocoricocafe.ca', '', '', 'Vancouver'),
(4581, 'The Sin Bin Sports Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4581/logo.png', '(604) 677-3515', '295 W 2nd Ave', 49.2682800292969, -123.111587524414, 'http://www.thesinbin.ca', 'sinbin_grill', '', 'Vancouver'),
(4584, 'Mavericks', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '', 49.260124206543, -123.096870422363, '', '', '', ''),
(4586, 'Cactus Club Cafe', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4154/logo.png', '(604) 922-1707', '855 Main St.', 49.3259468078613, -123.142272949219, 'http://www.cactusclubcafe.com', 'cactusclubcafe', '', 'Vancouver'),
(4587, 'The Press Box', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 252-2690', '2889 Hastings Street East', 49.2812156677246, -123.045310974121, '', '', '', 'Vancouver'),
(4589, 'The Dunbar Public House', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 222-9922', '4497 Dunbar St', 49.2462692260742, -123.185394287109, '', '', '', 'Vancouver'),
(4590, 'Shark Club Bar & Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'restaurant', NULL, NULL, 'public/images/bars/4601/logo.jpeg', '(604) 276-2609', '10253 St. Edwards Dr', 49.1874809265137, -123.109230041504, '', 'sharkclub', '', 'Richmond'),
(4591, 'Great Bear Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 433-8942', '5665 Kingsway', 49.223030090332, -122.981735229492, '', '', '', 'Burnaby'),
(4592, 'Mahony & Sons', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4192/logo.jpeg', '(604) 827-4444', '5990 University Blvd.', 49.2659149169922, -123.246643066406, 'http://mahonyandsons.com', 'mahonyandsons', '', 'Vancouver'),
(4593, 'Schanks Sports Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4593/logo.png', '(604) 777-8008', '350 Gifford St', 49.1864013671875, -122.955795288086, 'http://www.schanks.com', 'schanksbc', '', 'New Westminster'),
(4594, 'Sportstown Tavern', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '4991 No. 5 Road', 49.1776351928711, -123.093696594238, '', '', '', 'Richmond'),
(4596, 'Boston Pizza', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4596/logo.', '(604) 465-7100', '19800 Lougheed Hwy Unit 510', 49.2242202758789, -122.673225402832, 'http://www.bostonpizza.com', 'boston_pizza', '', 'Pitt Meadows'),
(4600, 'Jolly Coachman', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4600/logo.jpg', '(604) 465-9911', '19167 Ford Rd', 49.2227363586426, -122.690574645996, 'http://www.jollycoachman.com', 'jollycoachman', '', 'Pitt Meadows'),
(4601, 'Shark Club Bar & Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, 'public/images/bars/4601/logo.jpeg', '(604) 513-8600', '20169 88 Ave', 49.1634674072266, -122.66162109375, '', 'sharkclub', '', 'Langley'),
(4602, 'Legends Bar and Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', 'Domestic Terminal', 49.192440032959, -123.183235168457, '', '', '', 'Vancouver'),
(4605, 'The Attic Bar & Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 930-8875', '9461 120 St', 49.1785469055176, -122.869873046875, '', '', '', 'Delta'),
(4609, 'Allstars Sports Bar and Grill', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '11920 70th Ave.', 49.1300392150879, -122.892677307129, '', '', '', 'Delta'),
(4613, 'The Penthouse', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, NULL, '6046832111', '1019 Seymour St', 49.278509, -123.122618, '', '', '', 'Vancouver'),
(4614, 'Number 5 Orange', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, NULL, '', '205 main', 49.2830696105957, -123.099784851074, '', '', '', 'Vancouver'),
(4616, 'Gyu Japanese Teppanyaki', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 688-7050', '755 Alberni St.', 49.2842864990234, -123.1220703125, '', '', '', 'Vancouver'),
(4628, 'Spire Wellness', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '', '2885 w 33rd Ave', 49.2424736022949, -123.169868469238, '', '', '', 'Vancouver'),
(4633, 'Paramount Gentlemens Club', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', NULL, NULL, NULL, '', '', 49.202457860125, -122.90923156695, '', '', '', ''),
(4639, 'The House of the Rising Sun', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', NULL, NULL, NULL, '(604) 789-7688', '5309 Marine Drive', 49.2066917419434, -122.987480163574, '', 'hatymous', '', 'Burnaby'),
(4646, 'Joe''s Apartment', 0, '2014-02-16 07:35:14', 10, 0, 'club', NULL, NULL, 'public/images/bars/4646/logo.jpeg', '(604) 563-5030', '919 Granville Street', 49.2802309815926, -123.12186217308, 'http://www.joesapartment.ca/', 'joesapt', '164233120276649', 'Vancouver'),
(4652, 'Club 9one9', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', '', '', 'public/images/bars/4652/logo.png', '12503837137', '919 Douglas Street', 48.4234194968352, -123.365388896148, 'http://www.strathconahotel.com', 'CLUB9ONE9', '', 'Victoria'),
(4655, 'Darcys Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', '', '', 'public/images/bars/4655/logo.jpg', '12503801322', '1127 Wharf St', 48.4257716107167, -123.369784755052, 'http://www.darcyspub.ca', 'darcyspub', '155818284445707', 'Victoria'),
(4661, 'Upstairs Cabaret', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', '', '', 'public/images/bars/4661/logo.jpg', '2503855483', '15 Bastion Square', 48.4258098899426, -123.369648201223, '', 'upstairscabaret', '', 'Victoria');
INSERT INTO `venues` (`id`, `name`, `enabled`, `lastUpdated`, `cover`, `event`, `type`, `image`, `image_mobile`, `logo`, `phone`, `address`, `lat`, `lng`, `website`, `twitter`, `facebook`, `city`) VALUES
(4662, 'Sugar Nightclub', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', '', '', 'public/images/bars/4662/logo.png', '2509209950', '858 Yates St', 48.4258700781567, -123.35985518899, 'http://www.sugarnightclub.ca', 'sugarinvic', '', 'Victoria'),
(4663, 'Venue', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', '', '', 'public/images/bars/4663/logo.jpeg', '', '881 Granville St.', 49.280598373933, -123.12127966432, 'http://www.venuelive.ca', 'venuelive', '', 'Vancouver'),
(4664, 'Lucky Bar', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', '', '', '', '', '', 48.4268331233724, -123.370164742397, '', '', '', ''),
(4665, 'The Games Room', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', '', '', '', '', '', 48.4231316343059, -123.36549209386, '', '', '', ''),
(4666, 'Jacks Pub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', '', '', '', '2503915225', '2020 Country Club Way', 48.476983668555, -123.531853041664, '', '', '', 'Victoria'),
(4682, 'Touch Lounge', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', '', '', '', '2503842582', '751 View Street', 48.4250406693838, -123.36275902943, '', '', '', 'Victoria'),
(4683, 'Publik', 0, '2014-02-16 07:35:14', NULL, NULL, 'club', '', '', NULL, '', '1318 Broad Street', 48.4271364014035, -123.366277123421, '', '', '', 'Victoria'),
(4684, 'CANOE Brewpub', 0, '2014-02-16 07:35:14', NULL, NULL, 'pub', '', '', 'public/images/bars/4684/logo.jpg', '2503611940', '450 Swift Street', 48.4295904026929, -123.370932052937, 'http://www.canoebrewpub.com', 'canoebrewpub', '', 'Victoria');

-- --------------------------------------------------------

--
-- Table structure for table `waitlog`
--

CREATE TABLE IF NOT EXISTS `waitlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venueid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `waitEstimate` int(11) DEFAULT NULL,
  `peopleEstimate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
