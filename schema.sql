/*
Copyright (C) 2012 Shaohuan Li <shaohuan.li@gmail.com>, Ashish Sharma <ashish.sharma@emory.edu>
This file is part of Biomedical Image Viewer developed under the Google of Summer of Code 2012 program.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
*/
-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 23, 2012 at 11:12 PM
-- Server version: 5.5.24
-- PHP Version: 5.3.10-1ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bio`
--

-- --------------------------------------------------------

--
-- Table structure for table `annotation`
--

CREATE TABLE IF NOT EXISTS `annotation` (
  `aid` int(16) NOT NULL AUTO_INCREMENT,
  `iid` int(8) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `w` float NOT NULL,
  `h` float NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `iid` (`iid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=203 ;

--
-- Dumping data for table `annotation`
--

INSERT INTO `annotation` (`aid`, `iid`, `x`, `y`, `w`, `h`, `type`, `points`, `text`, `color`) VALUES
(134, 3, 0.171, 0.178744, 0.049, 0.164251, 'rect', '', 'hey', 'lime'),
(137, 3, 0.295, 0.26087, 0.036, 0.140097, 'rect', '', 'hey', 'lime'),
(143, 2, 0, 0, 0, 0, 'rect', '', 'hoho', 'lime'),
(154, 2, 0.109, 0.176328, 0.0165, 0.0869565, 'ellipse', '', 'hohoho', 'lime'),
(155, 2, 0.441, 0.454106, 0.045, 0.125604, 'rect', '', 'hehe', 'lime'),
(157, 2, 0.223, 0.202899, 0.083, 0.00966184, 'line', '0.306,0.1932367149758454', '1.658212138842237mm', 'purple'),
(158, 2, 0.368, 0.125604, 0.048, 0.125604, 'rect', '', 'hoho', 'purple'),
(160, 2, 0.127, 0.0531401, 0.028, 0.227053, 'polyline', '0.127,0.05314009661835749 0.159,0.14009661835748793 0.155,0.28019323671497587 0.155,0.28019323671497587', 'hoho', 'lime'),
(188, 2, 0.452, 0.120773, 0.03, 0.149758, 'rect', '', 'hye', 'lime'),
(189, 2, 0.505, 0.0917874, 0.04, 0.130435, 'ellipse', '', 'hoho', 'lime'),
(190, 2, 0.599, 0.236715, 0.043, 0.00483092, 'polyline', '0.599,0.23671497584541062 0.576,0.36231884057971014 0.556,0.2318840579710145 0.58,0.11594202898550725 0.58,0.11594202898550725', 'haha', 'lime'),
(191, 2, 0.191, 0.381643, 0.129, 0.120773, 'pencil', '0.191,0.38164251207729466 0.19,0.391304347826087 0.19,0.40096618357487923 0.19,0.41545893719806765 0.191,0.45893719806763283 0.192,0.4830917874396135 0.195,0.5169082125603864 0.197,0.5314009661835749 0.198,0.5410628019323671 0.202,0.5555555555555556 0.211,0.5700483091787439 0.218,0.5797101449275363 0.226,0.5797101449275363 0.234,0.5797101449275363 0.247,0.5748792270531401 0.254,0.5652173913043478 0.259,0.5555555555555556 0.261,0.5410628019323671 0.263,0.5120772946859904 0.265,0.463768115942029 0.265,0.42028985507246375 0.262,0.3719806763285024 0.261,0.357487922705314 0.26,0.357487922705314 0.258,0.3526570048309179 0.255,0.3526570048309179 0.251,0.36231884057971014 0.249,0.3719806763285024 0.247,0.391304347826087 0.244,0.43478260869565216 0.241,0.48792270531400966 0.24,0.5314009661835749 0.241,0.5700483091787439 0.241,0.5845410628019324 0.242,0.5990338164251208 0.246,0.6135265700483091 0.255,0.6328502415458938 0.262,0.6328502415458938 0.274,0.6280193236714976 0.284,0.6183574879227053 0.295,0.5990338164251208 0.302,0.5797101449275363 0.311,0.5458937198067633 0.316,0.5217391304347826 0.32,0.5024154589371981 0.32,0.4975845410628019', 'hoho', 'lime'),
(192, 2, 0.054, 0.164251, 0.046, 0.323671, 'pencil', '0.054,0.1642512077294686 0.053,0.1642512077294686 0.047,0.27053140096618356 0.05,0.3188405797101449 0.053,0.357487922705314 0.057,0.4057971014492754 0.061,0.42995169082125606 0.065,0.45893719806763283 0.068,0.46859903381642515 0.074,0.48792270531400966 0.08,0.4975845410628019 0.083,0.5024154589371981 0.086,0.5024154589371981 0.096,0.4975845410628019 0.098,0.4927536231884058 0.1,0.48792270531400966 0.102,0.47342995169082125 0.104,0.4492753623188406 0.106,0.43478260869565216 0.106,0.42028985507246375;0.054,0.1642512077294686 0.053,0.1642512077294686 0.047,0.27053140096618356 0.05,0.3188405797101449 0.053,0.357487922705314 0.057,0.4057971014492754 0.061,0.42995169082125606 0.065,0.45893719806763283 0.068,0.46859903381642515 0.074,0.48792270531400966 0.08,0.4975845410628019 0.083,0.5024154589371981 0.086,0.5024154589371981 0.096,0.4975845410628019 0.098,0.4927536231884058 0.1,0.48792270531400966 0.102,0.47342995169082125 0.104,0.4492753623188406 0.106,0.43478260869565216 0.106,0.42028985507246375', 'hoho', 'red'),
(193, 2, 0.195, 0.188406, 0.107, 0.130435, 'line', '0.302,0.057971014492753624', '2.2040626529348506mm', 'red'),
(198, 1, 0.578, 0.281553, 0.106, 0.300971, 'polyline', '0.578,0.2815533980582524 0.57,0.3883495145631068 0.684,0.5825242718446602 0.664,0.13592233009708737 0.664,0.13592233009708737', 'hey', 'lime'),
(199, 1, 0.05, 0.0582524, 0.104, 0.504854, 'pencil', '0.05,0.05825242718446602 0.048,0.06796116504854369 0.048,0.07766990291262135 0.046,0.0970873786407767 0.042,0.13592233009708737 0.04,0.18446601941747573 0.038,0.22330097087378642 0.038,0.2524271844660194 0.038,0.30097087378640774 0.04,0.34951456310679613 0.046,0.4174757281553398 0.054,0.44660194174757284 0.062,0.47572815533980584 0.074,0.5048543689320388 0.08,0.5048543689320388 0.094,0.5048543689320388 0.106,0.4854368932038835 0.126,0.4174757281553398 0.14,0.3592233009708738 0.154,0.2912621359223301 0.154,0.2815533980582524 0.152,0.27184466019417475 0.15,0.27184466019417475 0.148,0.27184466019417475 0.142,0.27184466019417475 0.136,0.2815533980582524 0.132,0.2912621359223301 0.128,0.3106796116504854 0.12,0.3592233009708738 0.118,0.3786407766990291 0.116,0.42718446601941745 0.116,0.4368932038834951 0.116,0.4563106796116505 0.12,0.47572815533980584 0.122,0.4854368932038835 0.128,0.5048543689320388 0.136,0.5242718446601942 0.15,0.5631067961165048 0.154,0.5631067961165048', 'hoho', 'lime'),
(200, 3, 0.44, 0.184466, 0.108, 0.291262, 'polyline', '0.44,0.18446601941747573 0.518,0.13592233009708737 0.548,0.47572815533980584 0.47,0.6990291262135923 0.438,0.5048543689320388 0.462,0.3592233009708738 0.462,0.3592233009708738', 'hey', 'lime');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `iid` int(8) NOT NULL,
  `pName` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pAge` int(3) NOT NULL,
  `modality` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maxWid` int(11) NOT NULL,
  `maxHei` int(11) NOT NULL,
  `ratio` float NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`iid`, `pName`, `pAge`, `modality`, `location`, `maxWid`, `maxHei`, `ratio`) VALUES
(1, 'peter', 12, 'nothing', '/usr/share/iip/3.tif', 1000, 200, 200),
(2, 'lily', 30, 'jijiji', '/usr/share/iip/3.tif', 0, 0, 0),
(3, 'sam', 50, 'noghing', '/usr/share/iip/3.tif', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `sid` int(16) NOT NULL AUTO_INCREMENT,
  `iid` int(8) NOT NULL,
  `lft` int(11) NOT NULL,
  `top` int(11) NOT NULL,
  `zoom` int(11) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `iid` (`iid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sid`, `iid`, `lft`, `top`, `zoom`) VALUES
(1, 1, 20, 30, 3),
(2, 1, 0, 0, 3),
(3, 1, 0, 0, 3),
(4, 1, 0, 0, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `annotation`
--
ALTER TABLE `annotation`
  ADD CONSTRAINT `annotation_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `image` (`iid`);

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `image` (`iid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
