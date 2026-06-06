/*
2. Data Exploration
Getting familiar with the dataset before
diving into deeper analysis


How many total listings are in the dataset?
*/
SELECT COUNT(*)
FROM housing;


-- What unique cities are represented in the dataset?
SELECT DISTINCT city
FROM housing;


-- What is the price range across all listings?
SELECT MAX(price), MIN(price)
FROM housing;


-- Are there any listings with missing or zero prices?
-- Checks data quality before running price analysis
SELECT *
FROM housing
WHERE price = 0 OR price IS NULL;