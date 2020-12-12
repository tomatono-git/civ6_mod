INSERT INTO PolicyModifiers(PolicyType, ModifierId) VALUES
    ('POLICY_DISCIPLINE', 'SURVEY_RECONUNITEXPERIENCE');

-- 蛮族相手の戦闘力
UPDATE ModifierArguments
    SET Value = 50
    WHERE ModifierId = 'DISCIPLINE_BARBARIANCOMBAT' AND Name = 'Amount';

-- 偵察ユニットの経験値 +200% (100 -> 300)
UPDATE ModifierArguments
    SET Value = 300
    WHERE ModifierId = 'SURVEY_RECONUNITEXPERIENCE' AND Name = 'Amount';

-- -- Policy Cards
-- INSERT INTO Policies(PolicyType, PrereqCivic, Name, Description, GovernmentSlotType) VALUES
--     ('POLICY_BETTER_RECON_EARLY_EXPLORATION', 'CIVIC_CODE_OF_LAWS', 'LOC_POLICY_BETTER_RECON_EARLY_EXPLORATION_NAME', 'LOC_POLICY_BETTER_RECON_EARLY_EXPLORATION_DESC', 'SLOT_MILITARY'),
--     ('POLICY_BETTER_RECON_CIVILIZED_MILITIA', 'CIVIC_CODE_OF_LAWS', 'LOC_POLICY_BETTER_RECON_CIVILIZED_MILITIA_NAME', 'LOC_POLICY_BETTER_RECON_CIVILIZED_MILITIA_DESC', 'SLOT_MILITARY'),
--     ('POLICY_BETTER_RECON_NEW_WORLD_EXPLORATION', 'CIVIC_COLONIALISM', 'LOC_POLICY_BETTER_RECON_NEW_WORLD_EXPLORATION_NAME', 'LOC_POLICY_BETTER_RECON_NEW_WORLD_EXPLORATION_DESC', 'SLOT_MILITARY'),
--     ('POLICY_BETTER_RECON_SPOTTER', 'CIVIC_SCORCHED_EARTH', 'LOC_POLICY_BETTER_RECON_SPOTTER_NAME', 'LOC_POLICY_BETTER_RECON_SPOTTER_DESC', 'SLOT_MILITARY');

-- INSERT INTO Types(Type, Kind)
--     SELECT PolicyType, 'KIND_POLICY'
--     FROM Policies WHERE PolicyType LIKE 'POLICY_BETTER_RECON_%';

-- -- Modifiers for Production
-- INSERT INTO Modifiers(ModifierId, ModifierType)
--     SELECT 'MODIFIER_BETTER_RECON_EARLY_EXPLORATION_PROD_' || EraType, 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION'
--     FROM Eras;

-- INSERT INTO ModifierArguments(ModifierId, Name, Value)
--     SELECT ModifierId, 'UnitPromotionClass', 'PROMOTION_CLASS_RECON'
--     FROM Modifiers
--     WHERE ModifierId LIKE 'MODIFIER_BETTER_RECON_EARLY_EXPLORATION_PROD_%';

-- INSERT INTO ModifierArguments(ModifierId, Name, Value)
--     SELECT ModifierId, 'Amount', '100'
--     FROM Modifiers
--     WHERE ModifierId LIKE 'MODIFIER_BETTER_RECON_EARLY_EXPLORATION_PROD_%';

-- INSERT INTO ModifierArguments(ModifierId, Name, Value)
--     SELECT 'MODIFIER_BETTER_RECON_EARLY_EXPLORATION_PROD_' || EraType, 'EraType', EraType
--     FROM Eras;

-- -- Spotter
-- INSERT INTO UnitAbilities(UnitAbilityType, Name, Description, Inactive) VALUES
--     ('ABILITY_BETTER_RECON_SPOTTER', 'LOC_ABILITY_BETTER_RECON_SPOTTER_NAME', 'LOC_ABILITY_BETTER_RECON_SPOTTER_DESC', 1);

-- INSERT INTO Types(Type, Kind) VALUES
--     ('ABILITY_BETTER_RECON_SPOTTER', 'KIND_ABILITY');

-- INSERT INTO TypeTags(Type, Tag) VALUES
--     ('ABILITY_BETTER_RECON_SPOTTER', 'CLASS_RECON');

-- INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
--     ('REQUIREMENTS_BETTER_RECON_ADJACENT_RANGED_UNIT', 'REQUIREMENTSET_TEST_ALL');
-- INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
--     ('REQUIREMENTS_BETTER_RECON_ADJACENT_RANGED_UNIT', 'REQUIREMENT_UNIT_IS_RANGED'),
--     ('REQUIREMENTS_BETTER_RECON_ADJACENT_RANGED_UNIT', 'HOLD_THE_LINE_ADJACENT_UNIT_REQUIREMENT');

-- INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
--     ('MODIFIER_BETTER_RECON_SPOTTER_GRANT_ABILITY', 'MODIFIER_PLAYER_UNITS_GRANT_ABILITY', 'SURVEY_RECONUNITEXPERIENCE_REQUIREMENTS'),
--     ('MODIFIER_BETTER_RECON_SPOTTER_GRANT_BONUS_SIGHT', 'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER', 'REQUIREMENTS_BETTER_RECON_ADJACENT_RANGED_UNIT'),
--     ('MODIFIER_BETTER_RECON_SPOTTER_GRANT_BONUS_RANGE', 'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER', 'REQUIREMENTS_BETTER_RECON_ADJACENT_RANGED_UNIT'),
--     ('MODIFIER_BETTER_RECON_SPOTTER_BONUS_SIGHT', 'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT', NULL),
--     ('MODIFIER_BETTER_RECON_SPOTTER_BONUS_RANGE', 'MODIFIER_UNIT_ADJUST_ATTACK_RANGE', NULL);

-- INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
--     ('MODIFIER_BETTER_RECON_SPOTTER_GRANT_ABILITY', 'AbilityType', 'ABILITY_BETTER_RECON_SPOTTER'),
--     ('MODIFIER_BETTER_RECON_SPOTTER_GRANT_BONUS_SIGHT', 'ModifierId', 'MODIFIER_BETTER_RECON_SPOTTER_BONUS_SIGHT'),
--     ('MODIFIER_BETTER_RECON_SPOTTER_GRANT_BONUS_RANGE', 'ModifierId', 'MODIFIER_BETTER_RECON_SPOTTER_BONUS_RANGE'),
--     ('MODIFIER_BETTER_RECON_SPOTTER_BONUS_SIGHT', 'Amount', '1'),
--     ('MODIFIER_BETTER_RECON_SPOTTER_BONUS_RANGE', 'Amount', '1');

-- INSERT INTO UnitAbilityModifiers(UnitAbilityType, ModifierId) VALUES
--     ('ABILITY_BETTER_RECON_SPOTTER', 'MODIFIER_BETTER_RECON_SPOTTER_GRANT_BONUS_SIGHT'),
--     ('ABILITY_BETTER_RECON_SPOTTER', 'MODIFIER_BETTER_RECON_SPOTTER_GRANT_BONUS_RANGE');

-- -- 蛮族相手の戦闘力
-- UPDATE ModifierArguments
--     SET Value = 30
--     WHERE ModifierId = 'DISCIPLINE_BARBARIANCOMBAT' AND Name = 'Amount';

-- -- Reduce EXP bonus
-- UPDATE ModifierArguments
--     SET Value = 200
--     WHERE ModifierId = 'SURVEY_RECONUNITEXPERIENCE' AND Name = 'Amount';

-- -- Attach Policy Cards to Modifiers and reconfigure
-- INSERT INTO PolicyModifiers(PolicyType, ModifierId)
--     SELECT 'POLICY_BETTER_RECON_EARLY_EXPLORATION', ModifierId
--     FROM Modifiers
--     WHERE ModifierId LIKE 'MODIFIER_BETTER_RECON_EARLY_EXPLORATION_PROD_%';

-- INSERT INTO PolicyModifiers(PolicyType, ModifierId)
--     SELECT 'POLICY_BETTER_RECON_NEW_WORLD_EXPLORATION', ModifierId
--     FROM Modifiers
--     WHERE ModifierId LIKE 'MODIFIER_BETTER_RECON_EARLY_EXPLORATION_PROD_%';

-- INSERT INTO PolicyModifiers(PolicyType, ModifierId) VALUES
--     ('POLICY_BETTER_RECON_CIVILIZED_MILITIA', 'DISCIPLINE_BARBARIANCOMBAT'),
--     ('POLICY_BETTER_RECON_CIVILIZED_MILITIA', 'SURVEY_RECONUNITEXPERIENCE'),
--     ('POLICY_BETTER_RECON_NEW_WORLD_EXPLORATION', 'SURVEY_RECONUNITEXPERIENCE'),
--     ('POLICY_BETTER_RECON_SPOTTER', 'MODIFIER_BETTER_RECON_SPOTTER_GRANT_ABILITY');

-- INSERT INTO ObsoletePolicies(PolicyType, ObsoletePolicy) VALUES
--     ('POLICY_BETTER_RECON_EARLY_EXPLORATION', 'POLICY_BETTER_RECON_NEW_WORLD_EXPLORATION'),
--     ('POLICY_BETTER_RECON_CIVILIZED_MILITIA', 'POLICY_BETTER_RECON_NEW_WORLD_EXPLORATION');

-- DELETE FROM Policies
-- WHERE PolicyType IN ('POLICY_DISCIPLINE', 'POLICY_SURVEY');


