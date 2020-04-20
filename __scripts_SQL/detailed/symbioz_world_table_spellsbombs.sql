
-- --------------------------------------------------------

--
-- Table structure for table `spellsbombs`
--

CREATE TABLE `spellsbombs` (
  `SpellId` int(11) NOT NULL,
  `ExplosionSpellId` varchar(255) DEFAULT NULL,
  `WallColor` varchar(255) DEFAULT NULL,
  `WallSpellId` int(11) DEFAULT NULL,
  `CibleExplosionSpellId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spellsbombs`
--

INSERT INTO `spellsbombs` (`SpellId`, `ExplosionSpellId`, `WallColor`, `WallSpellId`, `CibleExplosionSpellId`) VALUES
(2796, '2827', '-16744448', 2829, 2827),
(2797, '2830', '-16776961', 2833, 2831),
(2808, '2822', '-65536', 2825, 2823);
