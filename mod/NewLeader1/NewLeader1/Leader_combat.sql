 --	戦闘

INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType)
	VALUES
		('TRAIT_TOMATO_JOYEUSE_ORDRE_COMBAT', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH'),
		('TRAIT_TOMATO_JOYEUSE_ORDRE_EXTRA_COMBAT', 'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT');

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
        -- ユニットの戦闘力 +15
		('TRAIT_TOMATO_JOYEUSE_ORDRE_COMBAT', 'Amount', 15),
        -- ユニットの戦闘力(対蛮族) +45
		('TRAIT_TOMATO_JOYEUSE_ORDRE_EXTRA_COMBAT', 'Amount', 45);

INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_TOMATO_JOYEUSE_ORDRE_COMBAT'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_TOMATO_JOYEUSE_ORDRE_EXTRA_COMBAT');


	-- <TraitModifiers>
	-- 	<Row TraitType="TRAIT_TOMATO_JOYEUSE_ORDRE" ModifierId="TRAIT_TOMATO_JOYEUSE_ORDRE_COMBAT"/>
	-- 	<Row TraitType="TRAIT_TOMATO_JOYEUSE_ORDRE" ModifierId="TRAIT_TOMATO_JOYEUSE_ORDRE_EXTRA_COMBAT"/>
	-- </TraitModifiers>

	-- <Modifiers>
	-- 	<Row>
	-- 		<ModifierId>TRAIT_TOMATO_JOYEUSE_ORDRE_COMBAT</ModifierId>
	-- 		<ModifierType>MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH</ModifierType>
	-- 	</Row>
	-- 	<Row>
	-- 		<ModifierId>TRAIT_TOMATO_JOYEUSE_ORDRE_EXTRA_COMBAT</ModifierId>
	-- 		<ModifierType>MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT</ModifierType>
	-- 	</Row>
	-- </Modifiers>

	-- <ModifierArguments>
	-- 	<Row>
	-- 		<ModifierId>TRAIT_TOMATO_JOYEUSE_ORDRE_COMBAT</ModifierId>
	-- 		<Name>Amount</Name>
	-- 		<Value>4</Value>
	-- 	</Row>
	-- 	<Row>
	-- 		<ModifierId>TRAIT_TOMATO_JOYEUSE_ORDRE_EXTRA_COMBAT</ModifierId>
	-- 		<Name>Amount</Name>
	-- 		<Value>8</Value>
	-- 	</Row>
	-- </ModifierArguments>

	-- <ModifierStrings>
	-- 	<Row ModifierId="TRAIT_TOMATO_JOYEUSE_ORDRE_EXTRA_COMBAT" Context="Preview" Text="LOC_TRAIT_TOMATO_JOYEUSE_ORDRE_EXTRA_COMBAT_DESCRIPTION"/>
	-- </ModifierStrings>
