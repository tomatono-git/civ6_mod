-- 他文明に対し、通常よりも5レベル高い外交的視野を得る
INSERT OR REPLACE INTO Modifiers
        (ModifierId, ModifierType)
    VALUES
        ('TRAIT_TOMATO_PLAYER_ADD_DIPLO_VISIBILITY', 'MODIFIER_PLAYER_ADD_DIPLO_VISIBILITY');
INSERT OR REPLACE INTO ModifierArguments
        (ModifierId, Name, Value)
    VALUES
        ('TRAIT_TOMATO_PLAYER_ADD_DIPLO_VISIBILITY', 'Amount', 5);
        -- ('TRAIT_TOMATO_PLAYER_ADD_DIPLO_VISIBILITY', 'Amount', 5),
        -- ('TRAIT_TOMATO_PLAYER_ADD_DIPLO_VISIBILITY', 'Source', 'SOURCE_FLAC_MISAKI'),
        -- ('TRAIT_TOMATO_PLAYER_ADD_DIPLO_VISIBILITY', 'SourceType', 'DIPLO_SOURCE_ALL_NAMES');
INSERT OR REPLACE INTO TraitModifiers
        (TraitType, ModifierId)
    VALUES
        -- -- 使節を送ると隠しアジェンダが見える(フランスのカトリーヌ・ド・メディシスと同じ)
        -- ('TRAIT_LEADER_SISTER_KOTONOHA', 'UNIQUE_LEADER_ADD_VISIBILITY'),
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_TOMATO_PLAYER_ADD_DIPLO_VISIBILITY');

-- INSERT INTO DiplomaticVisibilitySources
--         (VisibilitySourceType, Description, ActionDescription, GossipString, TraitType)
--     VALUES
--         ('SOURCE_FLAC_MISAKI', 'LOC_VIZSOURCE_FLAC_MISAKI', 'LOC_VIZSOURCE_ACTION_FLAC_MISAKI', 'LOC_GOSSIP_SOURCE_FLAC_MISAKI', 'TRAIT_LEADER_FLAC_MISAKI');




	-- <TraitModifiers>
	-- 	<!-- 使節を送ると隠しアジェンダが見える(バニラのまま使うだけ) -->
	-- 	<Row TraitType="TRAIT_LEADER_FALSE_GODDESS" ModifierId="TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_SPY_CAPACITY"/>
	-- </TraitModifiers>


	-- <Modifiers>
	-- 	<!-- 他文明に対し、通常よりも1レベル高い外交的視野を得る -->
	-- 	<Row>
	-- 		<ModifierId>UNIQUE_LEADER_ADD_VISIBILITY_YUKARI</ModifierId>
	-- 		<ModifierType>MODIFIER_PLAYER_ADD_DIPLO_VISIBILITY</ModifierType>
	-- 	</Row>
	-- </Modifiers>

	-- <ModifierArguments>
	-- 	<!-- 他文明に対し、通常よりも1レベル高い外交的視野を得る -->
	-- 	<Row>
	-- 		<ModifierId>UNIQUE_LEADER_ADD_VISIBILITY_YUKARI</ModifierId>
	-- 		<Name>Amount</Name>
	-- 		<Value>1</Value>
	-- 	</Row>
	-- </ModifierArguments>
