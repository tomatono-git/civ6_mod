-- 技術の研究で首都にユニットを付与

-- 帆走術を取得しているか
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

-- 帆走術の研究で沿岸首都にガレー船を付与
INSERT OR REPLACE INTO Modifiers
        (ModifierId, ModifierType, RunOnce, Permanent, OwnerRequirementsetId)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_GALLEY', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 1, 1, 'PLAYER_HAS_SAILING_TECHNOLOGY');
INSERT OR REPLACE INTO ModifierArguments
        (ModifierId, Name, Value)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_GALLEY', 'UnitType', 'UNIT_GALLEY'),
        ('TRAIT_PLAYER_GRANT_UNIT_GALLEY', 'Amount', 1),
        ('TRAIT_PLAYER_GRANT_UNIT_GALLEY', 'AllowUniqueOverride', 1);
INSERT OR REPLACE INTO TraitModifiers
        (TraitType, ModifierId)
    VALUES
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_PLAYER_GRANT_UNIT_GALLEY');


-- 畜産を取得しているか
INSERT OR REPLACE INTO Requirements
        (RequirementId, RequirementType)
    VALUES
        ('REQUIRES_TECHNOLOGY_ANIMAL_HUSBANDRY', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
INSERT OR REPLACE INTO RequirementArguments
        (RequirementId, Name, Value)
    VALUES
        ('REQUIRES_TECHNOLOGY_ANIMAL_HUSBANDRY', 'TechnologyType', 'TECH_ANIMAL_HUSBANDRY');
INSERT OR REPLACE INTO RequirementSets
        (RequirementSetId, RequirementSetType)
    VALUES
        ('PLAYER_HAS_ANIMAL_HUSBANDRY_TECHNOLOGY', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
        (RequirementSetId, RequirementId)
    VALUES
        ('PLAYER_HAS_ANIMAL_HUSBANDRY_TECHNOLOGY', 'REQUIRES_TECHNOLOGY_ANIMAL_HUSBANDRY');

-- 畜産の研究でユニットを付与
-- UNIT_SCOUT:   斥候
-- UNIT_SLINGER: 投石兵
-- UNIT_BUILDER: 労働者
-- UNIT_SETTLER: 開拓者
INSERT OR REPLACE INTO Modifiers
        (ModifierId, ModifierType, RunOnce, Permanent, OwnerRequirementsetId)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_SETTLER', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 1, 1, 'PLAYER_HAS_ANIMAL_HUSBANDRY_TECHNOLOGY'),
        ('TRAIT_PLAYER_GRANT_UNIT_BUILDER', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 1, 1, 'PLAYER_HAS_ANIMAL_HUSBANDRY_TECHNOLOGY'),
        ('TRAIT_PLAYER_GRANT_UNIT_SLINGER', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 1, 1, 'PLAYER_HAS_ANIMAL_HUSBANDRY_TECHNOLOGY'),
        ('TRAIT_PLAYER_GRANT_UNIT_SCOUT', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 1, 1, 'PLAYER_HAS_ANIMAL_HUSBANDRY_TECHNOLOGY');
INSERT OR REPLACE INTO ModifierArguments
        (ModifierId, Name, Value)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_SETTLER', 'UnitType', 'UNIT_SETTLER'),
        ('TRAIT_PLAYER_GRANT_UNIT_SETTLER', 'Amount', 1),
        ('TRAIT_PLAYER_GRANT_UNIT_SETTLER', 'AllowUniqueOverride', 0),
        ('TRAIT_PLAYER_GRANT_UNIT_BUILDER', 'UnitType', 'UNIT_BUILDER'),
        ('TRAIT_PLAYER_GRANT_UNIT_BUILDER', 'Amount', 2),
        ('TRAIT_PLAYER_GRANT_UNIT_BUILDER', 'AllowUniqueOverride', 0),
        ('TRAIT_PLAYER_GRANT_UNIT_SLINGER', 'UnitType', 'UNIT_SLINGER_2'),
        ('TRAIT_PLAYER_GRANT_UNIT_SLINGER', 'Amount', 3),
        ('TRAIT_PLAYER_GRANT_UNIT_SLINGER', 'AllowUniqueOverride', 1),
        ('TRAIT_PLAYER_GRANT_UNIT_SCOUT', 'UnitType', 'UNIT_SCOUT_2'),
        ('TRAIT_PLAYER_GRANT_UNIT_SCOUT', 'Amount', 3),
        ('TRAIT_PLAYER_GRANT_UNIT_SCOUT', 'AllowUniqueOverride', 1);
INSERT OR REPLACE INTO TraitModifiers
        (TraitType, ModifierId)
    VALUES
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_PLAYER_GRANT_UNIT_SETTLER'),
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_PLAYER_GRANT_UNIT_BUILDER'),
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_PLAYER_GRANT_UNIT_SLINGER'),
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_PLAYER_GRANT_UNIT_SCOUT');


-- 騎乗を取得しているか
INSERT OR REPLACE INTO Requirements
        (RequirementId, RequirementType)
    VALUES
        ('REQUIRES_TECHNOLOGY_HORSEBACK_RIDING', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
INSERT OR REPLACE INTO RequirementArguments
        (RequirementId, Name, Value)
    VALUES
        ('REQUIRES_TECHNOLOGY_HORSEBACK_RIDING', 'TechnologyType', 'TECH_HORSEBACK_RIDING');
INSERT OR REPLACE INTO RequirementSets
        (RequirementSetId, RequirementSetType)
    VALUES
        ('PLAYER_HAS_HORSEBACK_RIDING_TECHNOLOGY', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
        (RequirementSetId, RequirementId)
    VALUES
        ('PLAYER_HAS_HORSEBACK_RIDING_TECHNOLOGY', 'REQUIRES_TECHNOLOGY_HORSEBACK_RIDING');

-- 騎乗の研究でユニットを付与
INSERT OR REPLACE INTO Modifiers
        (ModifierId, ModifierType, RunOnce, Permanent, OwnerRequirementsetId)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_HORSEMAN', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 1, 1, 'PLAYER_HAS_HORSEBACK_RIDING_TECHNOLOGY');
INSERT OR REPLACE INTO ModifierArguments
        (ModifierId, Name, Value)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_HORSEMAN', 'UnitType', 'UNIT_HORSEMAN_2'),
        ('TRAIT_PLAYER_GRANT_UNIT_HORSEMAN', 'Amount', 3),
        ('TRAIT_PLAYER_GRANT_UNIT_HORSEMAN', 'AllowUniqueOverride', 1);
INSERT OR REPLACE INTO TraitModifiers
        (TraitType, ModifierId)
    VALUES
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_PLAYER_GRANT_UNIT_HORSEMAN');


-- 青銅器を取得しているか
INSERT OR REPLACE INTO Requirements
        (RequirementId, RequirementType)
    VALUES
        ('REQUIRES_TECHNOLOGY_BRONZE_WORKING', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
INSERT OR REPLACE INTO RequirementArguments
        (RequirementId, Name, Value)
    VALUES
        ('REQUIRES_TECHNOLOGY_BRONZE_WORKING', 'TechnologyType', 'TECH_BRONZE_WORKING');
INSERT OR REPLACE INTO RequirementSets
        (RequirementSetId, RequirementSetType)
    VALUES
        ('PLAYER_HAS_BRONZE_WORKING_TECHNOLOGY', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
        (RequirementSetId, RequirementId)
    VALUES
        ('PLAYER_HAS_BRONZE_WORKING_TECHNOLOGY', 'REQUIRES_TECHNOLOGY_BRONZE_WORKING');

-- 青銅器の研究でユニットを付与
INSERT OR REPLACE INTO Modifiers
        (ModifierId, ModifierType, RunOnce, Permanent, OwnerRequirementsetId)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_SPEARMAN', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 1, 1, 'PLAYER_HAS_BRONZE_WORKING_TECHNOLOGY');
INSERT OR REPLACE INTO ModifierArguments
        (ModifierId, Name, Value)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_SPEARMAN', 'UnitType', 'UNIT_SPEARMAN'),
        ('TRAIT_PLAYER_GRANT_UNIT_SPEARMAN', 'Amount', 2),
        ('TRAIT_PLAYER_GRANT_UNIT_SPEARMAN', 'AllowUniqueOverride', 1);
INSERT OR REPLACE INTO TraitModifiers
        (TraitType, ModifierId)
    VALUES
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_PLAYER_GRANT_UNIT_SPEARMAN');





-- 採鉱を取得しているか
INSERT OR REPLACE INTO Requirements
        (RequirementId, RequirementType)
    VALUES
        ('REQUIRES_TECHNOLOGY_MINING', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
INSERT OR REPLACE INTO RequirementArguments
        (RequirementId, Name, Value)
    VALUES
        ('REQUIRES_TECHNOLOGY_MINING', 'TechnologyType', 'TECH_MINING');
INSERT OR REPLACE INTO RequirementSets
        (RequirementSetId, RequirementSetType)
    VALUES
        ('PLAYER_HAS_MINING_TECHNOLOGY', 'REQUIREMENTSET_TEST_ALL');
INSERT OR REPLACE INTO RequirementSetRequirements
        (RequirementSetId, RequirementId)
    VALUES
        ('PLAYER_HAS_MINING_TECHNOLOGY', 'REQUIRES_TECHNOLOGY_MINING');

-- 採鉱の研究でユニットを付与
-- UNIT_SETTLER: 開拓者
INSERT OR REPLACE INTO Modifiers
        (ModifierId, ModifierType, RunOnce, Permanent, OwnerRequirementsetId)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_SETTLER_MINING', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 1, 1, 'PLAYER_HAS_MINING_TECHNOLOGY');
INSERT OR REPLACE INTO ModifierArguments
        (ModifierId, Name, Value)
    VALUES
        ('TRAIT_PLAYER_GRANT_UNIT_SETTLER_MINING', 'UnitType', 'UNIT_SETTLER'),
        ('TRAIT_PLAYER_GRANT_UNIT_SETTLER_MINING', 'Amount', 2),
        ('TRAIT_PLAYER_GRANT_UNIT_SETTLER_MINING', 'AllowUniqueOverride', 0);
INSERT OR REPLACE INTO TraitModifiers
        (TraitType, ModifierId)
    VALUES
        ('TRAIT_LEADER_SISTER_KOTONOHA', 'TRAIT_PLAYER_GRANT_UNIT_SETTLER_MINING');
