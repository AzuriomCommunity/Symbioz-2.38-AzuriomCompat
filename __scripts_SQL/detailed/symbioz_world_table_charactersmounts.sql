
-- --------------------------------------------------------

--
-- Table structure for table `charactersmounts`
--

CREATE TABLE `charactersmounts` (
  `UId` mediumtext,
  `CharacterId` mediumtext,
  `Sex` mediumtext,
  `IsRideable` mediumtext,
  `IsWild` mediumtext,
  `IsFecondationReady` mediumtext,
  `ModelId` mediumtext,
  `Name` mediumtext,
  `Effects` mediumtext,
  `Setted` mediumtext,
  `Toggled` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
