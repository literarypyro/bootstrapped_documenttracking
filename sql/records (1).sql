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
-- Database: `records`
--

-- --------------------------------------------------------

--
-- Table structure for table `classification`
--

CREATE TABLE IF NOT EXISTS `classification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classification_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `classification`
--

INSERT INTO `classification` (`id`, `classification_desc`) VALUES
(1, 'Memorandum'),
(2, 'Letter'),
(3, 'Transmittal'),
(4, 'Office Order'),
(5, 'Leave Application'),
(6, 'PDS'),
(7, 'PES/PER'),
(8, 'Official Business Form'),
(9, 'Monthly Report'),
(10, 'Yearly Report'),
(12, 'Daily Report'),
(13, 'Requisition/Issuance Slip'),
(14, 'Sales/Ridership Report'),
(15, 'Training Memoranda'),
(16, 'Helpdesk Report'),
(17, 'Billing Report'),
(18, 'Maintenance Provider Document'),
(19, 'Request for Inspection'),
(20, 'Inspection and Acceptance Report'),
(21, 'Repair and Maintenance Form'),
(22, 'Access Permits'),
(23, 'Work Permits'),
(24, 'Endorsements'),
(25, 'Audit Observation Report'),
(26, 'OT Slip'),
(27, 'OT Claim'),
(28, 'Voucher'),
(29, 'Payroll'),
(30, 'Requisition Order'),
(31, 'Payslip'),
(32, 'Budget Proposal'),
(33, 'Revenue Documents'),
(34, 'Modified Obligation and Budget Request'),
(35, 'Notice of Meeting'),
(36, 'Application for Monetization'),
(37, 'Statement of Outstanding Investment (PNB)'),
(38, 'Briefing Memorandum'),
(39, 'Special Order'),
(40, 'Department Order'),
(41, 'Resolution'),
(42, 'Department Memorandum Circular'),
(43, 'General Bid Bulletin'),
(44, 'Contract'),
(45, 'Notice to Proceed'),
(46, 'Notice to Award'),
(47, 'DR9'),
(48, 'Control Center Daily Report'),
(49, 'Service Interruption Report'),
(50, 'Incident Report'),
(51, 'Train Availability Report'),
(52, 'Train Revenue Operation (Summary)'),
(53, 'LRV Peak/Off Hour'),
(54, 'Timetable'),
(55, 'Daily Attendance Monitoring Report'),
(56, 'Information Report'),
(57, 'Investigation Report'),
(58, 'Deposits and Collections Summary'),
(59, 'Weekly Report'),
(60, 'Report on Cash Overages and Shortages'),
(61, 'Service Schedule'),
(62, 'DTR Timekeeping'),
(63, 'Utility Report'),
(64, 'SALN Report'),
(65, 'PPMP Report'),
(66, 'Memo to Conduct Training'),
(67, 'Memo to Attend'),
(68, 'Sales Report'),
(69, 'Ridership Report'),
(70, 'Monthly Management Report'),
(71, 'Endorsement to Maintenance Provider'),
(72, 'Letters to Maintenance Provider'),
(73, 'Incident Report from Maintenance Provider'),
(74, 'Service Interruption Report'),
(75, 'Weekly Accomplishment Report'),
(76, 'Preventive Maintenance Schedule'),
(77, 'Letters from Maintenance Provider'),
(78, 'Transmittal to Maintenance Provider'),
(79, 'Train Preparation Report'),
(80, 'Inspection Report of LVRs'),
(81, 'Elevator and Escalator Status Report'),
(82, 'Station AFC Equipment Status Report'),
(83, 'Report of Interim Maintenance Provider'),
(84, 'Journal Entry Voucher'),
(85, 'Disbursement Voucher - Electricity'),
(86, 'Report of Collections'),
(87, 'Statement of Bank Deposits'),
(88, 'Cashier II Schedule'),
(89, 'Treasury Supervisor Schedule'),
(90, 'OTHER'),
(91, 'Monthly Activity Report'),
(92, 'Disbursement Voucher - Telephone'),
(93, 'Disbursement Voucher - Internet'),
(94, 'Disbursement Voucher - Water');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_code` varchar(100) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  PRIMARY KEY (`department_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_code`, `department_name`) VALUES
('ADM', 'Administrative Division'),
('AFC', 'Automatic Fare Collection Center'),
('FCD', 'Finance and Comptrollership Division'),
('IAU', 'Internal Audit Unit'),
('ED', 'Engineering Division'),
('OOD', 'Office of the Operations Director'),
('OGM', 'Office of the General Manager'),
('REC', 'Records Officer'),
('SDU', 'Systems Development Unit'),
('SSU', 'Safety and Security'),
('STN', 'Station Division'),
('SUP', 'Support Staff'),
('TRA', 'Transport Division'),
('TREA', 'Treasury Section');

