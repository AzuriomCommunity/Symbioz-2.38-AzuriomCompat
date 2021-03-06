
-- --------------------------------------------------------

--
-- Table structure for table `emotes`
--

CREATE TABLE `emotes` (
  `Id` int(40) NOT NULL DEFAULT '0',
  `Name` mediumtext,
  `IsAura` mediumtext,
  `AuraBones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emotes`
--

INSERT INTO `emotes` (`Id`, `Name`, `IsAura`, `AuraBones`) VALUES
(1, 'S asseoir', 'False', '0'),
(2, 'Faire un signe de la main', 'False', '0'),
(3, 'Applaudir', 'False', '0'),
(4, 'Se mettre en colère', 'False', '0'),
(5, 'Montrer sa peur', 'False', '0'),
(6, 'Brandir son arme', 'False', '0'),
(7, 'Jouer de la flûte', 'False', '0'),
(8, 'Lâcher les gaz', 'False', '0'),
(9, 'Saluer', 'False', '0'),
(10, 'Faire un bisou', 'False', '0'),
(11, 'Pierre', 'False', '0'),
(12, 'Feuille', 'False', '0'),
(13, 'Ciseaux', 'False', '0'),
(14, 'Croiser les bras', 'False', '0'),
(15, 'Montrer du doigt', 'False', '0'),
(16, '. . . . .', 'False', '0'),
(17, 'Manger', 'False', '0'),
(18, 'Boire une bière', 'False', '0'),
(19, 'S allonger', 'False', '0'),
(21, 'Champion', 'False', '0'),
(22, 'Aura de puissance', 'True', '0'),
(23, 'Aura vampyrique', 'True', '171'),
(24, 'Rire', 'False', '0'),
(25, 'Refuser', 'False', '0'),
(26, 'Pleurer', 'False', '0'),
(27, 'Danser', 'False', '0'),
(28, 'Jouer de la guitare', 'False', '0'),
(29, 'Jongler', 'False', '0'),
(30, 'Lire un livre', 'False', '0'),
(32, 'Joie', 'False', '0'),
(33, 'Trace', 'False', '0'),
(34, 'Mains sur les hanches', 'False', '0'),
(35, 'Fleurs', 'False', '0'),
(36, 'Être frigorifié', 'False', '0'),
(37, 'Éternuer', 'False', '0'),
(38, 'Manolias', 'False', '0'),
(39, 'Avoir froid', 'False', '0'),
(40, 'Aura bleutée de l ornithorynque ancestral', 'True', '1465'),
(41, 'Bâiller', 'False', '0'),
(42, 'Sautiller', 'False', '0'),
(43, 'Lever le pouce', 'False', '0'),
(44, 'Baisser le pouce', 'False', '0'),
(46, 'Affamé', 'False', '0'),
(48, 'Piou', 'False', '0'),
(49, 'Coucou', 'False', '0'),
(50, 'Jouer aux cartes', 'False', '0'),
(51, 'Super-héros', 'False', '0'),
(52, 'Supplier', 'False', '0'),
(55, 'Aura de Nelween', 'True', '1501'),
(56, 'Offrir un cadeau', 'False', '0'),
(57, 'Téméraire', 'False', '0'),
(58, 'S agenouiller', 'False', '0'),
(61, 'Boire une potion', 'False', '0'),
(63, 'Lézard', 'False', '0'),
(64, 'Stok', 'False', '0'),
(65, 'Salut Vulkain', 'False', '0'),
(66, 'Se prosterner', 'False', '0'),
(67, 'Avoir chaud', 'False', '0'),
(68, 'Gonfler ses muscles', 'False', '0'),
(69, 'Lire une carte', 'False', '0'),
(70, 'Ogrine', 'False', '0'),
(71, 'Poing levé', 'False', '0'),
(72, 'Pied de nez', 'False', '0'),
(73, 'Attirer l attention', 'False', '0'),
(74, 'Motus', 'False', '0'),
(75, 'Se frotter les mains', 'False', '0'),
(76, 'Facepaume', 'False', '0'),
(77, 'Garde-à-vous', 'False', '0'),
(78, 'Ola', 'False', '0'),
(79, 'Se frapper le front', 'False', '0'),
(80, 'Mains derrière le dos', 'False', '0'),
(81, 'Kamarena', 'False', '0'),
(82, 'Siffler', 'False', '0'),
(84, 'Longue-Vue', 'False', '0'),
(85, 'Loupe', 'False', '0'),
(87, 'Huer', 'False', '0'),
(88, 'Encourager', 'False', '0'),
(89, 'Se boucher les oreilles', 'False', '0'),
(90, 'Halouine', 'False', '0'),
(91, 'Fiole de Chichala', 'False', '0'),
(92, 'Écrire', 'False', '0'),
(93, 'Défourailler son arme', 'False', '0'),
(94, 'Tirer sa langue', 'False', '0'),
(95, 'Kramouflage', 'False', '0'),
(96, 'Brandir son bouclier', 'False', '0'),
(97, 'Étendard de Guilde', 'False', '0'),
(98, 'Étendard d Alliance', 'False', '0'),
(99, 'Clepsydre', 'False', '0'),
(100, 'Eau de la Fontaine de Noffoub', 'False', '0'),
(101, 'Dévorer une Cawotte', 'False', '0'),
(102, 'Faire peur', 'False', '0'),
(103, 'Offrir un gâteau', 'False', '0'),
(104, 'Roboculaire', 'False', '0'),
(105, 'Boxer', 'False', '0'),
(106, 'Agiter le drapeau blanc', 'False', '0'),
(107, 'Cracheur de Feu', 'False', '0'),
(108, 'S envoler', 'False', '0'),
(109, 'Ver de terre', 'False', '0'),
(110, 'Phorrer le sol', 'False', '0'),
(111, 'Renifler le sol', 'False', '0'),
(112, 'Chercher un trésor', 'False', '0'),
(113, 'Localiser un portail', 'False', '0'),
(114, 'Ouvrir un portail de poche', 'False', '0'),
(115, 'Guérisseur', 'False', '0'),
(116, 'Croque-mort', 'False', '0'),
(117, 'Richissime', 'False', '0'),
(118, 'Rugir', 'False', '0'),
(119, 'Criminel', 'False', '0'),
(120, 'Explosif', 'False', '0'),
(121, 'Intemporel', 'False', '0'),
(122, 'Transcendant', 'False', '0'),
(123, 'Hanter (familier)', 'False', '0'),
(124, 'Se dandiner (familier)', 'False', '0'),
(125, 'Piétiner (familier)', 'False', '0'),
(126, 'Enflammer (familier)', 'False', '0'),
(127, 'Se protéger', 'False', '0'),
(128, 'Peindre', 'False', '0'),
(129, 'Sylvestre', 'False', '0'),
(130, 'Colère de Bolgrot', 'False', '0'),
(131, 'Explosion de couleurs', 'False', '0'),
(132, 'Vaporeux', 'False', '0'),
(133, 'S abriter sous un parasol', 'False', '0'),
(134, 'Pêcheur', 'False', '0'),
(135, 'Balistique', 'False', '0'),
(136, 'Éthylique', 'False', '0'),
(137, 'Élémentaire', 'False', '0'),
(138, 'Duelliste', 'False', '0'),
(139, 'Déployer les ailes bontariennes', 'False', '0'),
(140, 'Déployer les ailes brâkmariennes', 'False', '0'),
(141, 'Jouer à pile ou face', 'False', '0'),
(142, 'Chanceux', 'False', '0'),
(143, 'Sanguinolent', 'False', '0'),
(144, 'Bienfaisant', 'False', '0'),
(146, 'Psychotique', 'False', '0'),
(147, 'Animal', 'False', '0'),
(148, 'Indestructible', 'False', '0'),
(149, 'Gonfler un ballon', 'False', '0'),
(150, 'Expérimenter', 'False', '0');
