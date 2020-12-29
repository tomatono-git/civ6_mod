-- 地形からの産出を補正

--	文明特性：草原の産出補正
INSERT OR REPLACE INTO Requirements
		(RequirementId, RequirementType)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_GRASS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId, Name, Value)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_GRASS', 'TerrainType', 'TERRAIN_GRASS');
INSERT OR REPLACE INTO RequirementSets
		(RequirementSetId, RequirementSetType)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
		(RequirementSetId, RequirementId)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS', 'REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_GRASS');
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES
		('SHIRAKAMI_FUBUKI_GRASS_GOLD', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS'),
		('SHIRAKAMI_FUBUKI_GRASS_FOOD', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS'),
		('SHIRAKAMI_FUBUKI_GRASS_PRODUCTION', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS'),
		('SHIRAKAMI_FUBUKI_GRASS_SCIENCE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS'),
		('SHIRAKAMI_FUBUKI_GRASS_CULTURE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS'),
		('SHIRAKAMI_FUBUKI_GRASS_FAITH', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('SHIRAKAMI_FUBUKI_GRASS_GOLD', 'YieldType', 'YIELD_GOLD'),
		('SHIRAKAMI_FUBUKI_GRASS_GOLD', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_GRASS_FOOD', 'YieldType', 'YIELD_FOOD'),
		('SHIRAKAMI_FUBUKI_GRASS_FOOD', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_GRASS_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION'),
		('SHIRAKAMI_FUBUKI_GRASS_PRODUCTION', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_GRASS_SCIENCE', 'YieldType', 'YIELD_SCIENCE'),
		('SHIRAKAMI_FUBUKI_GRASS_SCIENCE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_GRASS_CULTURE', 'YieldType', 'YIELD_CULTURE'),
		('SHIRAKAMI_FUBUKI_GRASS_CULTURE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_GRASS_FAITH', 'YieldType', 'YIELD_FAITH'),
		('SHIRAKAMI_FUBUKI_GRASS_FAITH', 'Amount', 4);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_GOLD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_FOOD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_PRODUCTION'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_SCIENCE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_CULTURE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_FAITH');

--	文明特性：草原丘陵の産出補正
INSERT OR REPLACE INTO Requirements
		(RequirementId, RequirementType)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_GRASS_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId, Name, Value)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_GRASS_HILLS', 'TerrainType', 'TERRAIN_GRASS_HILLS');
INSERT OR REPLACE INTO RequirementSets
		(RequirementSetId, RequirementSetType)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS_HILLS', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
		(RequirementSetId, RequirementId)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS_HILLS', 'REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_GRASS_HILLS');
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES
		-- ('SHIRAKAMI_FUBUKI_GRASS_HILLS_FOOD', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS_HILLS'),
		('SHIRAKAMI_FUBUKI_GRASS_HILLS_PRODUCTION', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS_HILLS'),
		-- ('SHIRAKAMI_FUBUKI_GRASS_HILLS_SCIENCE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS_HILLS'),
		-- ('SHIRAKAMI_FUBUKI_GRASS_HILLS_CULTURE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS_HILLS'),
		('SHIRAKAMI_FUBUKI_GRASS_HILLS_FAITH', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_GRASS_HILLS');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		-- ('SHIRAKAMI_FUBUKI_GRASS_HILLS_FOOD', 'YieldType', 'YIELD_FOOD'),
		-- ('SHIRAKAMI_FUBUKI_GRASS_HILLS_FOOD', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_GRASS_HILLS_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION'),
		('SHIRAKAMI_FUBUKI_GRASS_HILLS_PRODUCTION', 'Amount', 1),
		-- ('SHIRAKAMI_FUBUKI_GRASS_HILLS_SCIENCE', 'YieldType', 'YIELD_SCIENCE'),
		-- ('SHIRAKAMI_FUBUKI_GRASS_HILLS_SCIENCE', 'Amount', 1),
		-- ('SHIRAKAMI_FUBUKI_GRASS_HILLS_CULTURE', 'YieldType', 'YIELD_CULTURE'),
		-- ('SHIRAKAMI_FUBUKI_GRASS_HILLS_CULTURE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_GRASS_HILLS_FAITH', 'YieldType', 'YIELD_FAITH'),
		('SHIRAKAMI_FUBUKI_GRASS_HILLS_FAITH', 'Amount', 4);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		-- ('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_HILLS_FOOD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_HILLS_PRODUCTION'),
		-- ('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_HILLS_SCIENCE'),
		-- ('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_HILLS_CULTURE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_GRASS_HILLS_FAITH');

--	文明特性：沿岸の産出補正
INSERT OR REPLACE INTO Requirements
		(RequirementId, RequirementType)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_COAST', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId, Name, Value)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_COAST', 'TerrainType', 'TERRAIN_COAST');
INSERT OR REPLACE INTO RequirementSets
		(RequirementSetId, RequirementSetType)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_COAST', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
		(RequirementSetId, RequirementId)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_COAST', 'REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_COAST');
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES
		('SHIRAKAMI_FUBUKI_COAST_FOOD', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_COAST'),
		('SHIRAKAMI_FUBUKI_COAST_PRODUCTION', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_COAST'),
		('SHIRAKAMI_FUBUKI_COAST_SCIENCE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_COAST'),
		('SHIRAKAMI_FUBUKI_COAST_CULTURE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_COAST'),
		('SHIRAKAMI_FUBUKI_COAST_FAITH', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_COAST');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('SHIRAKAMI_FUBUKI_COAST_FOOD', 'YieldType', 'YIELD_FOOD'),
		('SHIRAKAMI_FUBUKI_COAST_FOOD', 'Amount', 2),
		('SHIRAKAMI_FUBUKI_COAST_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION'),
		('SHIRAKAMI_FUBUKI_COAST_PRODUCTION', 'Amount', 4),
		('SHIRAKAMI_FUBUKI_COAST_SCIENCE', 'YieldType', 'YIELD_SCIENCE'),
		('SHIRAKAMI_FUBUKI_COAST_SCIENCE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_COAST_CULTURE', 'YieldType', 'YIELD_CULTURE'),
		('SHIRAKAMI_FUBUKI_COAST_CULTURE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_COAST_FAITH', 'YieldType', 'YIELD_FAITH'),
		('SHIRAKAMI_FUBUKI_COAST_FAITH', 'Amount', 4);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_COAST_FOOD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_COAST_PRODUCTION'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_COAST_SCIENCE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_COAST_CULTURE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_COAST_FAITH');

--	文明特性：遠洋の産出補正
INSERT OR REPLACE INTO Requirements
		(RequirementId, RequirementType)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_OCEAN', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId, Name, Value)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_OCEAN', 'TerrainType', 'TERRAIN_OCEAN');
INSERT OR REPLACE INTO RequirementSets
		(RequirementSetId, RequirementSetType)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_OCEAN', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
		(RequirementSetId, RequirementId)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_OCEAN', 'REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_OCEAN');
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES
		('SHIRAKAMI_FUBUKI_OCEAN_FOOD', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_OCEAN'),
		('SHIRAKAMI_FUBUKI_OCEAN_PRODUCTION', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_OCEAN'),
		('SHIRAKAMI_FUBUKI_OCEAN_SCIENCE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_OCEAN'),
		('SHIRAKAMI_FUBUKI_OCEAN_CULTURE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_OCEAN'),
		('SHIRAKAMI_FUBUKI_OCEAN_FAITH', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_OCEAN');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('SHIRAKAMI_FUBUKI_OCEAN_FOOD', 'YieldType', 'YIELD_FOOD'),
		('SHIRAKAMI_FUBUKI_OCEAN_FOOD', 'Amount', 3),
		('SHIRAKAMI_FUBUKI_OCEAN_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION'),
		('SHIRAKAMI_FUBUKI_OCEAN_PRODUCTION', 'Amount', 4),
		('SHIRAKAMI_FUBUKI_OCEAN_SCIENCE', 'YieldType', 'YIELD_SCIENCE'),
		('SHIRAKAMI_FUBUKI_OCEAN_SCIENCE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_OCEAN_CULTURE', 'YieldType', 'YIELD_CULTURE'),
		('SHIRAKAMI_FUBUKI_OCEAN_CULTURE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_OCEAN_FAITH', 'YieldType', 'YIELD_FAITH'),
		('SHIRAKAMI_FUBUKI_OCEAN_FAITH', 'Amount', 4);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_OCEAN_FOOD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_OCEAN_PRODUCTION'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_OCEAN_SCIENCE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_OCEAN_CULTURE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_OCEAN_FAITH');

--	文明特性：砂漠の産出補正
INSERT OR REPLACE INTO Requirements
		(RequirementId, RequirementType)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_DESERT', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId, Name, Value)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_DESERT', 'TerrainType', 'TERRAIN_DESERT');
INSERT OR REPLACE INTO RequirementSets
		(RequirementSetId, RequirementSetType)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
		(RequirementSetId, RequirementId)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT', 'REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_DESERT');
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES
		('SHIRAKAMI_FUBUKI_DESERT_GOLD', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT'),
		('SHIRAKAMI_FUBUKI_DESERT_FOOD', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT'),
		('SHIRAKAMI_FUBUKI_DESERT_PRODUCTION', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT'),
		('SHIRAKAMI_FUBUKI_DESERT_SCIENCE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT'),
		('SHIRAKAMI_FUBUKI_DESERT_CULTURE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT'),
		('SHIRAKAMI_FUBUKI_DESERT_FAITH', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('SHIRAKAMI_FUBUKI_DESERT_GOLD', 'YieldType', 'YIELD_GOLD'),
		('SHIRAKAMI_FUBUKI_DESERT_GOLD', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_DESERT_FOOD', 'YieldType', 'YIELD_FOOD'),
		('SHIRAKAMI_FUBUKI_DESERT_FOOD', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_DESERT_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION'),
		('SHIRAKAMI_FUBUKI_DESERT_PRODUCTION', 'Amount', 4),
		('SHIRAKAMI_FUBUKI_DESERT_SCIENCE', 'YieldType', 'YIELD_SCIENCE'),
		('SHIRAKAMI_FUBUKI_DESERT_SCIENCE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_DESERT_CULTURE', 'YieldType', 'YIELD_CULTURE'),
		('SHIRAKAMI_FUBUKI_DESERT_CULTURE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_DESERT_FAITH', 'YieldType', 'YIELD_FAITH'),
		('SHIRAKAMI_FUBUKI_DESERT_FAITH', 'Amount', 4);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_GOLD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_FOOD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_PRODUCTION'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_SCIENCE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_CULTURE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_FAITH');

--	文明特性：砂漠の産出補正
INSERT OR REPLACE INTO Requirements
		(RequirementId, RequirementType)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_DESERT_HILLS', 'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES');
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId, Name, Value)
	VALUES
		('REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_DESERT_HILLS', 'TerrainType', 'TERRAIN_DESERT_HILLS');
INSERT OR REPLACE INTO RequirementSets
		(RequirementSetId, RequirementSetType)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT_HILLS', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
		(RequirementSetId, RequirementId)
	VALUES
		('REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT_HILLS', 'REQUIRES_SHIRAKAMI_FUBUKI_PLOT_HAS_DESERT_HILLS');
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_FOOD', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT_HILLS'),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_PRODUCTION', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT_HILLS'),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_SCIENCE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT_HILLS'),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_CULTURE', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT_HILLS'),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_FAITH', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'REQUIREMENT_SET_SHIRAKAMI_FUBUKI_DESERT_HILLS');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_FOOD', 'YieldType', 'YIELD_FOOD'),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_FOOD', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION'),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_PRODUCTION', 'Amount', 4),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_SCIENCE', 'YieldType', 'YIELD_SCIENCE'),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_SCIENCE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_CULTURE', 'YieldType', 'YIELD_CULTURE'),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_CULTURE', 'Amount', 1),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_FAITH', 'YieldType', 'YIELD_FAITH'),
		('SHIRAKAMI_FUBUKI_DESERT_HILLS_FAITH', 'Amount', 4);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_HILLS_FOOD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_HILLS_PRODUCTION'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_HILLS_SCIENCE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_HILLS_CULTURE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'SHIRAKAMI_FUBUKI_DESERT_HILLS_FAITH');


