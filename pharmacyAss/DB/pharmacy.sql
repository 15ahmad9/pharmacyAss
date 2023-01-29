-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 02:23 AM
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
  `Price` double DEFAULT NULL,
  `Description` varchar(10000) DEFAULT NULL,
  `BranchesID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `Price`, `Description`, `BranchesID`) VALUES
(1, 'Panadol Extra Tablet (pkt/72pcs)', 7.2, 'Panadol Extra with Optizorb helps to provide stronger pain relief as compared to standard paracetamol alone. Containing the same active ingredients as Panadol Extra but using a new disintegrant techology, Panadol Extra with Optizorb provides fast, suitable, effective relief of tough pain, while being gentle on the stomach', 1),
(2, 'Motilium For Nausea And Vomiting 10Mg', 5.6, 'Motilium contains the medicine called domperidone. Motilium is used for adults and adolescents 12 years of age and older and a body weight of 35kg or more to treat nausea (feeling sick) and vomiting (being sick).', 1),
(3, 'Zirtek 1Mg', 8.5, 'Zirtek 1Mg / Ml Oral Solution is banana-flavoured and as little as one teaspoon a day is enough for up to 24 hour symptom relief. Particularly suitable for children who find it hard not to scratch rashes.', 1),
(4, 'Zirtek 1Mg', 8.5, 'Zirtek 1Mg / Ml Oral Solution is banana-flavoured and as little as one teaspoon a day is enough for up to 24 hour symptom relief. Particularly suitable for children who find it hard not to scratch rashes.', 2),
(5, 'Zirtek 1Mg', 8.5, 'Zirtek 1Mg / Ml Oral Solution is banana-flavoured and as little as one teaspoon a day is enough for up to 24 hour symptom relief. Particularly suitable for children who find it hard not to scratch rashes.', 3),
(6, 'Zirtek 1Mg', 8.5, 'Zirtek 1Mg / Ml Oral Solution is banana-flavoured and as little as one teaspoon a day is enough for up to 24 hour symptom relief. Particularly suitable for children who find it hard not to scratch rashes.', 4),
(7, 'Zirtek 1Mg', 8.5, 'Zirtek 1Mg / Ml Oral Solution is banana-flavoured and as little as one teaspoon a day is enough for up to 24 hour symptom relief. Particularly suitable for children who find it hard not to scratch rashes.', 5),
(8, 'Zirtek 1Mg', 8.5, 'Zirtek 1Mg / Ml Oral Solution is banana-flavoured and as little as one teaspoon a day is enough for up to 24 hour symptom relief. Particularly suitable for children who find it hard not to scratch rashes.', 6),
(9, 'Cetrine Hayfever Allergy Relief 10Mg', 2.5, 'Cetrine Hayfever Allergy Relief 10Mg Cetirizine Tablets suitable for children and adults.', 1),
(10, 'Preparation H Soothing Wipes 30 Pack', 2.85, 'Preparation H Soothing Wipes 30 Pack', 1),
(11, 'Preparation H Soothing Wipes 30 Pack', 2.85, 'Preparation H Soothing Wipes 30 Pack', 5),
(12, 'Anusol Hc Suppositories 12 Pack', 5.6, 'Anusol Hc Suppositories 12 Pack are used to effectively treat haemorrhoids (piles).', 1),
(13, 'Piriton Tablets 4Mg 30 Pack', 6.15, 'Piriton Allergy Relief Tablets 4Mg 30 Pack provided fast relief from the symptoms of hayfever and other allergies.', 1),
(14, 'Vermox Tablets For The Treatment Of Threadworm', 2.85, 'Vermox Tablets For The Treatment Of Threadworm 6 Tablets is a medicine used to treat common worm infections.', 1),
(15, 'Vermox Tablets For The Treatment Of Threadworm', 2.85, 'Vermox Tablets For The Treatment Of Threadworm 6 Tablets is a medicine used to treat common worm infections.', 3),
(16, 'Vermox Tablets For The Treatment Of Threadworm', 2.85, 'Vermox Tablets For The Treatment Of Threadworm 6 Tablets is a medicine used to treat common worm infections.', 2),
(17, 'Panadol Night', 6.6, 'Panadol Night Film Coated Tablets 20 Pack is specially formulated for the night-time relief of: colds and flu symptoms, muscular aches and pains, backache, headache, toothache, and period pain.', 1),
(18, 'Panadol Night', 6.6, 'Panadol Night Film Coated Tablets 20 Pack is specially formulated for the night-time relief of: colds and flu symptoms, muscular aches and pains, backache, headache, toothache, and period pain.', 2),
(19, 'Panadol Night', 6.6, 'Panadol Night Film Coated Tablets 20 Pack is specially formulated for the night-time relief of: colds and flu symptoms, muscular aches and pains, backache, headache, toothache, and period pain.', 3),
(20, 'Panadol Night', 6.6, 'Panadol Night Film Coated Tablets 20 Pack is specially formulated for the night-time relief of: colds and flu symptoms, muscular aches and pains, backache, headache, toothache, and period pain.', 4),
(21, 'Panadol Night', 6.6, 'Panadol Night Film Coated Tablets 20 Pack is specially formulated for the night-time relief of: colds and flu symptoms, muscular aches and pains, backache, headache, toothache, and period pain.', 5),
(22, 'Panadol Night', 6.6, 'Panadol Night Film Coated Tablets 20 Pack is specially formulated for the night-time relief of: colds and flu symptoms, muscular aches and pains, backache, headache, toothache, and period pain.', 6),
(23, 'Advil Cold & Flu Tablets Pack', 4.95, 'Advil Cold & Flu tablets contain two active ingredients which work together to relieve the major symptoms of sinus and pain:  Ibuprofen relieves pain, reduces inflammation and lowers temperature  Pseudoephedrine is an effective decongestantto ease nasal and sinus congestion.', 1),
(24, 'Murine Eye Drops Bright Mois', 9, 'Murine Eye Drops Bright and Moist is specially formulated to contain both a lubricant and a brightener to help refresh, soothe, alleviate the symptoms of dry eyes and make them sparkle.', 1),
(25, 'Listerine Coolmint 500Ml', 3.25, 'Listerine Coolmint 500Ml for a cleaner fresher mouth than brushing alone.', 1),
(26, 'Panadol 500Mg', 2.5, 'Panadol 500mg Paracetamol tablets are used for fast and effective relief of headaches, toothache, backache, rheumatic and muscle pains and period pain.', 1),
(27, 'Telfast Allergy 120Mg 30 Pack', 8.4, 'Telfast Allergy 120mg is indicated in adults and children 12 years and older for the relief of symptoms associated with seasonal allergic rhinitis.', 1),
(28, 'Strepsils Intensive Honey & Lemon Lozenges', 7.45, 'For the symptomatic relief of sore throats. Strepsils Intensive Lozenges are indicated in adults and adolescents over 12 years of age.', 1),
(29, 'Strepsils Intensive Honey & Lemon Lozenges', 7.45, 'For the symptomatic relief of sore throats. Strepsils Intensive Lozenges are indicated in adults and adolescents over 12 years of age.', 2),
(30, 'Sudafed Decongestant 60Mg', 5.15, 'Provide relief from cold, flu and allergy symptoms such as blocked sinuses, stuffy nose and catarrh.', 2),
(31, 'Gaviscon Advance Peppermint Oral Suspension 300Ml', 7.8, 'Gaviscon Advance Peppermint Oral Suspension is a fast and powerful Relief of Heartburn and Indigestion.', 3),
(32, 'Gaviscon Advance Peppermint Oral Suspension 300Ml', 7.8, 'Gaviscon Advance Peppermint Oral Suspension is a fast and powerful Relief of Heartburn and Indigestion.', 5),
(33, 'Imodium Instants 2Mg Orodispersible Tablets 12 Pack', 6.95, 'Imodium Instants are the fastest dissolving tablets for effective relief from diarrhea.', 4),
(34, 'Imodium Instants 2Mg Orodispersible Tablets 12 Pack', 6.95, 'Imodium Instants are the fastest dissolving tablets for effective relief from diarrhea.', 3),
(35, 'Rennie Dual Action Chewable Tabs 24Tabs', 4.69, 'Rennie Dual Action Chewable tablets provide long lasting relief from heartburn and acid indigestion. It has a powerful formula that works in two ways to relieve the painful symptoms of heartburn.', 1),
(36, 'Rennie Dual Action Chewable Tabs 24Tabs', 4.69, 'Rennie Dual Action Chewable tablets provide long lasting relief from heartburn and acid indigestion. It has a powerful formula that works in two ways to relieve the painful symptoms of heartburn.', 6),
(37, 'Rennie Dual Action Chewable Tabs 24Tabs', 4.69, 'Rennie Dual Action Chewable tablets provide long lasting relief from heartburn and acid indigestion. It has a powerful formula that works in two ways to relieve the painful symptoms of heartburn.', 2),
(38, 'Panadol Actifast 500Mg Tablets', 4, 'Panadol ActiFast contains the active ingredient paracetamol, a well-known ingredient used to relieve pain and also reduce body temperature when suffering with a fever.', 3),
(39, 'Panadol Actifast 500Mg Tablets', 4, 'Panadol ActiFast contains the active ingredient paracetamol, a well-known ingredient used to relieve pain and also reduce body temperature when suffering with a fever.', 2),
(40, 'Panadol Actifast 500Mg Tablets', 4, 'Panadol ActiFast contains the active ingredient paracetamol, a well-known ingredient used to relieve pain and also reduce body temperature when suffering with a fever.', 5),
(41, 'Lemsip Max Cold & Flu Hot Lemon 10 Sachets', 6.75, 'For the relief of symptoms associated with the common cold or influenza, including fever, headache, sore throat, body aches and pains.', 6),
(42, 'Lemsip Max Cold & Flu Hot Lemon 10 Sachets', 6.75, 'For the relief of symptoms associated with the common cold or influenza, including fever, headache, sore throat, body aches and pains.', 3),
(43, 'Lemsip Max Cold & Flu Hot Lemon 10 Sachets', 6.75, 'For the relief of symptoms associated with the common cold or influenza, including fever, headache, sore throat, body aches and pains.', 5),
(44, 'Nicorette Original Gum 4Mg (30 Pieces)', 8.15, 'Nicorette Original Gum 4Mg (30 Pieces) whether you’re reducing one cigarette at a time or quitting for good, choose Nicorette Gum to help control your nicotine intake.', 3),
(45, 'Nicorette Original Gum 4Mg (30 Pieces)', 8.15, 'Nicorette Original Gum 4Mg (30 Pieces) whether you’re reducing one cigarette at a time or quitting for good, choose Nicorette Gum to help control your nicotine intake.', 4),
(46, 'Nicorette Original Gum 4Mg (30 Pieces)', 8.15, 'Nicorette Original Gum 4Mg (30 Pieces) whether you’re reducing one cigarette at a time or quitting for good, choose Nicorette Gum to help control your nicotine intake.', 6),
(47, 'Senokot 7.5Mg Tablets', 6.5, 'Senokot 7.5Mg Tablets are a reliably effective laxative made with natural Senna treated especially to yield a constant amount of active ingredient in each dose, to give predictable relief from occasional constipation.', 4),
(48, 'Senokot 7.5Mg Tablets', 6.5, 'Senokot 7.5Mg Tablets are a reliably effective laxative made with natural Senna treated especially to yield a constant amount of active ingredient in each dose, to give predictable relief from occasional constipation.', 6),
(49, 'Cystopurin Granules', 6.35, 'Cystopurin Granules For Oral Solution Relief From Cystitis 6 Sachets is a 48 hour treatment for the symptoms of cystitis.', 4),
(50, 'Cystopurin Granules', 6.35, 'Cystopurin Granules For Oral Solution Relief From Cystitis 6 Sachets is a 48 hour treatment for the symptoms of cystitis.', 5),
(51, 'Halls Sugar Free', 0.7, 'Halls Mentholyptus Original Sugar Free is a boiled candy that has a unique vapour action with a menthol hit to give you a deep breath of fresh air', 5),
(52, 'Halls Sugar Free', 0.7, 'Halls Mentholyptus Original Sugar Free is a boiled candy that has a unique vapour action with a menthol hit to give you a deep breath of fresh air', 6),
(53, 'Centrum Kids', 5.75, 'Centrum Kids Daily Chewable Multivitamin 30 Pack High-quality micronutrient supplement for kids in a deliciously chewable tablet.', 1),
(54, 'Centrum Kids', 5.75, 'Centrum Kids Daily Chewable Multivitamin 30 Pack High-quality micronutrient supplement for kids in a deliciously chewable tablet.', 4),
(55, 'Aya Kids Crunchy Bio Probiotic 30Tabs', 9.85, 'Aya Kids Crunchy Bio Probiotic contains active bacteria lyophilsed, gently tabletted and then individually sealed to enhance their stability unitl the end of shelf life. ', 1),
(56, 'Aya Kids Crunchy Bio Probiotic 30Tabs', 9.85, 'Aya Kids Crunchy Bio Probiotic contains active bacteria lyophilsed, gently tabletted and then individually sealed to enhance their stability unitl the end of shelf life. ', 4);

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
  ADD UNIQUE KEY `ID` (`ID`);

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
