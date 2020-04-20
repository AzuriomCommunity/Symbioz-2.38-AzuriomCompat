
-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `Id` int(255) NOT NULL,
  `AccountId` int(255) DEFAULT NULL,
  `Notification` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
