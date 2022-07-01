-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 01:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internetovizija`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(25) NOT NULL,
  `categoryid` int(25) NOT NULL,
  `addonsname` varchar(255) NOT NULL,
  `addonsprice` varchar(255) NOT NULL,
  `addonprice1` varchar(255) NOT NULL,
  `addonsprice2` varchar(255) NOT NULL,
  `addonsprice3` varchar(255) NOT NULL,
  `addonsprice4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `categoryid`, `addonsname`, `addonsprice`, `addonprice1`, `addonsprice2`, `addonsprice3`, `addonsprice4`) VALUES
(1, 2, 'Plesk Web Pro License (Up to 30 accounts )', '191.88 EUR Annually', '90.99 EUR Semi-Annually', '50.99 EUR Quarterly', '19.99 EUR Monthly', '250.99 EUR Bennially'),
(2, 2, 'Additional IP (1 additional IPv4 address)', '19.99 EUR Once', '', '', '', ''),
(3, 1, 'DirectAdmin Lite License (10 accounts)', '159.99 EUR Annually', '89.99 EUR Semi-Annually', '39.99 EUR Quarterly', '9.99 EUR Monthly', '259.99 EUR Biennially'),
(4, 1, 'DirectAdmin Standard License (Unlimited)', '348.00 EUR Annually', '159.99 EUR Semi-Annually', '109.99 EUR Quarterly', '59.99 EUR Monthly', '500.99 EUR Biennially'),
(5, 1, 'cPanel Admin License (Up to 5 accounts)', '209.99 EUR Annually', '109.99 EUR Semi-Annually', '69.99 EUR Quarterly', '159.99 EUR Annually', '409.99 EUR Biennially'),
(6, 1, ' Additional IP (1 additional IPv4 address)', '19.99 EUR Once', '', '', '', ''),
(7, 1, 'CloudLinux License', '143.99 EUR Annually', '89.99 EUR Semi-Annually', '59.99 EUR Quarterly', '159.99 EUR Annually', '259.99 EUR Biennially'),
(8, 3, 'Additional IP (1 additional IPv4 address)', '19.99 EUR Once', '', '', '', ''),
(9, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(25) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `price` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`, `price`) VALUES
(1, 'Linux', 'From 4.99'),
(2, 'Windows', 'From 5.99'),
(3, 'Storage VPS', 'From 8.99'),
(4, 'Secure VPN', 'From 15.99');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(25) NOT NULL,
  `categoryid` int(25) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `fromproductprice` varchar(255) NOT NULL,
  `productdesceiption` text NOT NULL,
  `productprice` varchar(255) NOT NULL,
  `productprice1` varchar(255) NOT NULL,
  `productprice2` varchar(255) NOT NULL,
  `productprice3` varchar(255) NOT NULL,
  `productprice4` varchar(255) NOT NULL,
  `productdesceiption1` varchar(255) NOT NULL,
  `productdesceiption2` varchar(255) NOT NULL,
  `productdesceiption3` varchar(255) NOT NULL,
  `productdesceiption4` text NOT NULL,
  `productdesceiption5` varchar(255) NOT NULL,
  `productdesceiption6` varchar(255) NOT NULL,
  `productdesceiption7` varchar(255) NOT NULL,
  `addons` varchar(255) NOT NULL,
  `addons1` varchar(255) NOT NULL,
  `addons2` varchar(255) NOT NULL,
  `addons3` varchar(255) NOT NULL,
  `addons4` varchar(255) NOT NULL,
  `addons5` varchar(255) NOT NULL,
  `addons6` varchar(255) NOT NULL,
  `addons7` varchar(255) NOT NULL,
  `addprice` varchar(255) NOT NULL,
  `addprice1` varchar(255) NOT NULL,
  `addprice2` varchar(255) NOT NULL,
  `addprice3` varchar(255) NOT NULL,
  `addprice4` varchar(255) NOT NULL,
  `addprice5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categoryid`, `productname`, `fromproductprice`, `productdesceiption`, `productprice`, `productprice1`, `productprice2`, `productprice3`, `productprice4`, `productdesceiption1`, `productdesceiption2`, `productdesceiption3`, `productdesceiption4`, `productdesceiption5`, `productdesceiption6`, `productdesceiption7`, `addons`, `addons1`, `addons2`, `addons3`, `addons4`, `addons5`, `addons6`, `addons7`, `addprice`, `addprice1`, `addprice2`, `addprice3`, `addprice4`, `addprice5`) VALUES
(1, 1, 'Linux 2', '(4.99 EUR per month)', 'CPU: 1 x 2.60 GHz\r\n\r\n\r\n\r\n\r\n\r\n', '4.99 EUR Monthly\r\n\r\n\r\n\r\n', '14.99 EUR Quarterly', '29.94 EUR Semi-Annually', '49.99 EUR Annually', '80.99 EUR Biennially', 'RAM: 2048 MB', 'Storage: 20 GB', 'Bandwidth: 4 TB', 'Port speed: 100 Mbps', 'Backups: Optional', 'Virtualization: KVM', '', 'DirectAdmin Standard License (Unlimited)', 'BitNinja License', 'Plesk Web Pro License (Up to 30 accounts )', 'cPanel Premier License (Up to 100 accounts)', 'Additional IP (1 additional IPv4 address)', '', '', '', '19.99 EUR Once', '9.99 EUR Monthly', '39.99 EUR Quarterly', '79.99 EUR Semi-Annually', '109.9 EUR Annually', '209.99 EUR Biennially'),
(2, 1, 'Linux 4', '(5.99 EUR per Month)', 'CPU: 1 x 2.60 GHz\r\n\r\n\r\n\r\n\r\n\r\n', '5.99 EUR Monthly\r\n\r\n\r\n\r\n', '19.99 EUR Quarterly', '25.94 EUR Semi-Annually', '59.99 EUR Annually', '90.99 EUR Biennially', 'RAM: 4096 MB', 'Storage: 40 GB', 'Bandwidth: 8 TB', 'Port speed: 100 Mbps', 'Backups: Optional', 'Virtualization: KVM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 1, 'Linux 8', '(12.99 EUR per Month)', 'CPU: 2 x 2.60 GHz\r\n\r\n\r\n\r\n\r\n\r\n', '12.99 EUR Monthly\r\n\r\n\r\n\r\n', '32.99 EUR Quarterly', '59.94 EUR Semi-Annually', '150.99 EUR Biennially', '119.99 EUR Annually', 'RAM: 8192 MB', 'Storage: 80 GB', 'Bandwidth: 16 TB', 'Port speed: 100 Mbps', 'Backups: Optional', 'Virtualization: KVM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 1, 'Linux 16', '(23.99 per Month)', 'CPU: 4 x 2.60 GHz\r\n\r\n\r\n\r\n\r\n\r\n', '23.99 EUR Monthly\r\n\r\n\r\n', '43.99 EUR Quarterly', '93.94 EUR Semi-Annually', '183.99 EUR Annually', '200.99 EUR Biennially', 'RAM: 16384 MB', 'Storage: 160 GB', 'Bandwidth: 32 TB', 'Port speed: 100 Mbps', 'Backups: Optional', 'Virtualization: KVM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 2, 'Windows 2', '(10.99 EUR per Month)', 'CPU: 1 x 2.60 GHz\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '10.99 EUR Monthly\r\n\r\n\r\n\r\n', '33.99 EUR Quarterly', '53.94 EUR Semi-Annually', '109.99 EUR Annually', '150.99 EUR Biennially', 'RAM: 2 GB', 'Storage: 40 GB', 'Bandwidth: 4 TB', 'Port speed: 100 Mbps', 'Backups: Optional', 'Available OS: Windows 2012 / 2016 / 2019', 'Virtualization: KVM', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 2, 'Windows 4', '(15.99 EUR per Month)', 'CPU: 1 x 2.60 GHz\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '10.99 EUR Monthly\r\n\r\n\r\n\r\n', '33.99 EUR Quarterly', '53.94 EUR Semi-Annually', '109.99 EUR Annually', '150.99 EUR Biennially', 'RAM: 4 GB', 'Storage: 60 GB', 'Bandwidth: 8 TB', 'Port speed: 100 Mbps', 'Backups: Optional', 'Available OS: Windows 2012 / 2016 / 2019', 'Virtualization: KVM', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 2, 'Windows 8', '(23.99 EUR per Month)', 'CPU: 2 x 2.60 GHz\r\n\r\n\r\n\r\n\r\n\r\n', '23.99 EUR Monthly\r\n\r\n\r\n\r\n', '53.99 EUR Quarterly', '73.94 EUR Semi-Annually', '123.99 EUR Annually', '183.99 EUR Biennially', 'RAM: 8 GB\r\n', 'Storage: 80 GB', 'Bandwidth: 16 TB', 'Port speed: 100 Mbps', 'Backups: Optional', 'Available OS: Windows 2012 / 2016 / 2019', 'Virtualization: KVM', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 2, 'Windows 16', '(44.99 EUR per Month)', 'CPU: 4 x 2.60 GHz\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '44.99 EUR Monthly\r\n\r\n\r\n\r\n', '104.99 EUR Quarterly', '134.94 EUR Semi-Annually', '169.99 EUR Annually', '200.99 EUR Biennially', 'RAM: 16 GB', 'Storage: 160 GB', 'Bandwidth: 32 TB', 'Port speed: 100 Mbps', 'Backups: Optional', 'Available OS: Windows 2012 / 2016 / 2019', 'Virtualization: KVM', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 3, '0.25 TB', '(3.99 EUR per Month)', 'CPU: 1 vCPU\r\n\r\n\r\n\r\n\r\n\r\n', '39.90 EUR Annually\r\n\r\n\r\n\r\n\r\n\r\n', '59.90 EUR Quarterly', '79.99 EUR Semi-Annually', '3.99 EUR Monthly', 'RAM: 0.5 GB', 'Storage: 256 GB (200 IOPS)', 'Bandwidth: 2 TB', 'Port speed: 100 Mbps', 'Backups: Unavailable', 'Virtualization: OpenVZ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 3, '0.5 TB', '(4.99 EUR per Month)', 'CPU: 1 vCPU\r\n\r\n\r\n\r\n\r\n\r\n', '49.90 EUR Annually\r\n\r\n\r\n', '19.90 EUR Quarterly', '29.99 EUR Semi-Annually', '4.99 EUR Monthly', 'RAM: 1 GB', 'Storage: 512 GB (200 IOPS)', 'Bandwidth: 4 TB', 'Port speed: 100 Mbps', 'Backups: Unavailable', 'Virtualization: OpenVZ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 3, '1 TB', '(7.99 EUR per Month)', 'CPU: 1 vCPU\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n7.99 EUR Monthly', '79.90 EUR Annually', '25.90 EUR Quarterly\r\n', '35.99 EUR Semi-Annually', 'RAM: 2 GB', 'Storage: 1024 GB (200 IOPS)', 'Bandwidth: 8 TB', 'Port speed: 100 Mbps', 'Backups: Unavailable', 'Virtualization: OpenVZ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 3, '2 TB', '(12.99 EUR per Month)', 'CPU: 1 vCPU\r\n\r\n\r\n\r\n\r\n\r\n', '129.90 EUR Annually\r\n\r\n\r\n', '30.90 EUR Quarterly', '60.99 EUR Semi-Annually', '12.99 EUR Monthly', 'RAM: 4 GB', 'Storage: 2048 GB (200 IOPS)', 'Bandwidth: 16 TB', 'Port speed: 100 Mbps', 'Backups: Unavailable', 'Virtualization: OpenVZ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 4, '1 TB', '(19.99 EUR per Month)', '1 TB bandwidth\r\n\r\n', '1.99 EUR Monthly\r\n\r\n\r\n\r\n\r\n', '19.99 EUR Annually', '9.99 EUR Semi-Annually', '5.99 EUR Quarterly', '', '1 device', 'AES-256 encryption', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 4, '2 TB', '(2.99 EUR per Month)', '2 TB bandwidth\r\n\r\n', '2.99 EUR Monthly\r\n\r\n\r\n', '29.99 EUR Annually', '15.99 EUR Semi-Annually', '9.99 EUR Quarterly', '', '2 devices', 'AES-256 encryption', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 4, '4 TB', '(3.99 EUR per Month)', '4 TB bandwidth\r\n\r\n', '3.99 EUR Monthly\r\n\r\n\r\n', '10.99 EUR Quarterly', '20.99 EUR Semi-Annually', '39.99 EUR Annually', '', 'AES-256 encryption', '4 devices', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 4, 'Unlimited', '(5.99 EUR per Month)', 'AES-256 encryption', '5.99 EUR Monthly\r\n\r\n\r\n', '59.99 EUR Annually', '29.99 EUR Semi-Annually', '19.99 EUR Quarterly', '', 'Unlimited bandwidth', '6 devices\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
