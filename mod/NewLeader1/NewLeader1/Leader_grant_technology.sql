--	指導者特性：技術解禁
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType)
	VALUES
		-- -- 畜産
		-- ('TOMATO_TECH_ANIMAL_HUSBANDRY', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY'),
		-- 帆走術
		('TOMATO_GRANT_TECH_SAILING', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY'),
		-- 造船
		('TOMATO_GRANT_TECH_SHIPBUILDING', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY'),
		-- 天文航法
		('TOMATO_GRANT_TECH_CELESTIAL_NAVIGATION', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY'),
		-- 控え壁
		('TOMATO_GRANT_TECH_BUTTRESS', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY'),
		-- 天文航法
		('TOMATO_GRANT_TECH_CELESTIAL_NAVIGATION', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY'),
		-- 占星術
		('TOMATO_GRANT_TECH_ASTROLOGY', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY');

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		-- -- 畜産
		-- ('TOMATO_TECH_ANIMAL_HUSBANDRY', 'TechType', 'TECH_ANIMAL_HUSBANDRY'),
		-- 帆走術
		('TOMATO_GRANT_TECH_SAILING', 'TechType', 'TECH_SAILING'),
		-- 造船
		('TOMATO_GRANT_TECH_SHIPBUILDING', 'TechType', 'TECH_SHIPBUILDING'),
		-- 天文航法
		('TOMATO_GRANT_TECH_CELESTIAL_NAVIGATION', 'TechType', 'TECH_CELESTIAL_NAVIGATION'),
		-- 控え壁
		('TOMATO_GRANT_TECH_BUTTRESS', 'TechType', 'TECH_BUTTRESS'),
		-- 天文航法
		('TOMATO_GRANT_TECH_CELESTIAL_NAVIGATION', 'TechType', 'TECH_CELESTIAL_NAVIGATION'),
		-- 占星術
		('TOMATO_GRANT_TECH_ASTROLOGY', 'TechType', 'TECH_ASTROLOGY');

INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		-- -- 畜産
		-- ('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_TECH_ANIMAL_HUSBANDRY'),
		-- 帆走術
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_GRANT_TECH_SAILING'),
		-- 造船
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_GRANT_TECH_SHIPBUILDING'),
		-- 天文航法
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_GRANT_TECH_CELESTIAL_NAVIGATION'),
		-- 控え壁
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_GRANT_TECH_BUTTRESS'),
		-- 天文航法
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_GRANT_TECH_CELESTIAL_NAVIGATION'),
		-- 占星術
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_GRANT_TECH_ASTROLOGY');


--	指導者特性：外洋航行可能
-- INSERT OR REPLACE INTO Modifiers
-- 		(ModifierId, ModifierType)
-- 	VALUES
-- 		('TOMATO_GRANT_TECH_EARLY_OCEAN_NAVIGATION', 'MODIFIER_PLAYER_UNITS_ADJUST_VALID_TERRAIN');

-- INSERT OR REPLACE INTO ModifierArguments
-- 		(ModifierId, Name, Value)
-- 	VALUES
-- 		('TOMATO_GRANT_TECH_EARLY_OCEAN_NAVIGATION', 'TerrainType', 'TERRAIN_OCEAN'),
-- 		('TOMATO_GRANT_TECH_EARLY_OCEAN_NAVIGATION', 'Valid', 1);

-- INSERT OR REPLACE INTO TraitModifiers
-- 		(TraitType, ModifierId)
-- 	VALUES
-- 		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_GRANT_TECH_EARLY_OCEAN_NAVIGATION');
