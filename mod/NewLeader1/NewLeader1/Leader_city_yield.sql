--	文明特性：全都市出力増幅
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType)
	VALUES
		('TOMATO_CITY_YIELD_GOLD', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER'),
		('TOMATO_CITY_YIELD_FOOD', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER'),
		('TOMATO_CITY_YIELD_SIENCE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER'),
		('TOMATO_CITY_YIELD_CULTURE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER'),
		('TOMATO_CITY_YIELD_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER'),
		('TOMATO_CITY_YIELD_FAITH', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER');

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
        -- 金
		('TOMATO_CITY_YIELD_GOLD', 'YieldType', 'YIELD_GOLD'),
		('TOMATO_CITY_YIELD_GOLD', 'Amount', 300),
        -- 食糧
		('TOMATO_CITY_YIELD_FOOD', 'YieldType', 'YIELD_FOOD'),
		('TOMATO_CITY_YIELD_FOOD', 'Amount', 200),
        -- 科学
		('TOMATO_CITY_YIELD_SIENCE', 'YieldType', 'YIELD_SIENCE'),
		('TOMATO_CITY_YIELD_SIENCE', 'Amount', 200),
        -- 文化
		('TOMATO_CITY_YIELD_CULTURE', 'YieldType', 'YIELD_CULTURE'),
		('TOMATO_CITY_YIELD_CULTURE', 'Amount', 200),
        -- 生産
		('TOMATO_CITY_YIELD_PRODUCTION', 'YieldType', 'YIELD_PRODUCTION'),
		('TOMATO_CITY_YIELD_PRODUCTION', 'Amount', 200),
        -- 信仰
		('TOMATO_CITY_YIELD_FAITH', 'YieldType', 'YIELD_FAITH'),
		('TOMATO_CITY_YIELD_FAITH', 'Amount', 400);

INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_CITY_YIELD_GOLD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_CITY_YIELD_FOOD'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_CITY_YIELD_SIENCE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_CITY_YIELD_CULTURE'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_CITY_YIELD_PRODUCTION'),
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_CITY_YIELD_FAITH');