-- --------------------------------------------------------

--
-- Table structure for table `division_classification`
--

CREATE TABLE IF NOT EXISTS `division_classification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `division_id` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `classification_id` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `subclassification_id` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=83 ;

--
-- Dumping data for table `division_classification`
--

INSERT INTO `division_classification` (`id`, `division_id`, `classification_id`, `subclassification_id`) VALUES
(1, 'ALL', '1', NULL),
(2, 'ALL', '2', NULL),
(3, 'ALL', '3', NULL),
(4, 'ALL', '4', NULL),
(5, 'ALL', '5', NULL),
(6, 'FIN', '6', NULL),
(7, 'FIN', '7', NULL),
(8, 'ALL', '8', NULL),
(9, 'ALL', '26', NULL),
(10, 'ALL', '27', NULL),
(11, 'ALL', '29', NULL),
(12, 'ALL', '31', NULL),
(13, 'ALL', '63', NULL),
(14, 'ALL', '64', NULL),
(15, 'ALL', '65', NULL),
(16, 'SSU', '50', NULL),
(17, 'SSU', '56', NULL),
(18, 'SSU', '57', NULL),
(19, 'SUP', '14', NULL),
(20, 'SUP', '16', NULL),
(21, 'SUP', '66', NULL),
(22, 'SUP', '67', NULL),
(23, 'SUP', '68', NULL),
(24, 'SUP', '69', NULL),
(25, 'SUP', '70', NULL),
(26, 'ENG', '71', NULL),
(27, 'ENG', '72', NULL),
(28, 'ENG', '73', NULL),
(29, 'ENG', '76', NULL),
(30, 'ENG', '77', NULL),
(31, 'ENG', '78', NULL),
(32, 'ALL', '62', NULL),
(33, 'TRA', '48', NULL),
(34, 'TRA', '49', NULL),
(35, 'TRA', '50', NULL),
(36, 'TRA', '51', NULL),
(37, 'TRA', '52', NULL),
(38, 'TRA', '53', NULL),
(39, 'TRA', '54', NULL),
(40, 'TRA', '79', NULL),
(41, 'TRA', '80', NULL),
(42, 'TRA', '81', NULL),
(43, 'TRA', '82', NULL),
(44, 'TRA', '83', NULL),
(45, 'TREA', '58', NULL),
(46, 'TREA', '60', NULL),
(47, 'TREA', '88', NULL),
(48, 'TREA', '89', NULL),
(49, 'SUP', '17', NULL),
(50, 'ENG', '19', NULL),
(51, 'ENG', '20', NULL),
(52, 'ENG', '21', NULL),
(53, 'IAU', '25', NULL),
(54, 'TREA', '59', NULL),
(55, 'FIN', '32', NULL),
(56, 'FIN', '33', NULL),
(57, 'FIN', '34', NULL),
(58, 'FIN', '35', NULL),
(59, 'FIN', '36', NULL),
(60, 'FIN', '37', NULL),
(61, 'OGM', '40', NULL),
(62, 'OGM', '41', NULL),
(63, 'OGM', '42', NULL),
(64, 'OGM', '43', NULL),
(65, 'OGM', '44', NULL),
(66, 'OGM', '39', NULL),
(67, 'FIN', '38', NULL),
(68, 'ALL', '24', NULL),
(69, 'ENG', '22', NULL),
(70, 'ENG', '23', NULL),
(71, 'ENG', '47', NULL),
(72, 'TREA', '86', NULL),
(73, 'TREA', '87', NULL),
(74, 'FIN', '84', NULL),
(75, 'FIN', '85', NULL),
(76, 'ALL', '30', NULL),
(77, 'OGM', '45', NULL),
(78, 'OGM', '46', NULL),
(79, 'TRA', '55', NULL),
(80, 'TRA', '74', NULL),
(81, 'ALL', '75', NULL),
(82, 'SDU', '91', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `ref_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `originating_office` varchar(500) NOT NULL,
  `originating_name` varchar(100) NOT NULL,
  `document_date` datetime NOT NULL,
  `classification_id` varchar(500) NOT NULL,
  `document_type` varchar(45) NOT NULL,
  `subject` text NOT NULL,
  `status` varchar(105) NOT NULL,
  `receive_date` datetime DEFAULT NULL,
  `security` varchar(150) NOT NULL,
  `sending_office` varchar(45) DEFAULT NULL,
  `chronId` varchar(1000) DEFAULT NULL,
  `subclassification_id` varchar(45) DEFAULT NULL,
  `synced` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ref_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=28 ;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`ref_id`, `originating_office`, `originating_name`, `document_date`, `classification_id`, `document_type`, `subject`, `status`, `receive_date`, `security`, `sending_office`, `chronId`, `subclassification_id`, `synced`) VALUES
