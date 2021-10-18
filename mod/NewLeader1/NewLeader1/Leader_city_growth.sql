--	指導者特性：全都市成長速度補正
INSERT OR REPLACE INTO Modifiers
		(ModifierId, ModifierType)
	VALUES
		('TOMATO_CITY_GROWTH', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_GROWTH');

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
	VALUES
		('TOMATO_CITY_GROWTH', 'Amount', 200);

INSERT OR REPLACE INTO TraitModifiers
		(TraitType, ModifierId)
	VALUES
		('TRAIT_LEADER_SISTER_KOTONOHA', 'TOMATO_CITY_GROWTH');
