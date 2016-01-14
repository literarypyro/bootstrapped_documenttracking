-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2016 at 06:45 AM
-- Server version: 5.5.27-log
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `user_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_phrase`
--

CREATE TABLE IF NOT EXISTS `access_phrase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `division_management`
--

CREATE TABLE IF NOT EXISTS `division_management` (
  `division_id` varchar(150) NOT NULL,
  `security_phrase` text NOT NULL,
  `user_no` varchar(45) NOT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division_management`
--

INSERT INTO `division_management` (`division_id`, `security_phrase`, `user_no`) VALUES
('ADM', 'admin', '10'),
('FCD', 'finance', '10'),
('IAU', 'iau', '10'),
('ED', 'eng', '10'),
('OOD', 'operations', '10'),
('OGM', 'OGM', '10'),
('REC', 'records', '10'),
('SDU', 'sdu', '10'),
('SSU', 'safety', '10'),
('STN', 'stn', '10'),
('SUP', 'support', '10'),
('TRA', 'trans', '10'),
('TREA', 'treas', '10');

-- --------------------------------------------------------

--
-- Table structure for table `log_action`
--

CREATE TABLE IF NOT EXISTS `log_action` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `login` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `log_action`
--

INSERT INTO `log_action` (`log_id`, `username`, `login`, `logout`) VALUES
(68, 'psilva', '2015-08-03 09:11:22', '2015-08-03 09:16:25'),
(67, 'support', '2015-08-03 09:10:20', '2015-08-03 09:10:54'),
(66, 'support', '2015-08-03 04:30:35', '2015-08-03 09:10:54'),
(65, 'admin', '2015-08-03 04:30:18', '2015-08-03 04:30:30'),
(64, 'admin', '2015-03-13 09:24:57', '2015-08-03 04:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `log_history`
--

CREATE TABLE IF NOT EXISTS `log_history` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `time` datetime NOT NULL,
  `action` varchar(45) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=111 ;

--
-- Dumping data for table `log_history`
--

INSERT INTO `log_history` (`log_id`, `username`, `time`, `action`) VALUES
(1, 'psilva', '2014-04-16 02:41:34', 'login'),
(2, 'psilva', '2014-04-16 02:41:39', 'logout'),
(3, 'psilva', '2014-04-16 02:46:53', 'login'),
(4, 'psilva', '2014-04-16 02:46:56', 'logout'),
(5, 'mbunite', '2014-04-16 02:48:09', 'login'),
(6, 'mbunite', '2014-04-16 02:48:12', 'logout'),
(7, 'mbunite', '2014-04-16 02:48:33', 'login'),
(8, 'mbunite', '2014-04-16 02:48:37', 'logout'),
(9, 'finance_tintin', '2014-04-16 02:49:02', 'login'),
(10, 'finance_tintin', '2014-04-16 02:49:05', 'logout'),
(11, 'ogm_eden', '2014-04-16 02:49:25', 'login'),
(12, 'ogm_eden', '2014-04-16 02:49:29', 'logout'),
(13, 'treasury_jane', '2014-04-16 03:04:29', 'login'),
(14, 'treasury_jane', '2014-04-16 03:04:40', 'logout'),
(15, 'station_shina', '2014-04-16 03:05:04', 'login'),
(16, 'station_shina', '2014-04-16 03:05:11', 'logout'),
(17, 'mbunite', '2014-04-16 03:05:20', 'login'),
(18, 'mbunite', '2014-04-16 03:05:22', 'logout'),
(19, 'transport_ruth', '2014-04-16 03:05:42', 'login'),
(20, 'transport_ruth', '2014-04-16 03:05:48', 'logout'),
(21, 'support_wenie', '2014-04-16 03:06:06', 'login'),
(22, 'support_wenie', '2014-04-16 03:06:09', 'logout'),
(23, 'ogm_eden', '2014-04-16 03:06:25', 'login'),
(24, 'ogm_eden', '2014-04-16 03:06:32', 'logout'),
(25, 'ood_julie', '2014-04-16 03:06:50', 'login'),
(26, 'ood_julie', '2014-04-16 03:06:57', 'logout'),
(27, 'ssu_olive', '2014-04-16 03:07:33', 'login'),
(28, 'ssu_olive', '2014-04-16 03:07:36', 'logout'),
(29, 'engg_maricar', '2014-04-16 03:07:48', 'login'),
(30, 'engg_maricar', '2014-04-16 03:07:50', 'logout'),
(31, 'iau_grace', '2014-04-16 03:08:07', 'login'),
(32, 'iau_grace', '2014-04-16 03:08:11', 'logout'),
(33, 'mbunite', '2014-04-16 03:22:03', 'login'),
(34, 'admin_yvette', '2014-04-16 05:52:37', 'login'),
(35, 'admin_yvette', '2014-04-16 06:05:16', 'login'),
(36, '', '2014-04-16 06:05:56', 'logout'),
(37, 'admin_yvette', '2014-04-16 06:06:07', 'login'),
(38, 'admin_yvette', '2014-04-16 06:08:24', 'logout'),
(39, 'admin_yvette', '2014-04-16 06:10:36', 'login'),
(40, 'admin_yvette', '2014-04-16 06:32:31', 'login'),
(41, 'admin_jo', '2014-04-16 06:42:34', 'login'),
(42, 'admin_yvette', '2014-04-16 06:44:13', 'logout'),
(43, 'psilva', '2014-04-16 06:44:18', 'login'),
(44, 'psilva', '2014-04-16 06:44:57', 'logout'),
(45, 'psilva', '2014-04-16 06:45:27', 'login'),
(46, 'psilva', '2014-04-16 06:50:40', 'logout'),
(47, 'psilva', '2014-04-16 06:52:52', 'login'),
(48, 'mbunite', '2014-04-22 05:11:56', 'login'),
(49, 'mbunite', '2014-04-22 06:32:39', 'login'),
(50, 'admin_yvette', '2014-04-22 06:49:48', 'login'),
(51, 'mbunite', '2014-05-02 01:46:31', 'login'),
(52, 'mbunite', '2014-05-06 01:51:44', 'login'),
(53, 'psilva', '2014-05-07 01:21:16', 'login'),
(54, 'psilva', '2014-05-07 01:22:03', 'logout'),
(55, 'mbunite', '2014-05-07 02:16:31', 'login'),
(56, 'psilva', '2014-05-07 02:34:00', 'login'),
(57, 'psilva', '2014-05-07 03:02:49', 'logout'),
(58, 'psilva', '2014-05-07 03:03:15', 'login'),
(59, 'psilva', '2014-05-07 03:09:15', 'logout'),
(60, 'psilva', '2014-05-07 03:12:26', 'login'),
(61, 'psilva', '2014-05-07 03:16:23', 'logout'),
(62, 'psilva', '2014-05-07 05:49:41', 'login'),
(63, 'psilva', '2014-05-07 06:13:44', 'logout'),
(64, 'admin', '2014-05-07 06:13:49', 'login'),
(65, 'admin', '2014-05-07 06:38:01', 'logout'),
(66, 'psilva', '2014-05-07 06:38:33', 'login'),
(67, 'mbunite', '2014-05-12 02:35:18', 'login'),
(68, 'mbunite', '2014-05-12 05:36:22', 'logout'),
(69, 'mbunite', '2014-05-12 05:37:13', 'login'),
(70, 'mbunite', '2014-05-13 06:55:16', 'login'),
(71, 'psilva', '2014-05-15 08:25:23', 'login'),
(72, 'psilva', '2014-05-15 08:25:42', 'logout'),
(73, 'mbunite', '2014-05-19 06:39:06', 'login'),
(74, 'mbunite', '2014-05-20 02:19:39', 'login'),
(75, 'psilva', '2014-05-29 07:23:17', 'login'),
(76, 'psilva', '2014-05-29 07:24:06', 'logout'),
(77, 'mbunite', '2014-05-29 07:33:00', 'login'),
(78, 'mbunite', '2014-05-30 08:33:04', 'login'),
(79, 'psilva', '2014-06-10 02:51:13', 'login'),
(80, 'ogm', '2014-06-10 07:07:34', 'login'),
(81, 'psilva', '2014-06-16 03:14:48', 'login'),
(82, 'ogm', '2014-06-16 08:40:08', 'login'),
(83, 'psilva', '2014-06-16 08:44:09', 'login'),
(84, 'psilva', '2014-06-17 07:39:13', 'login'),
(85, 'psilva', '2014-06-18 10:18:55', 'login'),
(86, 'psilva', '2014-06-18 10:27:00', 'logout'),
(87, 'ogm', '2014-06-18 10:27:06', 'login'),
(88, 'psilva', '2014-09-15 04:44:04', 'login'),
(89, 'admin', '2014-09-15 10:42:40', 'login'),
(90, 'admin', '2014-09-15 10:43:04', 'logout'),
(91, 'admin', '2015-02-12 07:26:39', 'login'),
(92, 'admin', '2015-02-12 07:27:35', 'logout'),
(93, 'admin', '2015-02-12 08:05:56', 'login'),
(94, 'admin', '2015-02-12 08:06:26', 'logout'),
(95, 'admin', '2015-03-04 02:33:46', 'login'),
(96, 'admin', '2015-03-04 02:34:28', 'logout'),
(97, 'psilva', '2015-03-04 02:36:58', 'login'),
(98, 'psilva', '2015-03-04 02:41:52', 'logout'),
(99, 'psilva', '2015-03-04 02:46:18', 'login'),
(100, '', '2015-03-04 02:55:03', 'logout'),
(101, 'admin', '2015-03-13 09:24:56', 'login'),
(102, '', '2015-03-13 09:28:32', 'logout'),
(103, 'admin', '2015-08-03 04:30:18', 'login'),
(104, 'admin', '2015-08-03 04:30:30', 'logout'),
(105, 'support', '2015-08-03 04:30:35', 'login'),
(106, 'support', '2015-08-03 05:49:46', 'logout'),
(107, 'support', '2015-08-03 09:10:20', 'login'),
(108, 'support', '2015-08-03 09:10:54', 'logout'),
(109, 'psilva', '2015-08-03 09:11:22', 'login'),
(110, 'psilva', '2015-08-03 09:16:25', 'logout');

-- --------------------------------------------------------

--
-- Table structure for table `records_officer`
--

CREATE TABLE IF NOT EXISTS `records_officer` (
  `username` varchar(200) NOT NULL,
  `role` varchar(150) NOT NULL,
  `active` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records_officer`
--

INSERT INTO `records_officer` (`username`, `role`, `active`) VALUES
('charity', 'primary', 'false'),
('psilva', 'back-up', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(500) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `deptCode` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `firstName`, `lastName`, `deptCode`) VALUES
('charity', 'cha061178', 'Charity Anne', 'Ocampo', 'REC'),
('gpperfinan', 'gpperfinan', 'grace', 'perfinan', 'IAU'),
('mbunite', 'marlon77', 'Marlon', 'Bunite', 'SDU'),
('psilva', '123456', 'Patrick Simon', 'Silva', 'REC'),
('admin', '123456', 'rita', 'caraan', 'ADM'),
('finance', '123456', 'Finance', 'Officer', 'FCD'),
('transport', '123456', 'ric', 'inotorio', 'TRA'),
('engineering', '123456', 'Engineering', 'Officer', 'ED'),
('station', '123456', 'Oscar', 'Bongon', 'STN'),
('ogm', '123456', 'OGM', 'Officer', 'OGM'),
('ssu', '123456', 'Boyet', 'alejandro', 'SSU'),
('treasury', '123456', 'Treasury', 'Officer', 'TREA'),
('operations', '123456', 'Operations', 'Officer', 'OOD'),
('support', '123456', 'Support', 'Officer', 'SUP'),
('finance_tintin', 'tintin21', 'Tintin', '', 'FIN'),
('admin_yvette', 'yvette21', 'Yvette', '', 'ADM'),
('iau_grace', 'grace21', 'Grace', '', 'IAU'),
('engg_maricar', 'maricar22', 'Maricar', '', 'ED'),
('ssu_olive', 'olive23', 'Olive', '', 'SSU'),
('ood_julie', 'julie24', 'Julie', '', 'OOD'),
('ogm_eden', 'eden25', 'Eden', '', 'OGM'),
('support_wenie', 'wenie26', 'Wenie', '', 'SUP'),
('transport_ruth', 'ruth27', 'Ruth', '', 'TRA'),
('station_shina', 'shina28', 'Shina', '', 'STN'),
('treasury_jane', 'jane29', 'Jane', '', 'TREA'),
('admin_jo', 'jo28', 'Jocelyn', 'Duenas', 'ADM');

-- --------------------------------------------------------

--
-- Table structure for table `user_limited`
--

CREATE TABLE IF NOT EXISTS `user_limited` (
  `username` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `division` varchar(45) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_limited`
--

INSERT INTO `user_limited` (`username`, `password`, `division`) VALUES
('charity', 'cha061178', 'REC'),
('gpperfinan', 'gpperfinan', 'IAU'),
('mbunite', 'marlon77', 'SDU'),
('psilva', '123456', 'REC'),
('admin', '123456', 'ADM'),
('finance', '123456', 'FCD'),
('transport', '123456', 'TRA'),
('engineering', '123456', 'ED'),
('station', '123456', 'STN'),
('ogm', '123456', 'OGM'),
('ssu', '123456', 'SSU'),
('treasury', '123456', 'TREA'),
('operations', '123456', 'OOD'),
('support', '123456', 'SUP'),
('finance_tintin', 'tintin21', 'FIN'),
('admin_yvette', 'yvette21', 'ADM'),
('iau_grace', 'grace21', 'IAU'),
('engg_maricar', 'maricar22', 'ED'),
('ssu_olive', 'olive23', 'SSU'),
('ood_julie', 'julie24', 'OOD'),
('ogm_eden', 'eden25', 'OGM'),
('support_wenie', 'wenie26', 'SUP'),
('transport_ruth', 'ruth27', 'TRA'),
('station_shina', 'shina28', 'STN'),
('treasury_jane', 'jane29', 'TREA'),
('admin_jo', 'jo28', 'ADM');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
