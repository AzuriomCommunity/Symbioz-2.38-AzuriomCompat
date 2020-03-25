
-- --------------------------------------------------------

--
-- Table structure for table `bidshopitems`
--

CREATE TABLE `bidshopitems` (
  `BidShopId` int(255) DEFAULT NULL,
  `AccountId` int(255) DEFAULT NULL,
  `Price` int(20) DEFAULT NULL,
  `UId` int(255) NOT NULL DEFAULT '0',
  `GId` int(20) DEFAULT NULL,
  `Position` int(20) DEFAULT NULL,
  `Quantity` int(255) DEFAULT NULL,
  `Effects` mediumtext,
  `AppearanceId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
