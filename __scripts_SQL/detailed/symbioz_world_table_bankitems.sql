
-- --------------------------------------------------------

--
-- Table structure for table `bankitems`
--

CREATE TABLE `bankitems` (
  `AccountId` int(255) DEFAULT NULL,
  `UId` int(255) NOT NULL DEFAULT '0',
  `GId` int(20) DEFAULT NULL,
  `Position` int(20) DEFAULT NULL,
  `Quantity` int(255) DEFAULT NULL,
  `Effects` mediumtext,
  `AppearanceId` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
