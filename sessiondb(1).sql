-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2014 at 04:00 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sessiondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `sessionsid` varchar(100) NOT NULL,
  `tel` varchar(50) NOT NULL DEFAULT '',
  `menu` varchar(50) DEFAULT NULL,
  `pg` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `others` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Handle the sessions';

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sessionsid`, `tel`, `menu`, `pg`, `created_at`, `others`) VALUES
('19', 'tel:94771122229', 'food', '', '0000-00-00 00:00:00', 'KFC'),
('18', 'tel:94771122289', 'food', '', '0000-00-00 00:00:00', 'KFC'),
('123', 'tel:94771122336', 'food', '', '0000-00-00 00:00:00', 'KFC'),
('1', 'tel:94771122338', 'Yes', 'done', '0000-00-00 00:00:00', 'Cosy'),
('1', 'tel:94771122339', 'Yes', 'done', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `sessionstt`
--

CREATE TABLE IF NOT EXISTS `sessionstt` (
  `sessionsid` varchar(100) NOT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `mainmenu` varchar(20) NOT NULL,
  `catogory` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `publish` varchar(20) NOT NULL,
  `publishtype` varchar(20) NOT NULL,
  `message` varchar(250) DEFAULT NULL,
  `conform` varchar(10) NOT NULL,
  `approval` varchar(10) NOT NULL,
  `Approval_admin` varchar(50) NOT NULL,
  `conf_apptime` varchar(20) NOT NULL,
  PRIMARY KEY (`sessionsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Handle the sessions';

--
-- Dumping data for table `sessionstt`
--

INSERT INTO `sessionstt` (`sessionsid`, `tel`, `menu`, `mainmenu`, `catogory`, `created_at`, `publish`, `publishtype`, `message`, `conform`, `approval`, `Approval_admin`, `conf_apptime`) VALUES
('12', 'tel:94771122336', 'buyAd', 'buyAd', '', '2014-10-30 05:44:51', 'hb', '', '', 'false', 'true', 'mohamedzajith', ''),
('123', 'tel:94771122336', 'buyAd', 'buyAd', '', '2014-10-30 05:12:06', '', '', '', 'false', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ynotsadmin`
--

CREATE TABLE IF NOT EXISTS `ynotsadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  PRIMARY KEY (`id`,`username`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ynotsadmin`
--

INSERT INTO `ynotsadmin` (`id`, `username`, `password`, `firstname`, `lastname`, `age`) VALUES
(1, 'mohamedzajith', '81dc9bdb52d04dc20036dbd8313ed055', 'mohamed', 'zajith', 24);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
