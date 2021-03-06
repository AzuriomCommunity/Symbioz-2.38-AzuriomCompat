
-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `Id` mediumtext,
  `Name` mediumtext,
  `Description` mediumtext,
  `IncompatibleChallenges` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challenges`
--

INSERT INTO `challenges` (`Id`, `Name`, `Description`, `IncompatibleChallenges`) VALUES
('1', 'Zombie', 'Utiliser exactement un point de mouvement par tour de jeu.', '8,2'),
('2', 'Statue', 'Finir son tour sur la même case que celle où vous l avez commencé, pendant toute la durée du combat.', '1,39,40,8,37,36'),
('3', 'Désigné volontaire', 'Tuer %1 en premier.', '32,4,10,25,34,35'),
('4', 'Sursis', 'Tuer %1 en dernier.', '3,10,25,34,35,32'),
('5', 'Économe', 'Tous les personnages ne doivent utiliser qu une seule fois la même action durant toute la durée du combat.', '41,24,15,14,6,9,16,12,7'),
('6', 'Versatile', 'Chaque joueur n a le droit d effectuer qu une seule fois une même action pendant son tour de jeu.', '5,14'),
('7', 'Jardinier', 'Planter une Cawotte à chaque fois que le sort est disponible, pendant toute la durée du combat.', '5,12,16,24,9,15'),
('8', 'Nomade', 'Utiliser tous ses PM disponibles à chaque tour et ne pas se faire tacler pendant toute la durée du combat.', '1,2'),
('9', 'Barbare', 'Occasionner des dommages ou soigner avec une arme sur alliés ou ennemis, à chaque tour de jeu.', '5,7,11,12,15,16,22,18'),
('10', 'Cruel', 'Les adversaires doivent être achevés dans l ordre croissant de leur niveau.', '3,4,34,32,25,35'),
('11', 'Mystique', 'N utiliser que des sorts pendant toute la durée du combat.', '9'),
('12', 'Fossoyeur', 'Invoquer un Chaferfu à chaque fois que le sort est disponible, pendant toute la durée du combat.', '5,7,9,15,16,24'),
('14', 'Casino Royal', 'Lancer le sort Roulette à chaque fois que le sort est disponible, pendant toute la durée du combat.', '5,6,24'),
('15', 'Araknophile', 'Invoquer une Arakne à chaque fois que le sort est disponible, pendant toute la durée du combat.', '5,7,9,12,24,16'),
('17', 'Intouchable', 'Ne pas perdre de point de vie ou de point de bouclier pendant toute la durée du combat.', '33,47,49'),
('18', 'Incurable', 'Ne pas soigner pendant toute la durée du combat.', '9'),
('19', 'Mains propres', 'Achever tous les monstres sans leur occasionner de dégâts directs pendant toute la durée du combat. Les pièges, les glyphes, les poisons, les dommages occasionnés par les déplacements, les renvois de dommages ainsi que les attaques des invocations peuvent être utilisés.', '29,48,30,28'),
('20', 'Elémentaire', 'Utiliser le même élément d attaque pendant toute la durée du combat.', '24'),
('21', 'Circulez !', 'Ne pas tenter de retirer de PM aux adversaires pendant toute la durée du combat.', ''),
('22', 'Le temps qui court', 'Ne pas tenter de retirer de PA aux adversaires pendant toute la durée du combat.', '9'),
('23', 'Perdu de vue', 'Ne pas tenter de retirer de portée aux adversaires pendant toute la durée du combat.', ''),
('25', 'Ordonné', 'Les adversaires doivent être achevés dans l ordre décroissant de leurs niveaux.', '3,4,10,35,34,32'),
('28', 'Ni pioutes ni soumises', 'Les personnages de sexe masculin doivent laisser les personnages de sexe féminin achever les adversaires pendant toute la durée du combat.', '19,46,29,48,44,30'),
('29', 'Ni pious ni soumis', 'Les personnages de sexe féminin doivent laisser les personnages de sexe masculin achever les adversaires pendant toute la durée du combat.', '19,28,46,30,48,44'),
('30', 'Les petits d abord', 'Le personnage de plus petit niveau doit achever tous les adversaires.', '19,28,29,48,44,46'),
('31', 'Focus', 'Lorsqu un adversaire est attaqué, il doit être achevé avant qu un autre adversaire ne soit attaqué.', ''),
('32', 'Elitiste', 'Toutes les attaques doivent être concentrées sur %1 jusqu à ce qu il meure.', '3,4,10,25,34,35'),
('33', 'Survivant', 'Aucun allié ne doit mourir.', '17,49'),
('34', 'Imprévisible', 'Toutes les attaques doivent être concentrées sur la cible désignée à chaque nouveau tour d un personnage.', '3,4,10,25,32,35,42'),
('35', 'Tueur à gages', 'Les adversaires doivent être tués dans l ordre désigné. Une nouvelle cible est désignée à chaque fois que la cible précédente est tuée.', '3,4,10,25,32,34'),
('36', 'Hardi', 'Finir son tour sur une cellule adjacente à celle d un adversaire.', '2,39,37,40'),
('37', 'Collant', 'Finir son tour sur une cellule adjacente à celle d un allié.', '2,36,39,40'),
('38', 'Blitzkrieg', 'Dès qu un adversaire est attaqué, il doit être achevé avant le début de son tour de jeu.', ''),
('39', 'Anachorète', 'Ne jamais finir son tour sur une cellule adjacente à celle d un allié.', '2,36,37,40'),
('40', 'Pusillanime', 'Ne jamais finir son tour sur une cellule adjacente à celle d un adversaire.', '2,36,37,39'),
('41', 'Pétulant', 'Utiliser tous les points d action disponibles avant la fin de son tour de jeu.', '5'),
('42', 'Deux pour le prix d un', 'Lorsqu un personnage achève un adversaire, il doit obligatoirement achever un (et un seul) deuxième adversaire pendant son tour de jeu.', '34,44,46'),
('43', 'Abnégation', '+', ''),
('44', 'Partage', 'Chaque personnage doit avoir achevé au moins un adversaire (qui ne soit pas une invocation) pendant le combat.', '28,29,30,42,48,46'),
('45', 'Duel', 'Lorsqu un personnage attaque un adversaire, aucun autre personnage ne doit attaquer cet adversaire pendant toute la durée du combat.', '46'),
('46', 'Chacun son monstre', 'Chaque personnage doit avoir achevé au moins un adversaire (qui ne soit pas une invocation) pendant le combat et lorsqu un personnage attaque un adversaire, aucun autre personnage ne doit attaquer cet adversaire pendant toute la durée du combat.', '28,29,30,42,44,45,48'),
('47', 'Contamination', 'Dès qu un allié perd des points de vie ou des points de bouclier, vous avez 5 tours de jeu pour achever votre allié.', '17'),
('48', 'Les mules d abord', 'La mule de plus faible niveau doit achever tous les adversaires (ça vous apprendra à \"muler\" comme un Porkass).', '19,28,29,30,44,46'),
('49', 'Protégez vos mules', 'Ni les mules, ni les alliés ne doivent mourir.', '17,33'),
('50', 'Le cheat des devs', 'Finissez ce combat pour remporter ce challenge. C est bien connu, tous les devs sont des cheaters.', ''),
('52', 'Bouftou Royal (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('53', 'Royalmouth (challenge duo)', 'duo et 20 tours max', ''),
('54', 'Mansot Royal (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('55', 'Ben le Ripate (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('56', 'Obsidiantre (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('57', 'Tengu Givrefoux (challenge duo)', 'Duo-Challenge et 14 tours max', ''),
('58', 'Fuji Givrefoux Nourricière (challenge duo)', 'Duo-Challenge et 20 tours max.', ''),
('59', 'Korriandre (challenge duo)', 'duo et 14 tours max', ''),
('60', 'Kolosso (challenge duo)', 'Duo-Challenge et 18 tours max', ''),
('61', 'Glourséleste (challenge duo)', 'Duo-Challenge et 16 tours max', ''),
('62', 'Grolloum (challenge duo)', 'duo et 27 tours max', ''),
('63', 'Corailleur Magistral (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('64', 'Gourlo le terrible (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('65', 'Silf le Rasboul Majeur (challenge duo)', 'duo et 20 tours max', ''),
('66', 'Tynril ahuri (challenge duo)', 'duo et 20 tours max', ''),
('67', 'Kimbo (challenge duo)', 'duo et 7 tours max', ''),
('68', 'Kralamour géant (challenge duo)', 'duo et 40 tours max', ''),
('69', 'Bulbig Brozeur (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('70', 'Tanukouï San (challenge duo)', 'duo et 20 tours max', ''),
('71', 'Maître Pandore (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('72', 'Péki Péki (challenge duo)', 'Duo-Challenge et 10 tours max', ''),
('73', 'Ougah (challenge duo)', 'Duo-Challenge et 14 tours max', ''),
('74', 'Bworker (challenge duo)', 'Duo-Challenge et 14 tours max', ''),
('75', 'Sphincter Cell (challenge duo)', 'duo et 20 tours max', ''),
('76', 'Chêne Mou (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('77', 'Minotot (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('78', 'Blop multicolore royal (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('79', 'Skeunk (challenge duo)', 'duo et 25 tours max', ''),
('80', 'Crocabulia (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('81', 'Tofu Royal (challenge duo)', 'duo et 20 tours max', ''),
('82', 'Minotoror (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('83', 'Moon (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('84', 'Dragon Cochon (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('85', 'Koulosse (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('86', 'Meulou (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('87', 'Rat Noir (challenge duo)', 'duo et 19 tours max', ''),
('88', 'Rat Blanc (challenge duo)', 'duo et 20 tours max', ''),
('89', 'Maître Corbac (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('90', 'Coffre des Forgerons (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('91', 'Bworkette (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('92', 'Kwakwa (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('93', 'Blop Coco Royal (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('94', 'Blop Griotte Royal (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('95', 'Blop Indigo Royal (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('96', 'Blop Reinette Royal (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('97', 'Kanniboul Ebil (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('98', 'Craqueleur Légendaire (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('99', 'Nelween (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('100', 'Daïgoro (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('101', 'Abraknyde Ancestral (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('102', 'Kardorim (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('103', 'Tournesol Affamé (challenge duo)', 'duo et 20 tours max', ''),
('104', 'Mob l Eponge (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('105', 'Scarabosse Doré (challenge duo)', 'duo et 20 tours max', ''),
('106', 'Batofu (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('107', 'Boostache (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('108', 'Chafer Ronin (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('109', 'Shin Larve (challenge duo)', 'duo et 20 tours max', ''),
('110', 'Wa Wabbit (challenge duo)', 'duo et 20 tours max', ''),
('111', 'Gelée Royale Menthe (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('112', 'Gelée Royale Fraise (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('113', 'Gelée Royale Citron (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('114', 'Gelée Royale Bleue (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('115', 'Kardorim (challenge 1)', 'Zombie', ''),
('116', 'Tournesol Affamé (challenge 1)', 'Collant', ''),
('117', 'Kardorim (challenge 2)', 'En premier', ''),
('118', 'Tournesol Affamé (challenge 2)', 'En premier', ''),
('119', 'Mob l Eponge (challenge 1)', 'Anachorète', ''),
('120', 'Mob l Eponge (challenge 2)', 'Versatile', ''),
('121', 'Bouftou Royal (challenge 1)', 'Pusillanime', ''),
('122', 'Bouftou Royal (challenge 2)', 'Blitzkrieg', ''),
('123', 'Scarabosse Doré (challenge 1)', 'Zombie', ''),
('124', 'Scarabosse Doré (challenge 2)', 'Mains propres', ''),
('125', 'Batofu (challenge 1)', 'Statue', ''),
('126', 'Batofu (challenge 2)', 'Versatile', ''),
('127', 'Boostache (challenge 1)', 'Anachorète', ''),
('128', 'Boostache (challenge 2)', 'En dernier', ''),
('129', 'Chafer Ronin (challenge 1)', 'Nomade', ''),
('130', 'Chafer Ronin (challenge 2)', 'En premier', ''),
('131', 'Bworkette (challenge 1)', 'Anachorète', ''),
('132', 'Bworkette (challenge 1) (dupliqué)', 'Anachorète', ''),
('133', 'Coffre des Forgerons (challenge 1)', 'Nomade', ''),
('134', 'Coffre des Forgerons (challenge 2)', 'En premier', ''),
('135', 'Shin Larve (challenge 1)', 'Pusillanime', ''),
('136', 'Shin Larve (challenge 2)', 'Versatile', ''),
('137', 'Corailleur Magistral (challenge 1)', 'Hardi', ''),
('138', 'Corailleur Magistral (challenge 2)', 'Blitzkrieg', ''),
('139', 'Kwakwa (challenge 1)', 'Zombie', ''),
('140', 'Kwakwa (challenge 2)', 'Mains propres', ''),
('141', 'Bulbig Brozeur (challenge 1)', 'Anachorète', ''),
('142', 'Bulbig Brozeur (challenge 2)', 'Mains propres', ''),
('143', 'Wa Wabbit (challenge 1)', 'Hardi', ''),
('144', 'Wa Wabbit (challenge 2)', 'Blitzkrieg', ''),
('145', 'Kanniboul Ebil (challenge 1)', 'Zombie', ''),
('146', 'Kanniboul Ebil (challenge 2)', 'En premier', ''),
('147', 'Blop Coco Royal (challenge 1)', 'Duel', ''),
('148', 'Blop Coco Royal (challenge 2)', 'Pusillanime', ''),
('149', 'Blop Griotte Royal (challenge 1)', 'Duel', ''),
('150', 'Blop Griotte Royal (challenge 2)', 'Pusillanime', ''),
('151', 'Blop Indigo Royal (challenge 1)', 'Duel', ''),
('152', 'Blop Indigo Royal (challenge 2)', 'Pusillanime', ''),
('153', 'Blop Reinette Royal (challenge 1)', 'Duel', ''),
('154', 'Blop Reinette Royal (challenge 2)', 'Pusillanime', ''),
('155', 'Nelween (challenge 1)', 'En dernier', ''),
('156', 'Nelween (challenge 2)', 'Anachorète', ''),
('157', 'Gourlo le terrible (challenge 1)', 'En premier', ''),
('158', 'Gourlo le terrible (challenge 2)', 'Econome', ''),
('159', 'Craqueleur Légendaire (challenge 1)', 'Pusillanime', ''),
('160', 'Craqueleur Légendaire (challenge 2)', 'En premier', ''),
('161', 'Gelée Royale Menthe (challenge 1)', 'Duel', ''),
('162', 'Gelée Royale Menthe (challenge 2)', 'Collant', ''),
('163', 'Gelée Royale Fraise (challenge 1)', 'Duel', ''),
('164', 'Gelée Royale Fraise (challenge 2)', 'Collant', ''),
('165', 'Gelée Royale Citron (challenge 1)', 'Duel', ''),
('166', 'Gelée Royale Citron (challenge 2)', 'Collant', ''),
('167', 'Gelée Royale Bleue (challenge 1)', 'Duel', ''),
('168', 'Gelée Royale Bleue (challenge 2)', 'Collant', ''),
('169', 'Daïgoro (challenge 1)', 'Pusillanime', ''),
('170', 'Daïgoro (challenge 2)', 'En premier', ''),
('171', 'Abraknyde Ancestral (challenge 1)', 'Nomade', ''),
('172', 'Abraknyde Ancestral (challenge 2)', 'En premier', ''),
('173', 'Dragon Cochon (challenge 1)', 'Hardi', ''),
('174', 'Dragon Cochon (challenge 2)', 'Versatile', ''),
('175', 'Koulosse (challenge 1)', 'Zombie', ''),
('176', 'Koulosse (challenge 2)', 'Mains propres', ''),
('177', 'Meulou (challenge 1)', 'En premier', ''),
('178', 'Meulou (challenge 2)', 'Hardi', ''),
('179', 'Moon (challenge 1)', 'Versatile', ''),
('180', 'Moon (challenge 2)', 'Statue', ''),
('181', 'Silf le Rasboul Majeur (challenge 1)', 'En premier', ''),
('182', 'Silf le Rasboul Majeur (challenge 2)', 'Le temps qui court', ''),
('183', 'Maître Corbac (challenge 1)', 'Collant', ''),
('184', 'Maître Corbac (challenge 2)', 'En premier', ''),
('185', 'Rat Blanc (challenge 1)', 'En premier', ''),
('186', 'Rat Blanc (challenge 2)', 'Hardi', ''),
('187', 'Rat Noir (challenge 1)', 'Hardi', ''),
('188', 'Rat Noir (challenge 2)', 'Blitzkrieg', ''),
('189', 'Blop multicolore royal (challenge 1)', 'Hardi', ''),
('190', 'Blop multicolore royal (challenge 2)', 'Duel', ''),
('191', 'Minotoror (challenge 1)', 'Anachorète', ''),
('192', 'Minotoror (challenge 2)', 'Mains propres', ''),
('193', 'Royalmouth (challenge 1)', 'Mains propres', ''),
('194', 'Royalmouth (challenge 2)', 'En premier', ''),
('195', 'Maître Pandore (challenge 1)', 'En premier', ''),
('196', 'Maître Pandore (challenge 2)', 'Collant', ''),
('197', 'Tofu Royal (challenge 1)', 'En dernier', ''),
('198', 'Tofu Royal (challenge 2)', 'Statue', ''),
('199', 'Crocabulia (challenge 1)', 'Collant', ''),
('200', 'Crocabulia (challenge 2)', 'Blitzkrieg', ''),
('201', 'Skeunk (challenge 1)', 'Statue', ''),
('202', 'Skeunk (challenge 2)', 'Blitzkrieg', ''),
('203', 'Tanukouï San (challenge 1)', 'Focus', ''),
('204', 'Tanukouï San (challenge 2)', 'Hardi', ''),
('205', 'Péki Péki (challenge 1)', 'Statue', ''),
('206', 'Péki Péki (challenge 2)', 'Hardi', ''),
('207', 'Chêne Mou (challenge 1)', 'Circulez + perdu de vue', ''),
('208', 'Chêne Mou (challenge 2)', 'En premier', ''),
('209', 'Tynril ahuri (challenge 1)', 'Intouchable', ''),
('210', 'Tynril ahuri (challenge 2)', 'Zombie', ''),
('211', 'Mansot Royal (challenge 1)', 'En dernier', ''),
('212', 'Mansot Royal (challenge 2)', 'Collant', ''),
('213', 'Ben le Ripate (challenge 1)', 'Circulez', ''),
('214', 'Ben le Ripate (challenge 2)', 'Statue', ''),
('215', 'Sphincter Cell (challenge 1)', 'Hardi', ''),
('216', 'Sphincter Cell (challenge 2)', 'En dernier', ''),
('217', 'Kimbo (challenge 1)', 'Statue', ''),
('218', 'Kimbo (challenge 2)', 'En premier', ''),
('219', 'Minotot (challenge 1)', 'Circulez', ''),
('220', 'Minotot (challenge 2)', 'En premier', ''),
('221', 'Obsidiantre (challenge 1)', 'En premier', ''),
('222', 'Obsidiantre (challenge 2)', 'Statue', ''),
('223', 'Tengu Givrefoux (challenge 1)', 'En premier', ''),
('224', 'Tengu Givrefoux (challenge 2)', 'Statue', ''),
('225', 'Korriandre (challenge 1)', 'Mystique', ''),
('226', 'Korriandre (challenge 2)', 'Zombie', ''),
('227', 'Kralamour géant (challenge 1)', 'Nomade', ''),
('228', 'Kralamour géant (challenge 2)', 'Nomade', ''),
('229', 'Bworker (challenge 1)', 'Hardi', ''),
('230', 'Bworker (challenge 2)', 'Blitzkrieg', ''),
('231', 'Ougah (challenge 1)', 'Collant', ''),
('232', 'Ougah (challenge 2)', 'En dernier', ''),
('233', 'Kolosso (challenge 1)', 'En dernier (Blérom)', ''),
('234', 'Kolosso (challenge 2)', 'En premier (Xa)', ''),
('235', 'Fuji Givrefoux Nourricière (challenge 1)', 'En dernier', ''),
('236', 'Fuji Givrefoux Nourricière (challenge 2)', 'Statue', ''),
('237', 'Grolloum (challenge 1)', 'Versatile', ''),
('238', 'Grolloum (challenge 2)', 'Blitzkrieg', ''),
('239', 'Glourséleste (challenge 1)', 'En premier', ''),
('240', 'Glourséleste (challenge 2)', 'Collant', ''),
('241', 'Sapik (challenge 1)', 'Hardi', ''),
('242', 'Sapik (challenge 2)', 'Blitzkrieg', ''),
('243', 'Sapik (challenge duo)', 'Duo-Challenge et 20 tours max', ''),
('244', 'Papa Nowel (challenge 1)', 'En premier', ''),
('245', 'Papa Nowel (challenge 2)', 'Statue', ''),
('246', 'Papa Nowel (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('247', 'Père Fwetar (challenge 1)', 'Nomade', ''),
('248', 'Père Fwetar (challenge 2)', 'Hardi', ''),
('249', 'Père Fwetar (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('250', 'Sapik (challenge chrono)', '8 tours max', ''),
('251', 'Papa Nowel (challenge chrono)', '8 tours max', ''),
('252', 'Père Fwetar (challenge chrono)', '8 tours max', ''),
('253', 'Nileza (challenge duo)', 'Duo-Challenge et 40 tours max', ''),
('254', 'Missiz Frizz (challenge duo)', 'Duo-Challenge et 40 tours max', ''),
('255', 'Sylargh (challenge duo)', 'Duo-Challenge et 40 tours max', ''),
('256', 'Klime (challenge duo)', 'Duo-Challenge et 40 tours max', ''),
('257', 'Harebourg (challenge duo)', 'Duo-Challenge et 40 tours max', ''),
('258', 'Nileza (challenge 1)', 'Pusillanime', ''),
('259', 'Klime (challenge 1)', 'Pusillanime', ''),
('260', 'Missiz Frizz (challenge 1)', 'Nomade', ''),
('261', 'Klime (challenge 2)', 'Nomade', ''),
('262', 'Sylargh (challenge 1)', 'Anachorète', ''),
('263', 'Harebourg (challenge 1)', 'Versatile', ''),
('264', 'Nileza (challenge 2)', 'En dernier', ''),
('265', 'Missiz Frizz  (challenge 2)', 'Collant', ''),
('266', 'Sylargh (challenge 2)', 'Barbare', ''),
('267', 'Harebourg (challenge 2)', 'Statue', ''),
('268', 'Harebourg  et Nileza (challenge sbire 2)', 'Sbire 2', ''),
('269', 'Harebourg  et Missiz Frizz (challenge sbire 2)', 'Sbire 2', ''),
('270', 'Harebourg  et Sylargh (challenge sbire 2)', 'Sbire 2', ''),
('271', 'Harebourg  et Klime (challenge sbire 2)', 'Sbire 2', ''),
('272', 'Grozilla et Grasmera Somnambules (challenge chrono)', '8 tours max', ''),
('273', 'Grozilla et Grasmera Somnambules (challenge 1)', 'Statue', ''),
('274', 'Grozilla et Grasmera Somnambules (challenge 2)', 'Mains propres', ''),
('275', 'Grozilla et Grasmera Somnambules (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('276', 'Grozilla et Grasmera Épuisés (challenge chrono)', '8 tours max', ''),
('277', 'Grozilla et Grasmera Épuisés (challenge 1)', 'En premier', ''),
('278', 'Grozilla et Grasmera Épuisés (challenge 2)', 'Collant', ''),
('279', 'Grozilla et Grasmera Épuisés (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('280', 'Grozilla et Grasmera Fatigués (challenge chrono)', '8 tours max', ''),
('281', 'Grozilla et Grasmera Fatigués (challenge 1)', 'Nomade', ''),
('282', 'Grozilla et Grasmera Fatigués (challenge 2)', 'Blitzkrieg', ''),
('283', 'Grozilla et Grasmera Fatigués (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('284', 'Grozilla et Grasmera (challenge chrono)', '8 tours max', ''),
('285', 'Grozilla et Grasmera (challenge 1)', 'Zombie', ''),
('286', 'Grozilla et Grasmera (challenge 1)', 'Hardi', ''),
('287', 'Grozilla et Grasmera (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('288', 'Wa Wobot (Challenge 1)', 'Mains Propres', ''),
('289', 'Wa Wobot (challenge 2)', 'Blitzkrieg', ''),
('290', 'Wa Wobot (challenge duo)', 'duo et 20 tours max', ''),
('291', 'Maître des Pantins (challenge 1)', 'Statue', ''),
('292', 'Maître des Pantins (challenge 2)', 'Mains propres', ''),
('293', 'Maître des Pantins (challenge duo)', 'duo et 20 tours max', ''),
('294', 'Merkator (challenge duo)', 'Duo-Challenge et 39 tours max', ''),
('295', 'Merkator (challenge 1)', 'En dernier', ''),
('296', 'Merkator (challenge 2)', 'Mystique', ''),
('297', 'Ombre (challenge 1)', 'En premier', ''),
('298', 'Ombre (challenge 2)', 'Collant', ''),
('299', 'Ombre (challenge duo)', 'Duo-Challenge et 25 tours max', ''),
('300', 'Kanigroula (challenge 1)', 'En premier', ''),
('301', 'Kanigroula (challenge 2)', 'Hardi', ''),
('302', 'Kanigroula (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('303', 'Haute Truche (challenge 1)', 'En premier', ''),
('304', 'Haute Truche (challenge 2)', 'Barbare', ''),
('305', 'Haute Truche (challenge duo)', 'Duo-Challenge et 20 tours max', ''),
('306', 'Roi Nidas (challenge 1)', 'En premier', ''),
('307', 'Roi Nidas (challenge 2)', 'Statue', ''),
('308', 'Roi Nidas (challenge trio)', 'Duo-Challenge et 79 tours max', ''),
('309', 'Phossile (challenge 2)', 'Hardi', ''),
('310', 'Phossile (challenge 1)', 'Circulez + perdu de vue', ''),
('311', 'Phossile (challenge duo)', 'Duo-Challenge et 29 tours max', ''),
('312', 'Malléfisk (challenge 1)', 'Circulez', ''),
('313', 'Malléfisk (challenge 2)', 'Blitzkrieg', ''),
('314', 'Malléfisk (challenge duo)', 'duo et 29 tours max', ''),
('315', 'Reine des Voleurs (challenge 1)', 'En premier', ''),
('316', 'Reine des Voleurs (challenge 2)', 'Collant', ''),
('317', 'Reine des Voleurs (challenge trio)', 'Duo-Challenge et 79 tours max', ''),
('319', 'Toxoliath (challenge 2)', 'Anachorète', ''),
('320', 'Toxoliath (challenge duo)', 'Duo-Challenge et 79 tours max', ''),
('321', 'Capitaine Ekarlatte (challenge 1)', 'Statue', ''),
('322', 'Capitaine Ekarlatte (challenge 2)', 'Focus', ''),
('323', 'Capitaine Ekarlatte (challenge duo)', 'duo et 29  tours max', ''),
('324', 'Toxoliath (challenge 1)', 'Circulez', ''),
('325', 'Protozorreur (challenge 1)', 'Barbare', ''),
('326', 'Protozorreur (challenge 2)', 'Statue', ''),
('327', 'Protozorreur (challenge duo)', 'Duo-Challenge et 40 tours max', ''),
('328', 'Halouine (challenge chrono)', '8 tours max', ''),
('329', 'Halouine (challenge 1)', 'Hardi', ''),
('330', 'Halouine (challenge 2)', 'En dernier', ''),
('331', 'Halouine (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('332', 'Vortex (challenge 1)', 'Focus', ''),
('333', 'Vortex (challenge 2)', 'Hardi', ''),
('334', 'Vortex (challenge trio)', 'Duo-Challenge et 79 tours max', ''),
('335', 'XLII (challenge 1)', 'Barbare', ''),
('336', 'XLII (challenge 2)', 'Collant', ''),
('337', 'XLII (challenge duo)', 'Duo-Challenge et 79 tours max', ''),
('338', 'Fraktale (challenge 1)', 'Anachorète', ''),
('339', 'Fraktale (challenge 2)', 'Blitzkrieg', ''),
('340', 'Fraktale (challenge duo)', 'duo et 29  tours max', ''),
('341', 'Kankreblath (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('342', 'Kankreblath (challenge 1)', 'En dernier', ''),
('343', 'Kankreblath (challenge 2)', 'Collant', ''),
('344', 'Reine Nyée (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('345', 'Reine Nyée (challenge 1)', 'En premier', ''),
('346', 'Reine Nyée (challenge 2)', 'Hardi', ''),
('347', 'Le Chouque (challenge duo)', 'Duo-Challenge et 19 tours max', ''),
('348', 'Le Chouque (challenge 1)', 'En dernier', ''),
('349', 'Le Chouque (challenge 2)', 'Nomade', ''),
('350', 'Pounicheur (challenge duo)', 'duo et 29 tours max', ''),
('351', 'Pounicheur (challenge 1)', 'Statue', ''),
('352', 'Pounicheur (challenge 2)', 'Blitzkrieg', ''),
('353', 'Ush Galesh (challenge duo)', 'duo et 29 tours max', ''),
('354', 'Ush Galesh (challenge 2)', 'Zombie', ''),
('355', 'Ush Galesh (challenge 1)', 'Premier', ''),
('356', 'Chalœil (challenge 1)', 'Circulez + perdu de vue', ''),
('357', 'Chalœil (challenge 2)', 'Pusillanime', ''),
('358', 'Chalœil (challenge trio)', 'Trio-Challenge et 79 tours max', '');
