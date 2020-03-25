
-- --------------------------------------------------------

--
-- Table structure for table `startupactions`
--

CREATE TABLE `startupactions` (
  `Id` int(255) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `AccountId` int(255) DEFAULT NULL,
  `GIds` mediumtext,
  `Quantities` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
