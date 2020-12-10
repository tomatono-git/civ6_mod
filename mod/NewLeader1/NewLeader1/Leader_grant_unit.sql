-- ユニットを獲得

-- テクノロジー：帆走術を取得しているか
INSERT OR REPLACE INTO Requirements
        (RequirementId, RequirementType)
    VALUES
        ('REQUIRES_TECHNOLOGY_SAILING', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR REPLACE INTO RequirementArguments
        (RequirementId, Name, Value)
    VALUES
        ('REQUIRES_TECHNOLOGY_SAILING', 'TechnologyType', 'TECH_SAILING');

INSERT OR REPLACE INTO RequirementSets
        (RequirementSetId, RequirementSetType)
    VALUES
        ('PLAYER_HAS_SAILING_TECHNOLOGY', 'REQUIREMENTSET_TEST_ALL');

INSERT OR REPLACE INTO RequirementSetRequirements
        (RequirementSetId, RequirementId)
    VALUES
        ('PLAYER_HAS_SAILING_TECHNOLOGY', 'REQUIRES_TECHNOLOGY_SAILING');

-- 帆走術研究で沿岸首都に無償のガレー船を付与
INSERT OR REPLACE INTO Modifiers
        (ModifierId, ModifierType, RunOnce, Permanent, OwnerRequirementsetId)
    VALUES
        ('TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 1, 1, 'PLAYER_HAS_SAILING_TECHNOLOGY');

INSERT OR REPLACE INTO ModifierArguments
        (ModifierId, Name, Value)
    VALUES
        ('TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT', 'UnitType', 'UNIT_GALLEY'),
        ('TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT', 'Amount', 1),
        ('TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT', 'AllowUniqueOverride', 0);

INSERT OR REPLACE INTO TraitModifiers
        (TraitType, ModifierId)
    VALUES
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT');

-- TraitModifiers
		-- <!-- ガレー船を獲得する指導者特性指定？ -->
		-- <Row TraitType="TRAIT_LEADER_FALSE_GODDESS" ModifierId="TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT"/>

-- Modifiers
		-- <!-- 帆走術研究で沿岸首都に無償のガレー船入手 -->
		-- <Row>
		-- 	<ModifierId>TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT</ModifierId>
		-- 	<ModifierType>MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL</ModifierType>
		-- 	<!-- 効果：首都が沿岸都市だとユニット追加 -->
		-- 	<RunOnce>true</RunOnce>
		-- 	<!-- 効果：一回だけ発動 -->
		-- 	<Permanent>true</Permanent>
		-- 	<!-- 不明 -->
		-- 	<OwnerRequirementsetId>PLAYER_HAS_SAILING_TECHNOLOGY</OwnerRequirementsetId>
		-- 	<!-- 条件：帆走術の技術を持っているか -->
		-- </Row>

-- ModifierArguments
		-- <!-- 条件により無償のガレー船一体入手 -->
		-- <Row>
		-- 	<ModifierId>TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT</ModifierId>
		-- 	<Name>UnitType</Name>
		-- 	<Value>UNIT_GALLEY</Value>
		-- </Row>
		-- <Row>
		-- 	<ModifierId>TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT</ModifierId>
		-- 	<Name>Amount</Name>
		-- 	<Value>1</Value>
		-- </Row>
		-- <Row>
		-- 	<ModifierId>TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT</ModifierId>
		-- 	<Name>AllowUniqueOverride</Name>
		-- 	<Value>false</Value>
		-- </Row>


		-- <!-- オキチタウを獲得する指導者特性指定？ -->
		-- <Row TraitType="TRAIT_LEADER_FALSE_GODDESS" ModifierId="TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_CREE_OKIHTCITAW_UNIT"/>


		-- <!-- 陶磁器研究で無償のオキチタウ入手 -->
		-- <Row>
		-- 	<ModifierId>TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_CREE_OKIHTCITAW_UNIT</ModifierId>
		-- 	<ModifierType>MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL</ModifierType>
		-- 	<!-- 効果：首都にユニット追加 -->
		-- 	<RunOnce>true</RunOnce>
		-- 	<!-- 効果：一回だけ発動 -->
		-- 	<Permanent>true</Permanent>
		-- 	<!-- 不明 -->
		-- 	<OwnerRequirementsetId>PLAYER_HAS_POTTERY_TECHNOLOGY</OwnerRequirementsetId>
		-- 	<!-- 条件：陶磁器の技術を持っているか -->
		-- </Row>
		-- <!-- 帆走術研究で沿岸首都に無償のガレー船入手 -->
		-- <Row>
		-- 	<ModifierId>TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_GALLEY_UNIT</ModifierId>
		-- 	<ModifierType>MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL</ModifierType>
		-- 	<!-- 効果：首都が沿岸都市だとユニット追加 -->
		-- 	<RunOnce>true</RunOnce>
		-- 	<!-- 効果：一回だけ発動 -->
		-- 	<Permanent>true</Permanent>
		-- 	<!-- 不明 -->
		-- 	<OwnerRequirementsetId>PLAYER_HAS_SAILING_TECHNOLOGY</OwnerRequirementsetId>
		-- 	<!-- 条件：帆走術の技術を持っているか -->
		-- </Row>


		-- <!-- 条件により無償のオキチタウ一体入手 -->
		-- <Row>
		-- 	<ModifierId>TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_CREE_OKIHTCITAW_UNIT</ModifierId>
		-- 	<Name>UnitType</Name>
		-- 	<Value>UNIT_CREE_OKIHTCITAW</Value>
		-- </Row>
		-- <Row>
		-- 	<ModifierId>TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_CREE_OKIHTCITAW_UNIT</ModifierId>
		-- 	<Name>Amount</Name>
		-- 	<Value>1</Value>
		-- </Row>
		-- <Row>
		-- 	<ModifierId>TRAIT_FALSE_GODDESS_UNIQUE_LEADER_ADD_CREE_OKIHTCITAW_UNIT</ModifierId>
		-- 	<Name>AllowUniqueOverride</Name>
		-- 	<Value>false</Value>
		-- </Row>


	-- <RequirementSets>
	-- 	<!-- テクノロジー：帆走術を取得しているか -->
	-- 	<Row>
	-- 		<RequirementSetId>PLAYER_HAS_SAILING_TECHNOLOGY</RequirementSetId>
	-- 		<RequirementSetType>REQUIREMENTSET_TEST_ALL</RequirementSetType>
	-- 	</Row>
	-- </RequirementSets>
	-- <RequirementSetRequirements>
	-- 	<!-- テクノロジー：帆走術を取得しているか -->
	-- 	<Row>
	-- 		<RequirementSetId>PLAYER_HAS_SAILING_TECHNOLOGY</RequirementSetId>
	-- 		<RequirementId>REQUIRES_TECHNOLOGY_SAILING</RequirementId>
	-- 	</Row>
	-- </RequirementSetRequirements>
	-- <Requirements>
	-- 	<!-- テクノロジー：帆走術を取得しているか -->
	-- 	<Row>
	-- 		<RequirementId>REQUIRES_TECHNOLOGY_SAILING</RequirementId>
	-- 		<RequirementType>REQUIREMENT_PLAYER_HAS_TECHNOLOGY</RequirementType>
	-- 	</Row>
	-- </Requirements>
	-- <RequirementArguments>
	-- 	<!-- テクノロジー：帆走術を取得しているか -->
	-- 	<Row>
	-- 		<RequirementId>REQUIRES_TECHNOLOGY_SAILING</RequirementId>
	-- 		<Name>TechnologyType</Name>
	-- 		<Value>TECH_SAILING</Value>
	-- 	</Row>
	-- </RequirementArguments>
