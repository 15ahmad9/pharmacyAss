-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 01:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `ID` int(10) NOT NULL,
  `Locations` varchar(20) DEFAULT NULL,
  `Managerusername` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`ID`, `Locations`, `Managerusername`) VALUES
(1, 'Amman', 1),
(2, 'Irbid', 1),
(3, 'Aqaba', 1),
(4, 'Zarqa', 1),
(5, 'Al Karak', 1),
(6, 'Ma\'an', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` int(11) NOT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `Password`, `Name`) VALUES
(1, '1234', 'AhmadGhanem');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `ProductionDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `BranchesID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `Type`, `ProductionDate`, `ExpiryDate`, `BranchesID`) VALUES
(5, 'panadol', NULL, '2022-07-05', '2025-09-15', 1),
(6, 'adol', NULL, '2021-01-07', '2023-10-07', 1),
(7, 'panda', NULL, '2020-07-10', '2023-10-07', 1),
(8, 'Halothane', NULL, NULL, NULL, 2),
(9, 'Thiopental', NULL, NULL, NULL, 2),
(10, 'Albendazole', NULL, NULL, NULL, 3),
(11, 'Levamisole', NULL, NULL, NULL, 3),
(12, 'Mebendazole', NULL, NULL, NULL, 3),
(13, ' Praziquantel', NULL, NULL, NULL, 3),
(14, 'Ampicillin', NULL, NULL, NULL, 4),
(15, 'Doxycycline', NULL, NULL, NULL, 4),
(16, 'Spectinomycin', NULL, NULL, NULL, 5),
(17, 'trimethoprim', NULL, NULL, NULL, 5),
(18, 'Rifampicin', NULL, NULL, NULL, 5),
(19, 'Dapsone', NULL, NULL, NULL, 5),
(20, 'Amodiaquine', NULL, NULL, NULL, 6),
(21, 'Amodiaquine', NULL, '2023-01-01', '2024-03-07', 1),
(22, 'Tareg ', NULL, '2021-01-07', '2023-10-07', 1),
(23, 'Tareg ', NULL, NULL, NULL, 6),
(24, 'Dapsone', NULL, '2023-01-01', '2025-09-15', 1),
(25, 'Dapsone', NULL, NULL, NULL, 6),
(27, 'cortizon', NULL, NULL, NULL, 2),
(28, 'cortizon', NULL, '2022-07-05', '2025-09-15', 1),
(29, 'panadol', NULL, NULL, NULL, 6),
(30, 'abatacept', NULL, '2022-12-23', '2023-04-14', 1),
(31, 'abramycin', NULL, '2023-01-10', '2025-01-16', 1),
(32, 'adapalene', NULL, NULL, NULL, 2),
(33, 'Acepromazine', NULL, '2023-01-04', '2026-01-15', 1),
(34, 'acidapsone', NULL, NULL, NULL, 5),
(35, 'acyclidine ', NULL, NULL, NULL, 4),
(36, 'Acimetacin', NULL, '2022-07-05', '2025-01-16', 1),
(37, 'agomelatine', NULL, NULL, NULL, 4),
(38, 'oxymetazoline', NULL, NULL, NULL, 4),
(39, 'acarbose', NULL, NULL, NULL, 4),
(40, 'alaproclat', NULL, NULL, NULL, 6),
(41, ' altinicline ', NULL, NULL, NULL, 6),
(42, 'Amlodipine', NULL, NULL, NULL, 5),
(43, 'revanine', NULL, NULL, NULL, 4),
(44, 'FLUIBRON', NULL, NULL, NULL, 3),
(45, 'FLUIBRON', NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `phoneNumber` int(10) DEFAULT NULL,
  `Question` varchar(255) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`phoneNumber`, `Question`, `Name`, `ID`) VALUES
(781977173, 'How is the medicine stored properly?', 'Ahmad Ghanem', 1),
(785625120, 'hello', 'mohammed', 7),
(798546978, 'hello doctor', 'laith', 8),
(788587898, 'Are there any side effects associated with taking this drug?', 'hala', 9),
(778963254, 'What are the instructions for taking this medicine?', 'karam', 10),
(798741256, 'What are drug interactions?', 'qusai', 11),
(778954120, 'What do I do if I miss a dose?', 'Rawan', 12),
(775210045, 'Hiiiii', 'Mais', 13),
(775210045, 'hi', 'Tamer', 14),
(781977173, 'hello dr', 'Ahmad', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKBranches691351` (`Managerusername`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `FKProduct572707` (`BranchesID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `username` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `FKBranches691351` FOREIGN KEY (`Managerusername`) REFERENCES `manager` (`username`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKProduct572707` FOREIGN KEY (`BranchesID`) REFERENCES `branches` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
