
-- --------------------------------------------------------

--
-- Table structure for table `guilds`
--

CREATE TABLE `guilds` (
  `Id` int(40) NOT NULL DEFAULT '0',
  `Name` mediumtext,
  `Emblem` mediumtext,
  `Experience` mediumtext,
  `MaxTaxCollectors` mediumtext,
  `Members` mediumtext,
  `Motd` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
