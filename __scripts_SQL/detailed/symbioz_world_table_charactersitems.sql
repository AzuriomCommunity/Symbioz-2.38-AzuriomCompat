
-- --------------------------------------------------------

--
-- Table structure for table `charactersitems`
--

CREATE TABLE `charactersitems` (
  `CharacterId` int(255) DEFAULT NULL,
  `UId` int(255) NOT NULL DEFAULT '0',
  `GId` int(11) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Effects` mediumtext,
  `AppearanceId` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