(27, '1', '12', '2015-03-16 00:00:00', '', 'MEMO', 'Sample Document', 'SENT', '2015-03-16 00:00:00', 'unsecured', 'ADM', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `document_access`
--

CREATE TABLE IF NOT EXISTS `document_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `username` varchar(150) NOT NULL,
  `division` varchar(45) NOT NULL,
  `reference_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=94 ;

--
-- Dumping data for table `document_access`
--

INSERT INTO `document_access` (`id`, `date_time`, `username`, `division`, `reference_id`) VALUES
(93, '2015-08-03 09:17:21', 'support', '', 27),
(92, '2015-08-03 09:08:51', 'support', '', 27),
(91, '2015-08-03 09:07:47', 'support', '', 27),
(90, '2015-08-03 09:07:27', 'support', '', 27),
(89, '2015-08-03 09:06:29', 'support', '', 27),
(88, '2015-08-03 09:05:36', 'support', '', 27),
(87, '2015-08-03 09:03:27', 'support', '', 27),
(86, '2015-08-03 08:44:36', 'support', '', 27),
(85, '2015-08-03 10:30:57', 'support', 'SUP', 27),
(84, '2015-08-03 04:23:36', 'support', '', 27),
(83, '2015-08-03 04:23:01', 'support', '', 27),
(82, '2015-08-03 04:22:33', 'support', '', 27),
(81, '2015-08-03 04:22:24', 'support', '', 27),
(80, '2015-08-03 10:21:58', 'support', '', 27),
(79, '2015-08-03 04:21:03', 'support', '', 27),
(78, '2015-08-03 04:19:26', 'support', '', 27),
(77, '2015-08-03 04:19:23', 'support', '', 27),
(76, '2015-08-03 04:14:57', 'support', '', 27),
(75, '2015-08-03 04:13:33', 'support', '', 27),
(74, '2015-08-03 04:12:26', 'support', '', 27);

-- --------------------------------------------------------

--
-- Table structure for table `document_actions`
--

CREATE TABLE IF NOT EXISTS `document_actions` (
  `action_code` varchar(45) NOT NULL,
  `action_description` text NOT NULL,
  PRIMARY KEY (`action_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_actions`
--

INSERT INTO `document_actions` (`action_code`, `action_description`) VALUES
('A', 'Approved/Signed/Dissemination/Publish'),
('B', 'Reject/Disapprove'),
('C', 'Appropriate Staff Action'),
('D', 'Study/Commend/Recommend'),
('E', 'Process Appropriate Permit'),
('F', 'Prepare Appropriate Permit'),
('G', 'Investigate/Submit Report'),
('H', 'Monitor/Submit Feedback'),
('I', 'Coordinate with Writer for Details'),
('J', 'Reply Directly to Writer'),
('K', 'Draft Reply for the Signing by the General Manager'),
('L', 'Redraft/Rewrite/Retype'),
('M', 'Returned Without Action'),
('N', 'A Matter for that Office'),
('O', 'Legal Opinion'),
('P', 'For Approval/Signing'),
('Q', 'Please see me'),
('R', 'Reference/File'),
('S', 'Finalize draft'),
('T', 'Dispatch'),
('U', 'Information/Notation'),
('X', 'OTHER Action');

-- --------------------------------------------------------

--
-- Table structure for table `document_attachment`
--

CREATE TABLE IF NOT EXISTS `document_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attachment_name` text,
  `document_classification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `document_attachment`
--

INSERT INTO `document_attachment` (`id`, `attachment_name`, `document_classification`) VALUES
(1, 'MOBR', '93'),
(2, 'Summary Report of Bill', '93'),
(3, 'Summary of Billing', '93'),
(4, 'Statement of Account', '93'),
(5, 'Certification', '93'),
(6, 'Summary of Billing', '94'),
(7, 'Summary of Water Consumption', '94'),
(8, 'Summary of Billing ', '92'),
(9, 'Certification', '92'),
(10, 'Call Charges Evaluation Report', '92'),
(11, 'Summary Report of Bill', '92'),
(12, 'PLDT Consolidated Statement Of Account', '92'),
(13, 'Summary of Sharing', '85'),
(14, 'Statement of Account ', '85'),
(15, 'Electrical power bill', '85'),
(16, 'Electrical Consumption', '85');

-- --------------------------------------------------------

--
-- Table structure for table `document_receipt`
--

CREATE TABLE IF NOT EXISTS `document_receipt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` varchar(45) NOT NULL,
  `reference_id` varchar(150) DEFAULT NULL,
  `upload_link` varchar(145) DEFAULT NULL,
  `confirm_time` datetime NOT NULL,
  `download` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=18 ;

--
-- Dumping data for table `document_receipt`
--

INSERT INTO `document_receipt` (`id`, `document_id`, `reference_id`, `upload_link`, `confirm_time`, `download`) VALUES
(17, '27', '03.15.0027.ADM', 'uploads/unsecured/ADM/desktop.ini', '2015-03-16 09:48:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_routing`
--

CREATE TABLE IF NOT EXISTS `document_routing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` int(50) unsigned NOT NULL,
  `request_date` datetime NOT NULL,
  `from_name` varchar(45) NOT NULL,
  `from_office` varchar(150) NOT NULL,
  `alter_from` varchar(150) DEFAULT NULL,
  `alter_position` varchar(150) DEFAULT NULL,
  `input_time` datetime DEFAULT NULL,
  `synced` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=20 ;

--
-- Dumping data for table `document_routing`
--

INSERT INTO `document_routing` (`id`, `reference_no`, `request_date`, `from_name`, `from_office`, `alter_from`, `alter_position`, `input_time`, `synced`) VALUES
(19, 27, '2015-03-16 00:00:00', '1', 'ADM', '', '', '2015-03-16 16:48:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_code` varchar(45) NOT NULL,
  `download_time` datetime NOT NULL,
  `username` varchar(45) NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=19 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `department_code`, `download_time`, `username`, `reference_id`) VALUES
(18, '', '2015-08-03 10:23:28', 'support', 27);

-- --------------------------------------------------------

--
-- Table structure for table `forward_copy`
--

CREATE TABLE IF NOT EXISTS `forward_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `remarks` text,
  `to_department` varchar(150) DEFAULT NULL,
  `reference_number` varchar(150) NOT NULL,
  `forward_date` datetime NOT NULL,
  `forwarding_office` varchar(45) NOT NULL,
  `document_type` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table `latest_actions`
--

CREATE TABLE IF NOT EXISTS `latest_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action_date` datetime NOT NULL,
  `department_code` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `originating_office`
--

CREATE TABLE IF NOT EXISTS `originating_office` (
  `department_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_name` text NOT NULL,
  `department_tag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`department_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `originating_office`
--

INSERT INTO `originating_office` (`department_code`, `department_name`, `department_tag`) VALUES
(1, 'Administrative Division', 'ADM'),
(2, 'Automatic Fare Collection Center', 'AFC'),
(3, 'Finance and Comptrollership Division', 'FCD'),
(4, 'Engineering Division', 'ED'),
(5, 'Office of the Operations Director', 'OOD'),
(6, 'Office of the General Manager', 'OGM'),
(7, 'Safety and Security', 'SSU'),
(8, 'Station Division', 'STN'),
(9, 'Support Staff', 'SUP'),
(10, 'Transport Division', 'TRA'),
(11, 'Treasury Section', 'TREA'),
(12, 'Records Officer', 'REC'),
(13, 'OTHER', 'OTHER'),
(14, 'Systems Development Unit', 'SDU'),
(15, 'Internal Audit Unit', 'IAU');

-- --------------------------------------------------------

--
-- Table structure for table `originating_officer`
--

CREATE TABLE IF NOT EXISTS `originating_officer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `position` varchar(150) NOT NULL,
  `division` varchar(45) NOT NULL,
  `signature` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `originating_officer`
--

INSERT INTO `originating_officer` (`id`, `name`, `position`, `division`, `signature`) VALUES
(1, 'Roman R. Buenafe', 'General Manager, DOTC-MRT3', 'OGM', '962g1n'),
(2, 'Eleanor V. Naidas', 'Chief, Finance and Comptrollership Division', 'FCD', 'ljxs13'),
(4, 'Charity Ocampo', 'Records Officer', 'REC', 'xgctkp'),
(5, 'Renato Z. San Jose', 'Director for Operations', 'OOD', 'ovzcs7'),
(7, 'Oscar B. Bongon', 'Chief, Station Division', 'STN', '75mtaw'),
(8, 'Jose Ric M. Inotorio', 'Chief, Transport Division', 'TRA', 'vffx9v'),
(9, 'Misael R. Narca', 'Chief, Engineering Division', 'ED', '3p3cid'),
(10, 'Ofelia D. Astrera', 'Chief, Support Staff/AFC Center/Computer Section', 'SUP', 'rqxeaw'),
(11, 'Bernardo Antonio R. Alejandro IIII', 'OIC, Safety and Security Unit', 'SSU', '457hzt'),
(12, 'Rita M. Caraan', 'Chief, Administrative Division', 'ADM', 'mykuos'),
(13, 'Emmanuel G. Sta. Ana', 'Chief, Treasury Division', 'TREA', 'vpe10g'),
(14, 'Jimmy Q. Dableo', 'Head, Internal Audit Unit', 'IAU', 'p1a93e'),
(15, 'Marlon C. Bunite', 'Head, Systems Development Unit', 'SDU', 'mcbunite');

-- --------------------------------------------------------

--
-- Table structure for table `reference_increment`
--

CREATE TABLE IF NOT EXISTS `reference_increment` (
  `ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(200) NOT NULL,
  PRIMARY KEY (`ref_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `reference_increment`
--

INSERT INTO `reference_increment` (`ref_id`, `year`) VALUES
(1, '2015');

-- --------------------------------------------------------

--
-- Table structure for table `routing_receipt`
--

CREATE TABLE IF NOT EXISTS `routing_receipt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target_id` varchar(45) DEFAULT NULL,
  `receive_time` datetime DEFAULT NULL,
  `division` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `routing_targets`
--

CREATE TABLE IF NOT EXISTS `routing_targets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `destination_office` varchar(45) NOT NULL,
  `to_name` text,
  `action_id` varchar(500) NOT NULL,
  `status` varchar(45) NOT NULL,
  `remarks` text,
  `routing_id` int(10) unsigned NOT NULL,
  `alter_to` varchar(150) DEFAULT NULL,
  `alter_position` varchar(150) DEFAULT NULL,
  `keycode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `routing_id` (`routing_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=51 ;

--
-- Dumping data for table `routing_targets`
--

INSERT INTO `routing_targets` (`id`, `destination_office`, `to_name`, `action_id`, `status`, `remarks`, `routing_id`, `alter_to`, `alter_position`, `keycode`) VALUES
(50, 'SUP', '10', 'A', 'PENDING', '', 19, '', '', 'mijul8');

-- --------------------------------------------------------

--
-- Table structure for table `routing_uploads`
--

CREATE TABLE IF NOT EXISTS `routing_uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `targets_id` varchar(200) NOT NULL,
  `upload_link` varchar(200) NOT NULL,
  `upload_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20140113071917');

-- --------------------------------------------------------

--
-- Table structure for table `subclassification`
--

CREATE TABLE IF NOT EXISTS `subclassification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subclassification_desc` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `classification_id` varchar(45) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `subclassification`
--

INSERT INTO `subclassification` (`id`, `subclassification_desc`, `classification_id`) VALUES
(1, 'DTR Timekeeping', '9'),
(2, 'Utility Report', '9'),
(3, 'SALN Report', '10'),
(4, 'PPMP Report', '10'),
(5, 'Memo to Conduct Training', '15'),
(6, 'Memo to Attend', '15'),
(7, 'Sales Report', '14'),
(8, 'Ridership Report', '14'),
(9, 'Monthly Management Report', '14'),
(10, 'Endorsement to Maintenance Provider', '18'),
(11, 'Letters to Maintenance Provider', '18'),
(12, 'Incident Report from Maintenance Provider', '18'),
(13, 'Service Interruption Report', '18'),
(14, 'Weekly Accomplishment Report', '18'),
(15, 'Preventive Maintenance Schedule', '18'),
(16, 'Letters from Maintenance Provider', '18'),
(17, 'Transmittal to Maintenance Provider', '18'),
(18, 'Train Preparation Report', '12'),
(19, 'Inspection Report of LVRs', '12'),
(20, 'Elevator and Escalator Status Report', '12'),
(21, 'Station AFC Equipment Status Report', '12'),
(22, 'Report of Interim Maintenance Provider', '12'),
(23, 'Journal Entry Voucher', '28'),
(24, 'Disbursement Voucher', '28'),
(25, 'Report of Collections', '9'),
(26, 'Statement of Bank Deposits', '9'),
(27, 'Cashier II Schedule', '61'),
(28, 'Treasury Supervisor Schedule', '61');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no` int(11) NOT NULL,
  `upload_link` text NOT NULL,
  `upload_date` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`upload_id`, `ref_no`, `upload_link`, `upload_date`) VALUES
(12, 315, 'uploads/unsecured/ADM/desktop.ini', '2015-03-16 09:48:46');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
