
-- --------------------------------------------------------

--
-- Table structure for table `bidshops`
--

CREATE TABLE `bidshops` (
  `Id` int(11) NOT NULL,
  `Quantities` varchar(255) DEFAULT NULL,
  `ItemTypes` varchar(255) DEFAULT NULL,
  `MaxItemPerAccounts` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidshops`
--

INSERT INTO `bidshops` (`Id`, `Quantities`, `ItemTypes`, `MaxItemPerAccounts`) VALUES
(1, '1,10,100', '16,17', '40'),
(2, '1,10,100', '1,9', '40'),
(3, '1,10,100', '10,11', '40'),
(4, '1,10,100', '97,18,121,113', '40'),
(5, '1,10,100', '151,82,23', '40'),
(6, '1,10,100', '36,43,26,12,167', '40'),
(7, '1,10,100', '42,33,60,34', '40'),
(8, '1,10,100', '38,95,183,179', '40'),
(9, '1,10,100', '83,169', '40'),
(10, '1,10,100', '104,107,119,184,111,56,55,46,110,58,57,68,153,109,105,106,47,103,59,53,54,48,65,15,164', '40'),
(11, '1,10,100', '5,6,22,19,7,8', '40'),
(12, '1,10,100', '2,3,4', '40'),
(13, '1,10,100', '25,73,13,75', '40');
