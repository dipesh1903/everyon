-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 21, 2018 at 03:50 PM
-- Server version: 5.0.89-community-nt
-- PHP Version: 5.5.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `everyionic_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet`
--

CREATE TABLE IF NOT EXISTS `admin_wallet` (
  `adminWal_id` int(11) NOT NULL auto_increment,
  `wal_bal` varchar(25) NOT NULL,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`adminWal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `datacard`
--

CREATE TABLE IF NOT EXISTS `datacard` (
  `dc_id` int(11) NOT NULL auto_increment,
  `d_no` varchar(50) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `operator` varchar(150) NOT NULL,
  `com_id` varchar(15) NOT NULL,
  `mem_typ` varchar(25) NOT NULL,
  `mem_id` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`dc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `datacard`
--

INSERT INTO `datacard` (`dc_id`, `d_no`, `amount`, `operator`, `com_id`, `mem_typ`, `mem_id`, `date`, `status`, `timestamp`) VALUES
(1, '2121', '122', 'dc', '', 'ms', 'ms101', '', '1', '2018-12-09 08:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `distributor_details`
--

CREATE TABLE IF NOT EXISTS `distributor_details` (
  `ds_id` int(11) NOT NULL auto_increment,
  `ms_id` varchar(50) NOT NULL,
  `firmname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `mob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `acc_typ` varchar(10) NOT NULL,
  `acc_no` varchar(110) NOT NULL,
  `country` text NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `mem_typ` varchar(5) NOT NULL default 'ds',
  `status` int(11) NOT NULL default '0',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ds_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `distributor_details`
--

INSERT INTO `distributor_details` (`ds_id`, `ms_id`, `firmname`, `name`, `email`, `mob`, `gender`, `pass`, `address`, `acc_typ`, `acc_no`, `country`, `state`, `city`, `pin`, `mem_typ`, `status`, `timestamp`) VALUES
(1, '2', '2ccscscs', 'AVNS Techno Solutions Pvt.Ltd', 'info@avnstechno.com', '212121212', 'Male', '21212', 'iguiguigui', 'Savings', '1212', '', 'csc', 'cscsc', 'cscscs', 'ds', 0, '2018-12-07 14:11:06'),
(2, '4', 'asdf', 'AVNS Techno Solutions Pvt.Ltd', 'asdf', 'sdfsadf', 'Female', 'asdf', 'asdf', 'Savings', 'asdf', '', 'asdf', 'asdf', 'asdfa', 'ds', 0, '2018-12-07 14:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `dth`
--

CREATE TABLE IF NOT EXISTS `dth` (
  `dt_id` int(11) NOT NULL auto_increment,
  `dth_no` varchar(50) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `operator` varchar(150) NOT NULL,
  `com_id` varchar(15) NOT NULL,
  `mem_typ` varchar(25) NOT NULL,
  `mem_id` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL default '1',
  PRIMARY KEY  (`dt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dth`
--

INSERT INTO `dth` (`dt_id`, `dth_no`, `amount`, `operator`, `com_id`, `mem_typ`, `mem_id`, `date`, `status`) VALUES
(1, '21212', '1212', 'tsky', '', 'ms', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `electricity`
--

CREATE TABLE IF NOT EXISTS `electricity` (
  `el_id` int(11) NOT NULL auto_increment,
  `com_id` varchar(25) NOT NULL,
  `mem_id` varchar(25) NOT NULL,
  `mem_typ` varchar(25) NOT NULL,
  `date` varchar(30) NOT NULL,
  `amount` varchar(35) NOT NULL,
  `operator` varchar(25) NOT NULL,
  `c_mob` varchar(15) NOT NULL,
  `c_name` varchar(55) NOT NULL,
  `c_no` varchar(25) NOT NULL,
  `status` int(11) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`el_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hr_user_privileges`
--

CREATE TABLE IF NOT EXISTS `hr_user_privileges` (
  `auto_id` int(11) NOT NULL auto_increment,
  `emp_id` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `add` tinyint(1) NOT NULL default '0',
  `view` tinyint(1) NOT NULL default '0',
  `update` tinyint(1) NOT NULL default '0',
  `delete` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE IF NOT EXISTS `insurance` (
  `ins_id` int(11) NOT NULL auto_increment,
  `p_no` varchar(35) NOT NULL,
  `p_name` varchar(35) NOT NULL,
  `number` varchar(35) NOT NULL,
  `amount` varchar(35) NOT NULL,
  `operator` varchar(35) NOT NULL,
  `dob` varchar(40) NOT NULL,
  `mem_id` varchar(15) NOT NULL,
  `mem_typ` varchar(25) NOT NULL,
  `com_id` varchar(15) NOT NULL,
  `status` int(11) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ins_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`ins_id`, `p_no`, `p_name`, `number`, `amount`, `operator`, `dob`, `mem_id`, `mem_typ`, `com_id`, `status`, `timestamp`) VALUES
(1, '1313133', 'vdvdvddvd', '212121', '1212', 'tsky', '24/12/2018', 'm1001', 'ms', 'c101', 1, '2018-12-09 07:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `landline`
--

CREATE TABLE IF NOT EXISTS `landline` (
  `lline_id` int(11) NOT NULL auto_increment,
  `number` varchar(25) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `mem_typ` varchar(50) NOT NULL,
  `mem_id` varchar(15) NOT NULL,
  `com_id` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `status` int(11) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`lline_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `landline`
--

INSERT INTO `landline` (`lline_id`, `number`, `amount`, `operator`, `mem_typ`, `mem_id`, `com_id`, `date`, `status`, `timestamp`) VALUES
(1, '323', '32', 'ac', 'ms', '1001', 'c101', '', 1, '2018-12-08 14:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `master_details`
--

CREATE TABLE IF NOT EXISTS `master_details` (
  `ms_id` int(11) NOT NULL auto_increment,
  `memtype` varchar(50) NOT NULL,
  `firmname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `mob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `acc_typ` varchar(10) NOT NULL,
  `acc_no` varchar(110) NOT NULL,
  `country` text NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `mem_typ` varchar(5) NOT NULL default 'ms',
  `status` int(11) NOT NULL default '0',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ms_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `master_details`
--

INSERT INTO `master_details` (`ms_id`, `memtype`, `firmname`, `name`, `email`, `mob`, `gender`, `pass`, `address`, `acc_typ`, `acc_no`, `country`, `state`, `city`, `pin`, `mem_typ`, `status`, `timestamp`) VALUES
(2, 'master', 'kmkm', 'BASIRHAT NET WORLD', 'info@avnstechno.com', '1212121', 'Female', '1212', '2scscsc1scs', 'Savings', '2121', '', 'cscscsc', 'cscs', '545', 'ms', 0, '2018-11-30 16:03:24'),
(3, 'master', 'scs', 'cscsc', 'cscsc', 'scsc', 'Male', 'scscs', 'scscs', 'Savings', 'scsc', '', 'scsc', 'cscsc', 'scsc', 'ms', 0, '2018-12-01 14:48:56'),
(4, 'distributor', 'cscscscsc', 'cscsc', 'cscsc', 'scsc', 'Male', 'scscs', 'scscs', 'Current', 'scsc', '', 'scsc', 'cscsc', 'scsc', 'ms', 0, '2018-12-01 14:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE IF NOT EXISTS `mobile` (
  `mb_id` int(11) NOT NULL auto_increment,
  `mobile` varchar(12) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `operator` varchar(150) NOT NULL,
  `com_id` varchar(15) NOT NULL,
  `mem_typ` varchar(25) NOT NULL,
  `mem_id` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL default '1',
  PRIMARY KEY  (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `operator_details`
--

CREATE TABLE IF NOT EXISTS `operator_details` (
  `pro_id` int(11) NOT NULL auto_increment,
  `com_id` varchar(500) NOT NULL,
  `ser_id` int(11) NOT NULL,
  `api_provider` varchar(150) NOT NULL,
  `opcode` varchar(500) NOT NULL,
  `opname` varchar(500) NOT NULL,
  `shot_code` varchar(30) NOT NULL,
  `status` smallint(2) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `operator_details`
--

INSERT INTO `operator_details` (`pro_id`, `com_id`, `ser_id`, `api_provider`, `opcode`, `opname`, `shot_code`, `status`, `timestamp`) VALUES
(1, 'com11', 1, 'doopme', 'air0890', 'airtel', 'at', 1, '2018-12-15 14:55:38'),
(2, 'com11', 1, 'doopme', 'voda0890', 'vodafone', 'vf', 1, '2018-12-15 14:58:58'),
(3, 'com11', 4, 'doopme', 'irctc0890', 'IRCTC', 'IR', 1, '2018-12-15 14:59:29'),
(4, 'com11', 2, 'doopme', 'spice0890', 'SPICE JET', 'SJ', 1, '2018-12-15 15:00:21'),
(5, 'com11', 3, 'doopme', 'redb0890', 'RED BUS', 'RB', 1, '2018-12-15 15:00:41'),
(6, 'com11', 1, 'doopme', 'jio0890', 'JIO', 'JIO', 1, '2018-12-15 15:05:47'),
(7, 'com11', 4, 'doopme', 'yatra0890', 'YATRA', 'YR', 1, '2018-12-15 15:06:24'),
(8, 'com11', 3, 'doopme', 'sham0890', 'Shamyoli Bus', 'SB', 1, '2018-12-15 15:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `packages_details`
--

CREATE TABLE IF NOT EXISTS `packages_details` (
  `pac_id` int(11) NOT NULL auto_increment,
  `com_id` varchar(50) NOT NULL,
  `ser_id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `status` smallint(2) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`pac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `packages_details`
--

INSERT INTO `packages_details` (`pac_id`, `com_id`, `ser_id`, `package_name`, `status`, `timestamp`) VALUES
(4, 'com11', 4, 'Train Service', 1, '2018-12-11 15:38:18'),
(5, 'com11', 3, 'Bus Service', 1, '2018-12-11 15:38:40'),
(6, 'com11', 2, 'Flight Service', 1, '2018-12-11 15:38:49'),
(7, 'com11', 1, 'Recharge Package', 1, '2018-12-11 15:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `package_assigner`
--

CREATE TABLE IF NOT EXISTS `package_assigner` (
  `pac_ass_id` int(11) NOT NULL auto_increment,
  `com_id` varchar(50) NOT NULL,
  `pac_id` int(11) NOT NULL,
  `mem_id` varchar(50) NOT NULL,
  `mem_typ` varchar(50) NOT NULL,
  `opcode` varchar(100) NOT NULL,
  `charge` varchar(50) NOT NULL default '0',
  `char_typ` varchar(5) NOT NULL default 'p',
  `commission` varchar(100) NOT NULL default '0',
  `com_typ` varchar(5) NOT NULL default 'p',
  `status` smallint(2) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`pac_ass_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `package_assigner`
--

INSERT INTO `package_assigner` (`pac_ass_id`, `com_id`, `pac_id`, `mem_id`, `mem_typ`, `opcode`, `charge`, `char_typ`, `commission`, `com_typ`, `status`, `timestamp`) VALUES
(1, 'com11', 7, '2', 'ms', 'air0890', '12', 'p', '43', 'r', 1, '2018-12-16 10:38:37'),
(2, 'com11', 7, '2', 'ms', 'voda0890', '12', 'p', '150', 'r', 1, '2018-12-21 15:36:48'),
(3, 'com11', 7, '2', 'ms', 'jio0890', '12', 'p', '23', 'p', 1, '2018-12-21 15:34:13'),
(4, 'com11', 7, '3', 'ms', 'air0890', '12', 'p', '43', 'r', 1, '2018-12-16 10:38:37'),
(5, 'com11', 7, '3', 'ms', 'voda0890', '12', 'p', '150', 'r', 1, '2018-12-21 15:36:48'),
(6, 'com11', 7, '3', 'ms', 'jio0890', '12', 'p', '23', 'p', 1, '2018-12-21 15:34:13'),
(7, 'com11', 7, '4', 'ms', 'air0890', '12', 'p', '43', 'r', 1, '2018-12-16 10:38:37'),
(8, 'com11', 7, '4', 'ms', 'voda0890', '12', 'p', '150', 'r', 1, '2018-12-21 15:36:48'),
(9, 'com11', 7, '4', 'ms', 'jio0890', '12', 'p', '23', 'p', 1, '2018-12-21 15:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `postpaid`
--

CREATE TABLE IF NOT EXISTS `postpaid` (
  `pp_id` int(11) NOT NULL auto_increment,
  `com_id` varchar(25) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `mem_type` varchar(25) NOT NULL,
  `mem_id` varchar(15) NOT NULL,
  `number` varchar(15) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL,
  `status` int(11) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`pp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `postpaid`
--

INSERT INTO `postpaid` (`pp_id`, `com_id`, `operator`, `mem_type`, `mem_id`, `number`, `amount`, `date`, `status`, `timestamp`) VALUES
(1, 'c101', 'tsky', 'ms', '1001', '122121', '212121', '', 0, '2018-12-08 12:56:19'),
(2, 'c101', 'tsky', 'ms', '1001', '2121212', '2121212', '', 0, '2018-12-08 12:58:16'),
(3, 'c101', 'tsky', 'ms', '1001', '1212', '121212', '', 1, '2018-12-08 13:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `retailer_details`
--

CREATE TABLE IF NOT EXISTS `retailer_details` (
  `rt_id` int(11) NOT NULL auto_increment,
  `ds_id` varchar(50) NOT NULL,
  `firmname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `mob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `acc_typ` varchar(10) NOT NULL,
  `acc_no` varchar(110) NOT NULL,
  `country` text NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `mem_typ` varchar(5) NOT NULL default 'rt',
  `status` int(11) NOT NULL default '0',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`rt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `retailer_details`
--

INSERT INTO `retailer_details` (`rt_id`, `ds_id`, `firmname`, `name`, `email`, `mob`, `gender`, `pass`, `address`, `acc_typ`, `acc_no`, `country`, `state`, `city`, `pin`, `mem_typ`, `status`, `timestamp`) VALUES
(1, '2', 'avyan limited', 'avyan', 'thakursantoz11@gmail.com', '0123654878', 'M', 'e10adc3949ba59abbe56e057f20f883e', 'champasari', 'S', '012345698701', 'india', 'wb', 'slg', '123456', 'rt', 0, '2018-12-02 13:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `services_details`
--

CREATE TABLE IF NOT EXISTS `services_details` (
  `ser_id` int(11) NOT NULL auto_increment,
  `com_id` varchar(500) NOT NULL,
  `service_name` varchar(500) NOT NULL,
  `status` int(11) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ser_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `services_details`
--

INSERT INTO `services_details` (`ser_id`, `com_id`, `service_name`, `status`, `timestamp`) VALUES
(1, 'com11', 'recharge', 1, '2018-12-09 11:45:56'),
(2, 'com11', 'Flight', 1, '2018-12-09 11:46:00'),
(3, 'com11', 'Bus', 1, '2018-12-09 11:46:03'),
(4, 'com11', 'Train', 1, '2018-12-09 11:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_customer`
--

CREATE TABLE IF NOT EXISTS `wallet_customer` (
  `cus_wal_id` int(11) NOT NULL auto_increment,
  `com_id` varchar(25) NOT NULL,
  `mem_id` varchar(25) NOT NULL,
  `mem_typ` varchar(4) NOT NULL,
  `wal_bal` varchar(25) NOT NULL default '0',
  `credit` int(11) NOT NULL,
  `debit` int(11) NOT NULL,
  `net_wal` int(11) NOT NULL,
  `desc` text NOT NULL,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`cus_wal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `wallet_customer`
--

INSERT INTO `wallet_customer` (`cus_wal_id`, `com_id`, `mem_id`, `mem_typ`, `wal_bal`, `credit`, `debit`, `net_wal`, `desc`, `timestamp`) VALUES
(8, 'com11', '1', 'rt', '120', 0, 30, 90, 'asdf', '0000-00-00 00:00:00'),
(9, 'com11', '2', 'ms', '0', 5000, 0, 5000, 'opening wallet', '2018-12-05 15:43:42'),
(10, 'com11', '3', 'ms', '0', 30, 0, 30, 'opening balnace', '2018-12-05 15:53:51'),
(11, 'com11', '3', 'ms', '30', 30, 0, 60, 'asd', '2018-12-05 15:54:07'),
(12, 'com11', '3', 'ms', '60', 60, 0, 120, 'dsaf', '2018-12-05 15:56:15'),
(13, 'com11', '4', 'ms', '0', 5000, 0, 5000, '', '2018-12-05 15:57:38'),
(14, 'com11', '4', 'ms', '5000', 0, 500, 4500, '', '2018-12-05 15:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_lock`
--

CREATE TABLE IF NOT EXISTS `wallet_lock` (
  `wloc_id` int(11) NOT NULL auto_increment,
  `com_id` varchar(15) NOT NULL,
  `mem_id` varchar(15) NOT NULL,
  `mem_typ` varchar(25) NOT NULL,
  `loc_bal` varchar(100) NOT NULL,
  `status` int(11) NOT NULL default '1',
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`wloc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wallet_lock`
--

INSERT INTO `wallet_lock` (`wloc_id`, `com_id`, `mem_id`, `mem_typ`, `loc_bal`, `status`, `timestamp`) VALUES
(1, 'com11', '4', 'ms', '5000', 1, '2018-12-07 16:27:24'),
(2, 'com11', '3', 'ms', '5000', 1, '2018-12-07 16:27:24'),
(5, 'com11', '2', 'ms', '5000', 1, '2018-12-07 16:27:24'),
(6, 'com11', '2', 'ds', '5000', 1, '2018-12-07 16:03:37'),
(7, 'com11', '1', 'ds', '5000', 1, '2018-12-07 16:03:37'),
(8, 'com11', '1', 'rt', '5000', 1, '2018-12-07 16:04:08'),
(9, 'com11', 'b', 'ds', '5000', 1, '2018-12-07 16:27:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
