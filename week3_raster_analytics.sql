-- Phase 2: Week 3 - Advanced Raster-Vector Integration & Statistics
-- Mastered and Documented on 24.09.2026
-- Region Focus: Joensuu, Finland (SRID 3067)

-- 1. Extracting pixel value from a Raster layer using a Vector Point (ST_Value)
SELECT 
    ST_Value(
        ST_AddBand(
            ST_MakeEmptyRaster(10, 10, 640000, 6942000, 1, -1, 0, 0, 3067),
            1, '32BF', 125.5, -9999
        ),
        1, 
        ST_GeomFromText('POINT(640005 6941995)', 3067)
    ) AS extracted_elevation_meters;

-- 2. Calculating full Zonal/Summary Statistics across the entire Raster Grid
SELECT 
    (ST_SummaryStats(
        ST_AddBand(
            ST_MakeEmptyRaster(10, 10, 640000, 6942000, 1, -1, 0, 0, 3067),
            1, '32BF', 125.5, -9999
        )
    )).* ;
