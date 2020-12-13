-- スタート地点に出やすいものを追加

-- リソース
INSERT OR REPLACE INTO StartBiasResources
        (CivilizationType, ResourceType, Tier)
    VALUES
        -- 米
        ('CIVILIZATION_FELINE', 'RESOURCE_RICE', 2),
        -- 小麦
        ('CIVILIZATION_FELINE', 'RESOURCE_WHEAT', 2),
        -- 牛
        ('CIVILIZATION_FELINE', 'RESOURCE_CATTLE', 5),
        -- 羊
        ('CIVILIZATION_FELINE', 'RESOURCE_SHEEP', 5),
        -- 馬
        ('CIVILIZATION_FELINE', 'RESOURCE_HORSES', 1),
        -- 鉄
        ('CIVILIZATION_FELINE', 'RESOURCE_IRON', 1),
        -- 石油
        ('CIVILIZATION_FELINE', 'RESOURCE_OIL', 3),
        -- アルミニウム
        ('CIVILIZATION_FELINE', 'RESOURCE_ALUMINUM', 3),
        -- ウラン
        ('CIVILIZATION_FELINE', 'RESOURCE_URANIUM', 2),
        -- 硝石
        ('CIVILIZATION_FELINE', 'RESOURCE_NITER', 3);

-- 特徴
-- INSERT OR REPLACE INTO StartBiasFeatures
--         (CivilizationType, FeatureType, Tier)
--     VALUES
--         -- 森林
--         ('CIVILIZATION_FELINE', 'FEATURE_FOREST', 4);

-- 地形
INSERT OR REPLACE INTO StartBiasTerrains
        (CivilizationType, TerrainType, Tier)
    VALUES
        -- 平原
        ('CIVILIZATION_FELINE', 'TERRAIN_PLAINS', 2),
        -- 平原丘陵
        ('CIVILIZATION_FELINE', 'TERRAIN_PLAINS_HILLS', 3);

        -- -- 沿岸
        -- ('CIVILIZATION_FELINE', 'TERRAIN_COAST', 2),
        -- -- 山岳
        -- ('CIVILIZATION_FELINE', 'TERRAIN_GRASS_MOUNTAIN', 2),
        -- ('CIVILIZATION_FELINE', 'TERRAIN_PLAINS_MOUNTAIN', 2),
        -- ('CIVILIZATION_FELINE', 'TERRAIN_DESERT_MOUNTAIN', 2),
        -- ('CIVILIZATION_FELINE', 'TERRAIN_TUNDRA_MOUNTAIN', 2),
        -- ('CIVILIZATION_FELINE', 'TERRAIN_SNOW_MOUNTAIN', 2),
        -- -- 平原
        -- ('CIVILIZATION_FELINE', 'TERRAIN_PLAINS', 2),
        -- -- 丘陵
        -- ('CIVILIZATION_FELINE', 'TERRAIN_PLAINS_HILLS', 2),
        -- ('CIVILIZATION_FELINE', 'TERRAIN_DESERT_HILLS', 2),
        -- ('CIVILIZATION_FELINE', 'TERRAIN_GRASS_HILLS', 2),
        -- ('CIVILIZATION_FELINE', 'TERRAIN_TUNDRA_HILLS', 2);
