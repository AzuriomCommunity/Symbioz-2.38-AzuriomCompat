
-- --------------------------------------------------------

--
-- Table structure for table `dayfights`
--

CREATE TABLE `dayfights` (
  `DayOfWeek` varchar(255) NOT NULL,
  `MapId` int(11) DEFAULT NULL,
  `Monsters` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dayfights`
--

INSERT INTO `dayfights` (`DayOfWeek`, `MapId`, `Monsters`) VALUES
('Friday', 160433152, '1195,943,2992'),
('Monday', 160433152, '2854, 404, 3391, 107,792'),
('Saturday', 160433152, '1159,669,939,940'),
('Sunday', 160433152, '2772,226,3564'),
('Thursday', 160433152, '382,232,854,799,799'),
('Tuesday', 160433152, '257,58,113,147,147'),
('Wednesday', 160433152, '3633,3986,605,669');
