
-- --------------------------------------------------------

--
-- Table structure for table `guildsarena`
--

CREATE TABLE `guildsarena` (
  `Id` int(11) NOT NULL,
  `FirstGuildId` int(255) DEFAULT NULL,
  `SecondGuildId` int(255) DEFAULT NULL,
  `FightDate` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guildsarena`
--

INSERT INTO `guildsarena` (`Id`, `FirstGuildId`, `SecondGuildId`, `FightDate`) VALUES
(1, 3, 2, '0'),
(2, 2, -1, '0');
