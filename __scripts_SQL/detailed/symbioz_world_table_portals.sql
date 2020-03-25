
-- --------------------------------------------------------

--
-- Table structure for table `portals`
--

CREATE TABLE `portals` (
  `Id` int(11) NOT NULL DEFAULT '0',
  `Name` text,
  `Look` mediumtext,
  `AreaId` int(11) DEFAULT NULL,
  `TeleportMapId` int(11) DEFAULT NULL,
  `TeleportCellId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portals`
--

INSERT INTO `portals` (`Id`, `Name`, `Look`, `AreaId`, `TeleportMapId`, `TeleportCellId`) VALUES
(1, 'Portail vers Enutrosor', '{2720}', 53, 131597312, 541),
(2, 'Portail vers Srambad', '{3031}', 54, 134351108, 372),
(3, 'Portail vers Ecaflipus', '{3489}', 59, 161351684, 384);
