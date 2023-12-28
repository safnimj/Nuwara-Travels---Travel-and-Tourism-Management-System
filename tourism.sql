-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 03:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  `deleteuser` varchar(255) DEFAULT NULL,
  `createbid` varchar(255) DEFAULT NULL,
  `updatebid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `createuser`, `deleteuser`, `createbid`, `updatebid`) VALUES
(1, 'Superuser', NULL, '1', '1', '1'),
(2, 'Admin', NULL, '1', '1', '1'),
(3, 'User', NULL, '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `Staffid` varchar(255) DEFAULT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'avatar15.jpg',
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Staffid`, `AdminName`, `UserName`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Status`, `Photo`, `Password`, `AdminRegdate`) VALUES
(2, '10002', 'Admin', 'admin', 'SAFNI', 'MJ ', 778759392, 'admin@gmail.com', 1, 'safni mj.png', '81dc9bdb52d04dc20036dbd8313ed055', '2021-06-21 10:18:39'),
(9, '10003', 'Admin', 'harry', 'Mr ', 'Himas', 757537271, 'nimas@gmail.com', 1, 'face27.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2021-06-21 07:08:48'),
(29, 'U002', 'User', 'morgan', 'Don', 'Visva', 770546590, 'Visva@gmail.com', 1, 'avatar15.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-21 14:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(13, 5, 'gerald@gmail.com', '2023-11-28', '2023-12-01', 'Real i need to tour that place', '2023-12-11 12:13:17', 1, '', '2023-12-06 04:31:50'),
(14, 2, 'gerald@gmail.com', '2023-01-12', '2023-01-15', 'kk', '2023-01-12 19:49:39', 2, 'u', '2023-12-06 04:31:50'),
(15, 4, 'gerald@gmail.com', '2023-01-14', '2023-01-16', 'tour', '2023-12-12 04:31:59', 2, 'u', '2023-12-06 04:33:21'),
(16, 2, 'gerald@gmail.com', '2023-03-26', '2023-03-31', 'I Really need to visit that place', '2023-03-24 22:48:36', 1, NULL, '2023-12-06 04:33:21'),
(17, 6, 'admin@gmail.com', '2023-07-28', '2023-07-30', 'Test', '2023-07-24 09:51:52', 2, 'a', '2023-12-06 04:33:21'),
(18, 1, 'admin@gmail.com', '2023-07-24', '2023-07-26', 'smart travel test', '2023-07-24 09:59:34', 1, NULL, '2023-12-06 04:33:21'),
(19, 9, 'mjsafnimax@gmail.com', '2023-12-30', '2024-01-07', 'We want to go for a family Trip', '2023-12-03 10:30:49', 1, NULL, '2023-12-03 10:32:55'),
(20, 10, 'mjsafnimax@gmail.com', '2023-12-30', '2024-01-04', 'this is atesting', '2023-12-06 06:19:45', 0, NULL, NULL),
(21, 6, 'kuttyapi@gmail.com', '2023-12-29', '2023-12-30', 'gjdhgdjs', '2023-12-21 09:21:30', 0, NULL, NULL),
(22, 9, 'abilashanyogarasa@Gmail.com', '2023-12-27', '2023-12-29', 'i want ', '2023-12-27 05:06:01', 0, NULL, NULL),
(23, 6, 'laksha99.a@gmail.com', '2023-12-28', '2023-12-31', 'I really want this package', '2023-12-27 05:26:35', 1, NULL, '2023-12-27 05:55:50'),
(24, 9, 'laksha99.a@gmail.com', '2023-12-28', '2023-12-31', 'want', '2023-12-27 05:56:42', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `regno` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `companyname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `companyemail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `companyphone` int(10) NOT NULL,
  `companyaddress` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `companylogo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'avatar15.jpg',
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `developer` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `regno`, `companyname`, `companyemail`, `country`, `companyphone`, `companyaddress`, `companylogo`, `status`, `developer`, `creationdate`) VALUES
(4, '1002', 'St. Paul Church', 'stpaul@gmail.com', 'Uganda', 770546590, 'Kyebando', 'church.jpg', '1', 'gerald', '2021-02-02 12:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Eastern Delights: Sri Lanka Unveiled!', 'Family Package ', 'Eastern Province, Srilanka.', 100, 'Tour Guide, A Vehicle with Driver, Hotel Reservation', 'Discover the allure of Sri Lanka\'s Eastern Province with our curated travel package! From the pristine Marble Beach to the wild wonders of Kumana National Park, and the soothing Kanniya Hot Water Spring, we\'ve crafted the perfect escape.\r\n\r\nHighlights:\r\n- ????? **Marble Beach:** Sun, sand, and serenity.\r\n- ???? **Kumana National Park:** Wildlife wonders await.\r\n- ????? **Pasikuda Beach:** Tropical paradise vibes.\r\n- ???? **Kanniya Hot Water Spring:** Natural rejuvenation.\r\n- ???? **Batticaloa Dutch Fort:** A historic journey.\r\n\r\n**Facilities:**\r\n- ????? **Tour Guide:** Your local expert.\r\n- ???? **Vehicle with Driver:** Comfortable travels.\r\n- ???? **Hotel Reservations:** Relax in style.\r\n\r\nEmbark on a hassle-free adventure with us. Book now for an Eastern escape like no other! ???????????? #DiscoverEasternSriLanka', 'img (9).jpg', '2017-05-13 14:23:44', '2023-12-03 03:11:42'),
(2, 'Northern Treasures: Discover Sri Lanka\'s North', 'Family Package ', 'Nortern Province, Srilanka.', 150, 'Tour Guide, A Vehicle with Driver, Hotel Reservation', 'Unveil the charm of Sri Lanka\'s Northern Province with our tailored package! Explore the historic Fort Jaffna, escape to Mannar Island\'s serene beaches, delve into knowledge at Jaffna Public Library, and relax on Kankesanthurai Beach.\r\n\r\n**Inclusions:**\r\n- ????? **Tour Guide:** Your local companion.\r\n- ???? **Vehicle with Driver:** Seamless travels.\r\n- ???? **Hotel Reservations:** Comfortable stays.\r\n\r\nBook now for a Northern adventure like no other! ???? #NorthernSriLankaExpedition', 'img (4).jpg', '2017-05-13 15:24:26', '2023-12-03 03:17:29'),
(3, 'Northwestern Serenity: Nature\'s Embrace', 'Outdoor animals', 'Northwest, Srilanka.', 200, 'Tour Guide, A Vehicle with Driver, Hotel Reservation ', 'Experience the best of Sri Lanka\'s Northwestern treasures with our package! Explore coastal charm in Puttalam, encounter wildlife at Wilpattu National Park, and unwind at the serene Mahaoya River Point.\r\n\r\n**Inclusions:**\r\n- ????? **Tour Guide:** Your nature companion.\r\n- ???? **Vehicle with Driver:** Effortless travel.\r\n- ???? **Hotel Reservations:** Comfort meets nature.\r\n\r\nBook now for a Northwestern escape! ???????????? #DiscoverNorthwestSriLanka', 'img (6).jpg', '2017-05-13 16:00:58', '2023-12-03 03:24:22'),
(4, 'Northern Odyssey: Unveiling Sri Lanka\'s Northern Province', 'Family and Couple', 'Northern Province, Srilanka', 250, 'Tour Guide, A Vehicle with Driver, Hotel Reservation ', 'Embark on a journey through the rich tapestry of Sri Lanka\'s Northern Province. Discover the ancient tales of Fort Jaffna, escape to tranquility on Mannar Island, explore knowledge at Jaffna Public Library, and relax on the golden shores of Kankesanthurai Beach.\r\n\r\nFacilities:\r\n\r\n????? Tour Guide: Your knowledgeable companion.\r\n???? Vehicle with Driver: Seamless travels.\r\n???? Hotel Reservations: Comfort meets adventure.\r\nBook now for a Northern escape! ????????????? #ExploreNorthernSriLanka', 'img (1).jpg', '2017-05-13 22:39:37', '2023-12-03 03:31:27'),
(5, 'Southern Serenity: Coastal Bliss and Wilderness Adventures ', 'Couple Package', 'Southern Province, Srilanka.', 300, 'Tour Guide, A Vehicle with Driver, Hotel Reservation ', 'Escape to the wonders of Sri Lanka\'s Southern Province. Wander through the historic Galle Dutch Fort, explore the wild beauty of Bundala National Park, trek in the lush Sinharaja Forest Reserve, and unwind on the sandy shores of Jungle Beach and Mirissa Beach.\r\n\r\nFacilities:\r\n\r\n????? Tour Guide: Your coastal guide.\r\n???? Vehicle with Driver: Effortless travels.\r\n???? Hotel Reservations: Coastal comfort.\r\nBook now for a Southern coastal retreat! ????????????? #SouthernSriLanka', 'img (1).jpeg', '2017-05-13 22:42:10', '2023-12-03 03:36:24'),
(6, 'Western Wonders', 'Culture, Nature, and Urban Elegance', 'Western Province, Srilanka', 400, 'Tour Guide, A Vehicle with Driver, Hotel Reservation ', 'Experience the vibrant mix of culture and modernity in Sri Lanka\'s Western Province. Discover Independence Square, marvel at BMICH, embrace nature at Beddagana Wetland Park, explore artifacts at Colombo National Museum, visit Seethawaka Wet Zone, and reflect at Independence Memorial Museum.\r\n\r\nFacilities:\r\n\r\n????? Tour Guide: Your urban explorer.\r\n???? Vehicle with Driver: City travels.\r\n???? Hotel Reservations: Urban comfort.\r\nBook now for a Western exploration! ?????????????? #WesternSriLankaAdventure', 'img (3).jpg', '2017-05-14 08:01:08', '2023-12-03 03:39:13'),
(7, 'Uva Unveiled', 'Peaks, Shrines, and Nature\'s Majesty', 'Uva Province, Srilanka.', 350, 'Tour Guide, A Vehicle with Driver, Hotel Reservation ', 'Discover the scenic wonders of Sri Lanka\'s Uva Province. Witness the sunrise at Lipton\'s Seat, experience spiritual tranquility at Ruhunu Maha Kataragama Dewalaya, explore the unique ecosystem of Horton Plains National Park, encounter wildlife at Udawalawe National Park, trek to the summit of Little Adam\'s Peak, and marvel at the engineering feat of Nine Arches Bridge.\r\n\r\nFacilities:\r\n\r\n????? Tour Guide: Your panoramic companion.\r\n???? Vehicle with Driver: Comfortable journeys.\r\n???? Hotel Reservations: Retreat amidst nature.\r\nBook now for an Uva adventure! ????????????? #UvaProvinceEscape', 'img (11).jpg', '2023-12-03 03:43:47', NULL),
(8, 'Central Majesty', 'Ancient Citadel, Botanic Beauty, and Cultural Bliss', 'Central Province, Srilanka.', 420, 'Tour Guide, A Vehicle with Driver, Hotel Reservation ', 'Embark on a journey through Sri Lanka\'s Central Province. Ascend the iconic Sigiriya rock fortress, stroll through the Royal Botanic Gardens in Peradeniya, explore the scenic wonders of Horton Plains National Park, marvel at Ramboda Falls, and enjoy leisurely walks around the picturesque Kandy Lake.\r\n\r\nFacilities:\r\n\r\n????? Tour Guide: Your cultural curator.\r\n???? Vehicle with Driver: Comfortable explorations.\r\n???? Hotel Reservations: Heritage stays.\r\nBook now for a Central escapade! ???????????? #CentralSriLankaDiscover', 'img (1).png', '2023-12-03 03:46:01', NULL),
(9, 'Sabaragamuwa Serenity', ' Elephants, Waterfalls, and Natural Wonders', ' Sabaragamuwa Province, Srilanka.', 200, 'Tour Guide, A Vehicle with Driver, Hotel Reservation ', 'Experience the beauty of Sri Lanka\'s Sabaragamuwa Province. Visit the Elephant Transit Home, marvel at the Duwili Ella Waterfall, embrace nature at Kirindi Ella Waterfall, hike to Bathalegala, and gaze upon the breathtaking Great World\'s End Drop.\r\n\r\nFacilities:\r\n\r\n????? Tour Guide: Your nature guide.\r\n???? Vehicle with Driver: Comfortable journeys.\r\n???? Hotel Reservations: Retreat in nature.\r\nBook now for a Sabaragamuwa adventure! ???????????? #SabaragamuwaSerenity', 'img (2).jpg', '2023-12-03 03:47:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(14, 'Gerald Brain', '0770546590', 'gerald@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2020-01-15 14:00:35', '2021-07-24 09:49:44'),
(16, 'John Simith', '0770546590', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-24 08:34:08', NULL),
(17, 'SAFNI mj', '0778759392', 'mjsafnimax@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-03 10:27:09', NULL),
(18, 'Apilas', '0776259369', 'kuttyapi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 09:20:57', NULL),
(19, 'ABILASAN ', '0756601349', 'abilashanyogarasa@gmail.com', '3fc0a7acf087f549ac2b266baf94b8b1', '2023-12-27 05:04:02', NULL),
(20, 'lavanya', '0750571721', 'laksha99.a@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-12-27 05:21:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
