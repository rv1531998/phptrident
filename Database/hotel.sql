-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 04, 2018 at 08:21 AM
-- Server version: 5.7.21-0ubuntu0.17.10.1
-- PHP Version: 7.1.15-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_email` varchar(255) NOT NULL,
  `feedback` text NOT NULL,
  `f_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_email`, `feedback`, `f_time`) VALUES
('abcd@gmail.com', 'Well, you are good at your work.', '2018-04-03 23:33:59'),
('abcde@gmail.com', 'hii again', '2018-04-04 00:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `r_id` int(30) NOT NULL DEFAULT '0',
  `r_chkindt` varchar(50) NOT NULL DEFAULT '',
  `r_chkoutdt` varchar(50) NOT NULL DEFAULT '',
  `r_rooms` varchar(20) NOT NULL DEFAULT '0',
  `r_type` varchar(20) NOT NULL DEFAULT '',
  `r_name` varchar(50) NOT NULL DEFAULT '',
  `r_email` varchar(100) NOT NULL DEFAULT '',
  `r_company` varchar(50) NOT NULL DEFAULT '',
  `r_phone` varchar(20) NOT NULL DEFAULT '0',
  `r_address` varchar(200) NOT NULL DEFAULT '',
  `r_spanyreq` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`r_id`, `r_chkindt`, `r_chkoutdt`, `r_rooms`, `r_type`, `r_name`, `r_email`, `r_company`, `r_phone`, `r_address`, `r_spanyreq`) VALUES
(8, '24-3-2010', '24-4-2010', '8', 'deluxe', 'finava vipul', 'f_v@gmail.com', 'abc', '9825817442', 'Anida', 'no'),
(7, '24-3-2010', '28-3-2010', '17', 'deluxe', 'nikunj', 'n@yahoo.com', 'nn', '9601626442', 'Lathi', 'yes'),
(6, '2008-3-4', '2010-3-8', '1', '2600', 'vipul', 'v@gmail.com', 'sd', '9825817442', 'Anida', 'no '),
(8, '24-3-2010', '30-3-2010', '14', 'delux', 'vishal', 'vishal@ya.com', 'vishal', '972580180', 'Anida', 'no'),
(9, '25-3-2010', '28-3-2010', '3', 'deluxe', 'vipul', 'vipul@yahoo.com', 'lg', '9825817442', 'Anida', 'no '),
(0, '2008-3-4', '2010-3-8', '1', '2600', 'vipul', 'v@gmail.com', 'sd', '9825817442', 'Anida', 'no ');

-- --------------------------------------------------------

--
-- Table structure for table `tariff`
--

CREATE TABLE `tariff` (
  `type` varchar(50) NOT NULL DEFAULT '',
  `inrsin` varchar(30) NOT NULL DEFAULT '0',
  `inrdbl` varchar(30) NOT NULL DEFAULT '0',
  `usdsin` varchar(30) NOT NULL DEFAULT '0',
  `usddbl` varchar(30) NOT NULL DEFAULT '0',
  `avroom` int(3) NOT NULL DEFAULT '0',
  `totroom` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tariff`
--

INSERT INTO `tariff` (`type`, `inrsin`, `inrdbl`, `usdsin`, `usddbl`, `avroom`, `totroom`) VALUES
('standard', '2600', '3100', '80', '90', 17, 6),
('deluxe', '3100', '3600', '90', '110', 10, 15),
('suite', '2100', '3200', '80', '100', 9, 10),
('delux', '1100', '2200', '50', '80', 25, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwords` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `passwords`) VALUES
('ab', 'ab@gmail.com', '$2y$10$ilvnCdo90c9.oFtjXAbphevJ3aHCVugMYPFD32POhCIx2FEpfi.De'),
('abc', 'abc@gmail.com', '$2y$10$yeWCHgeTmjgUo.6rxwGRnuyGKnYsLutr/25v8do.nmDRgUZJomgU.'),
('abcd', 'abcd@gmail.com', '$2y$10$XUfYQcNitaDjDI0JE38MzerCgfmNigOi7ky1eDGDkaamBsFL4SG.2'),
('abcde', 'abcde@gmail.com', '$2y$10$B5BvhLEmjxJH5vjg4ltd7OxeuGbP5RzSyUC4TtyIq8eV5OGVfkk7S'),
('abcdef', 'abcdef@gmail.com', '$2y$10$qCl9icAKYIqa/FlS91qHDeq5RFMLTYuL507RPBXc63TTZ3HHvoDgK'),
('ankit123', 'ankit123@gmail.com', '$2y$10$lFhduzK.TDNO.5mI2d/vEeJUf0dxOafHs8Bvwhfts6TOe527wl6Aa'),
('iamankit', 'ankit@example.com', '$2y$10$Fc2czeliVRaaQVLW6zueO.W1R88TapjNtuREIXcnwTL4K/OVcHAv.'),
('ankit chouhan', 'ankitchouhan1020@gmail.com', '$2y$10$RG9Xwtw/xnD.5xIPXk/nGOUKi54KXvVX4YI1/0qaQGOHmYAGY4KJS'),
('rahul', 'rv1531998@gmail.com', '$2y$10$.kLTzK81kT9wb3VbUP4QX.fw1TOwpdt8UGd93ODGgvQGiw/vefKFW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_email`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `Foreign key` FOREIGN KEY (`f_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
