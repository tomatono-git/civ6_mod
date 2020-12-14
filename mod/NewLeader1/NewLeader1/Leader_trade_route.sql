--	文明特性：国内交易路の産出補正
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType)
	VALUES
		('AKAI_HEART_TRADE_ROUTE_FOOD_DOMESTIC', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC'),
		('AKAI_HEART_TRADE_ROUTE_PRODUCTION_DOMESTIC', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC'),
		('AKAI_HEART_TRADE_ROUTE_SCIENCE_DOMESTIC', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC'),
		('AKAI_HEART_TRADE_ROUTE_CULTURE_DOMESTIC', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC'),
		('AKAI_HEART_TRADE_ROUTE_GOLD_DOMESTIC', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('AKAI_HEART_TRADE_ROUTE_FOOD_DOMESTIC', 'YieldType', 'YIELD_FOOD'),
		('AKAI_HEART_TRADE_ROUTE_FOOD_DOMESTIC', 'Amount', 10),
		('AKAI_HEART_TRADE_ROUTE_PRODUCTION_DOMESTIC', 'YieldType', 'YIELD_PRODUCTION'),
		('AKAI_HEART_TRADE_ROUTE_PRODUCTION_DOMESTIC', 'Amount', 5),
		('AKAI_HEART_TRADE_ROUTE_SCIENCE_DOMESTIC', 'YieldType', 'YIELD_SCIENCE'),
		('AKAI_HEART_TRADE_ROUTE_SCIENCE_DOMESTIC', 'Amount', 5),
		('AKAI_HEART_TRADE_ROUTE_CULTURE_DOMESTIC', 'YieldType', 'YIELD_CULTURE'),
		('AKAI_HEART_TRADE_ROUTE_CULTURE_DOMESTIC', 'Amount', 5),
		('AKAI_HEART_TRADE_ROUTE_GOLD_DOMESTIC', 'YieldType', 'YIELD_GOLD'),
		('AKAI_HEART_TRADE_ROUTE_GOLD_DOMESTIC', 'Amount', 12);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_FOOD_DOMESTIC'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_PRODUCTION_DOMESTIC'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_SCIENCE_DOMESTIC'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_CULTURE_DOMESTIC'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_GOLD_DOMESTIC');

--	文明特性：国際交易路の産出補正
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType)
	VALUES
		('AKAI_HEART_TRADE_ROUTE_FOOD_INTERNATIONAL', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),
		('AKAI_HEART_TRADE_ROUTE_PRODUCTION_INTERNATIONAL', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),
		('AKAI_HEART_TRADE_ROUTE_SCIENCE_INTERNATIONAL', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),
		('AKAI_HEART_TRADE_ROUTE_CULTURE_INTERNATIONAL', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),
		('AKAI_HEART_TRADE_ROUTE_GOLD_INTERNATIONAL', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('AKAI_HEART_TRADE_ROUTE_FOOD_INTERNATIONAL', 'YieldType', 'YIELD_FOOD'),
		('AKAI_HEART_TRADE_ROUTE_FOOD_INTERNATIONAL', 'Amount', 4),
		('AKAI_HEART_TRADE_ROUTE_PRODUCTION_INTERNATIONAL', 'YieldType', 'YIELD_PRODUCTION'),
		('AKAI_HEART_TRADE_ROUTE_PRODUCTION_INTERNATIONAL', 'Amount', 4),
		('AKAI_HEART_TRADE_ROUTE_SCIENCE_INTERNATIONAL', 'YieldType', 'YIELD_SCIENCE'),
		('AKAI_HEART_TRADE_ROUTE_SCIENCE_INTERNATIONAL', 'Amount', 4),
		('AKAI_HEART_TRADE_ROUTE_CULTURE_INTERNATIONAL', 'YieldType', 'YIELD_CULTURE'),
		('AKAI_HEART_TRADE_ROUTE_CULTURE_INTERNATIONAL', 'Amount', 4),
		('AKAI_HEART_TRADE_ROUTE_GOLD_INTERNATIONAL', 'YieldType', 'YIELD_GOLD'),
		('AKAI_HEART_TRADE_ROUTE_GOLD_INTERNATIONAL', 'Amount', 8);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_FOOD_INTERNATIONAL'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_PRODUCTION_INTERNATIONAL'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_SCIENCE_INTERNATIONAL'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_CULTURE_INTERNATIONAL'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_GOLD_INTERNATIONAL');

--	文明特性：同盟国交易路の補正
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType)
	VALUES
		('AKAI_HEART_TRADE_ROUTE_FOOD_ALLY', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_ORIGIN_YIELD_FOR_ALLY_ROUTE'),
		('AKAI_HEART_TRADE_ROUTE_PRODUCTION_ALLY', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_ORIGIN_YIELD_FOR_ALLY_ROUTE'),
		('AKAI_HEART_TRADE_ROUTE_SCIENCE_ALLY', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_ORIGIN_YIELD_FOR_ALLY_ROUTE'),
		('AKAI_HEART_TRADE_ROUTE_CULTURE_ALLY', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_ORIGIN_YIELD_FOR_ALLY_ROUTE'),
		('AKAI_HEART_TRADE_ROUTE_GOLD_ALLY', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_ORIGIN_YIELD_FOR_ALLY_ROUTE');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('AKAI_HEART_TRADE_ROUTE_FOOD_ALLY', 'YieldType', 'YIELD_FOOD'),
		('AKAI_HEART_TRADE_ROUTE_FOOD_ALLY', 'Amount', 4),
		('AKAI_HEART_TRADE_ROUTE_PRODUCTION_ALLY', 'YieldType', 'YIELD_PRODUCTION'),
		('AKAI_HEART_TRADE_ROUTE_PRODUCTION_ALLY', 'Amount', 4),
		('AKAI_HEART_TRADE_ROUTE_SCIENCE_ALLY', 'YieldType', 'YIELD_SCIENCE'),
		('AKAI_HEART_TRADE_ROUTE_SCIENCE_ALLY', 'Amount', 4),
		('AKAI_HEART_TRADE_ROUTE_CULTURE_ALLY', 'YieldType', 'YIELD_CULTURE'),
		('AKAI_HEART_TRADE_ROUTE_CULTURE_ALLY', 'Amount', 4),
		('AKAI_HEART_TRADE_ROUTE_GOLD_ALLY', 'YieldType', 'YIELD_GOLD'),
		('AKAI_HEART_TRADE_ROUTE_GOLD_ALLY', 'Amount', 8);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_FOOD_ALLY'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_PRODUCTION_ALLY'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_SCIENCE_ALLY'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_CULTURE_ALLY'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_GOLD_ALLY');

--	文明特性：交易路の上限数補正
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType)
	VALUES
		('AKAI_HEART_TRADE_ROUTE_CAPACITY', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY');
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('AKAI_HEART_TRADE_ROUTE_CAPACITY', 'Amount', 5);
INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'AKAI_HEART_TRADE_ROUTE_CAPACITY');

-- --	指導者特性：黒妃カトリーヌと同一
-- INSERT OR REPLACE INTO TraitModifiers
-- 		(TraitType, ModifierId)
-- 	VALUES
-- 		('TRAIT_LEADER_AKAI_HEART', 'UNIQUE_LEADER_ADD_VISIBILITY'),
-- 		('TRAIT_LEADER_AKAI_HEART', 'UNIQUE_LEADER_ADD_SPY_CAPACITY'),
-- 		('TRAIT_LEADER_AKAI_HEART', 'UNIQUE_LEADER_ADD_SPY_UNIT'),
-- 		('TRAIT_LEADER_AKAI_HEART', 'UNIQUE_LEADER_SPIES_START_PROMOTED');

