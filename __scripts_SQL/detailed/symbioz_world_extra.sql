
--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountsinformations`
--
ALTER TABLE `accountsinformations`
  ADD PRIMARY KEY (`AccountId`);

--
-- Indexes for table `almanach`
--
ALTER TABLE `almanach`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `arenamaps`
--
ALTER TABLE `arenamaps`
  ADD PRIMARY KEY (`MapId`);

--
-- Indexes for table `bankitems`
--
ALTER TABLE `bankitems`
  ADD PRIMARY KEY (`UId`);

--
-- Indexes for table `bidshopitems`
--
ALTER TABLE `bidshopitems`
  ADD PRIMARY KEY (`UId`);

--
-- Indexes for table `bidshops`
--
ALTER TABLE `bidshops`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `breeds`
--
ALTER TABLE `breeds`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `charactersitems`
--
ALTER TABLE `charactersitems`
  ADD PRIMARY KEY (`UId`);

--
-- Indexes for table `charactersmerchantsitems`
--
ALTER TABLE `charactersmerchantsitems`
  ADD PRIMARY KEY (`UId`);

--
-- Indexes for table `dayfights`
--
ALTER TABLE `dayfights`
  ADD PRIMARY KEY (`DayOfWeek`);

--
-- Indexes for table `delayedactions`
--
ALTER TABLE `delayedactions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `dungeons`
--
ALTER TABLE `dungeons`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `emotes`
--
ALTER TABLE `emotes`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `endfightactions`
--
ALTER TABLE `endfightactions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `endfightactions_old`
--
ALTER TABLE `endfightactions_old`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`Level`);

--
-- Indexes for table `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `guildsarena`
--
ALTER TABLE `guildsarena`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `heads`
--
ALTER TABLE `heads`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `idols`
--
ALTER TABLE `idols`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `interactiveelements`
--
ALTER TABLE `interactiveelements`
  ADD PRIMARY KEY (`UId`);

--
-- Indexes for table `interactiveskills`
--
ALTER TABLE `interactiveskills`
  ADD PRIMARY KEY (`UId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `itemsets`
--
ALTER TABLE `itemsets`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `livingobjects`
--
ALTER TABLE `livingobjects`
  ADD PRIMARY KEY (`GId`);

--
-- Indexes for table `mappositions`
--
ALTER TABLE `mappositions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mapsnospawns`
--
ALTER TABLE `mapsnospawns`
  ADD PRIMARY KEY (`MapId`);

--
-- Indexes for table `monsters`
--
ALTER TABLE `monsters`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `monsterspawns`
--
ALTER TABLE `monsterspawns`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mounts`
--
ALTER TABLE `mounts`
  ADD PRIMARY KEY (`Id`,`ItemGID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `npcs`
--
ALTER TABLE `npcs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `npcsactions`
--
ALTER TABLE `npcsactions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `npcsspawns`
--
ALTER TABLE `npcsspawns`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ornaments`
--
ALTER TABLE `ornaments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `portals`
--
ALTER TABLE `portals`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `spells`
--
ALTER TABLE `spells`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `spellsbombs`
--
ALTER TABLE `spellsbombs`
  ADD PRIMARY KEY (`SpellId`);

--
-- Indexes for table `spellslevels`
--
ALTER TABLE `spellslevels`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `spellsstates`
--
ALTER TABLE `spellsstates`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `startupactions`
--
ALTER TABLE `startupactions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subareas`
--
ALTER TABLE `subareas`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `almanach`
--
ALTER TABLE `almanach`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bidshops`
--
ALTER TABLE `bidshops`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `delayedactions`
--
ALTER TABLE `delayedactions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `endfightactions`
--
ALTER TABLE `endfightactions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `endfightactions_old`
--
ALTER TABLE `endfightactions_old`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `Level` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `interactiveelements`
--
ALTER TABLE `interactiveelements`
  MODIFY `UId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45567;

--
-- AUTO_INCREMENT for table `interactiveskills`
--
ALTER TABLE `interactiveskills`
  MODIFY `UId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6842;

--
-- AUTO_INCREMENT for table `monsterspawns`
--
ALTER TABLE `monsterspawns`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3697;

--
-- AUTO_INCREMENT for table `npcsactions`
--
ALTER TABLE `npcsactions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `npcsspawns`
--
ALTER TABLE `npcsspawns`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `startupactions`
--
ALTER TABLE `startupactions`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT;
