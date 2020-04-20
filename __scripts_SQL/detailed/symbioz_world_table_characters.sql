
-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `Id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `AccountId` int(11) DEFAULT NULL,
  `Look` varchar(1000) DEFAULT NULL,
  `BreedId` int(11) DEFAULT NULL,
  `CosmeticId` int(11) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `MapId` int(11) DEFAULT NULL,
  `CellId` int(11) DEFAULT NULL,
  `Direction` int(11) DEFAULT NULL,
  `Kamas` bigint(255) DEFAULT NULL,
  `Exp` bigint(255) DEFAULT NULL,
  `SpawnPointMapId` int(255) DEFAULT NULL,
  `KnownEmotes` mediumtext,
  `Stats` mediumtext,
  `SpellPoints` int(11) DEFAULT NULL,
  `StatsPoints` int(11) DEFAULT NULL,
  `Alignment` mediumtext,
  `KnownOrnaments` mediumtext,
  `KnownTitles` mediumtext,
  `Jobs` mediumtext,
  `DoneObjectives` mediumtext,
  `Spells` mediumtext,
  `HumanOptions` mediumtext,
  `ArenaRank` varchar(255) DEFAULT NULL,
  `Shortcuts` mediumtext,
  `LastAlmanachDay` int(11) DEFAULT '0',
  `GuildId` int(11) DEFAULT '0',
  `Prestige` int(11) DEFAULT '0',
  `RemodelingMask` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
