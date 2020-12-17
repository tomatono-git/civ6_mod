-- Academy_Units
-- Author: Flactine
-- DateCreated: 6/20/2020 10:35:34 PM
--------------------------------------------------------------
--=====
--Types
--=====
INSERT INTO Types
(Type,							Kind)
VALUES
('UNIT_FLAC_JUDGEMENT',			'KIND_UNIT'),
('UNIT_FLAC_MISAKA_SISTERS',	'KIND_UNIT');
--=====
--Units
--=====
INSERT INTO Units
(UnitType,					Name, 							Description, 							TraitType,									Cost,		Maintenance,		BaseMoves,		BaseSightRange,		ZoneOfControl, 	Domain,		Combat,		RangedCombat,	Range,	FormationClass, PromotionClass,	AdvisorType,	PurchaseYield, PseudoYieldType,	MandatoryObsoleteTech)
SELECT
'UNIT_FLAC_JUDGEMENT',		'LOC_UNIT_FLAC_JUDGEMENT_NAME',	'LOC_UNIT_FLAC_JUDGEMENT_DESCRIPTION',	'TRAIT_CIVILIZATION_UNIT_FLAC_JUDGEMENT',	Cost*1.25, 	Maintenance,		BaseMoves+1,	BaseSightRange+1,	ZoneOfControl,	Domain, 	Combat+5,	Combat,			0,		FormationClass,	PromotionClass,	AdvisorType,	PurchaseYield, PseudoYieldType,	MandatoryObsoleteTech
FROM Units WHERE UnitType = 'UNIT_SCOUT';

INSERT INTO Units
(UnitType,					Name, 									Description, 								TraitType,										Cost,		Maintenance,		BaseMoves,		BaseSightRange,		ZoneOfControl, 	Domain,		Combat,		FormationClass, PromotionClass,	AdvisorType,	PurchaseYield, MandatoryObsoleteTech, 		PrereqTech)
SELECT
'UNIT_FLAC_MISAKA_SISTERS',	'LOC_UNIT_FLAC_MISAKA_SISTERS_NAME',	'LOC_UNIT_FLAC_MISAKA_SISTERS_DESCRIPTION',	'TRAIT_LEADER_UNIT_FLAC_MISAKA_SISTERS',	Cost*0.75, 	Maintenance-3,		BaseMoves,		BaseSightRange,		ZoneOfControl,	Domain, 	Combat-3,	FormationClass,	PromotionClass,	AdvisorType,	PurchaseYield, MandatoryObsoleteTech,		PrereqTech
FROM Units WHERE UnitType = 'UNIT_INFANTRY';
--=====
--TypeTags
--=====
INSERT INTO TypeTags
(Type,					Tag)
SELECT
'UNIT_FLAC_JUDGEMENT',	Tag
FROM TypeTags WHERE Type = 'UNIT_SCOUT';

INSERT INTO TypeTags
(Type,						Tag)
SELECT
'UNIT_FLAC_MISAKA_SISTERS',	Tag
FROM TypeTags WHERE Type = 'UNIT_INFANTRY';
--=====
--UnitAiInfos
--=====
INSERT INTO UnitAiInfos
(UnitType,					AiType)
SELECT
'UNIT_FLAC_JUDGEMENT',		AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_SCOUT';

INSERT INTO UnitAiInfos
(UnitType,					AiType)
SELECT
'UNIT_FLAC_MISAKA_SISTERS',	AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_INFANTRY';
--=====
--UnitReplaces
--=====
INSERT INTO UnitReplaces
(CivUniqueUnitType,		ReplacesUnitType)
VALUES
('UNIT_FLAC_JUDGEMENT',	'UNIT_SCOUT');

INSERT INTO UnitReplaces
(CivUniqueUnitType,				ReplacesUnitType)
VALUES
('UNIT_FLAC_MISAKA_SISTERS',	'UNIT_INFANTRY');
--=====
--UnitUpgrades
--=====
INSERT INTO UnitUpgrades
(Unit,					UpgradeUnit)
SELECT
'UNIT_FLAC_JUDGEMENT',	UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_SCOUT';

INSERT INTO UnitUpgrades
(Unit,						UpgradeUnit)
SELECT
'UNIT_FLAC_MISAKA_SISTERS',	UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_INFANTRY';
--=====
--MomentIllustrations
--=====
INSERT INTO MomentIllustrations
(MomentIllustrationType,				MomentDataType,			GameDataType,				Texture)
VALUES
('MOMENT_ILLUSTRATION_UNIQUE_UNIT',		'MOMENT_DATA_UNIT',		'UNIT_FLAC_JUDGEMENT',		'MOMENT_FLAC_JUDGEMENT'),
('MOMENT_ILLUSTRATION_UNIQUE_UNIT',		'MOMENT_DATA_UNIT',		'UNIT_FLAC_MISAKA_SISTERS',	'MOMENT_FLAC_MISAKA_SISTERS');
