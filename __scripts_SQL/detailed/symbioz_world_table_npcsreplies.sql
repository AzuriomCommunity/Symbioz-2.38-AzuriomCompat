
-- --------------------------------------------------------

--
-- Table structure for table `npcsreplies`
--

CREATE TABLE `npcsreplies` (
  `MessageId` int(11) DEFAULT NULL,
  `ReplyId` int(11) DEFAULT NULL,
  `ActionType` varchar(255) DEFAULT NULL,
  `Value1` varchar(255) NOT NULL,
  `Value2` varchar(255) DEFAULT NULL,
  `Condition` varchar(255) DEFAULT NULL,
  `ConditionExplanation` varchar(9999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `npcsreplies`
--

INSERT INTO `npcsreplies` (`MessageId`, `ReplyId`, `ActionType`, `Value1`, `Value2`, `Condition`, `ConditionExplanation`) VALUES
(318, 259, 'Bank', '0', '0', 'PL>9', 'Vous devez être niveau 10 minimum pour pouvoir accèder à la banque.'),
(20954, 25157, 'Teleport', '84674563', '315', '', ''),
(20954, 25157, 'Cinematic', '6', '', '', ''),
(21857, 26300, NULL, '', NULL, NULL, NULL),
(646, 10529, 'Teleport', '121373185', '464', '', NULL),
(7685, 7702, 'Teleport', '55050240', '284', '', ''),
(16977, 20251, 'Teleport', '121634818', '185', 'PL>60', 'Vous devez être niveau 60 pour vous rendrez dans cette zone.'),
(6612, 5924, 'Teleport', '160513', '278', 'PL>40', 'Vous devez être niveau 40 pour accéder a cette zone.'),
(15195, 17862, 'Teleport', '54173010', '219', 'PL>99', 'Vous devez être niveau 100.'),
(7842, 8028, 'RemoveItem', '17745', '2500', 'PO=17745,2500&PO=14503,150', NULL),
(7842, 8028, 'RemoveItem', '14503', '150', 'PO=17745,2500&PO=14503,150', NULL),
(3353, 2987, 'AddOrnament', '24', NULL, NULL, NULL),
(3353, 2987, 'Teleport', '147768', '286', NULL, NULL),
(20830, 24967, 'Teleport', '152829952', '350', NULL, NULL);
