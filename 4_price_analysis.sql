/*
4. Price Analysis
 Exploring how prices are distributed across
 tiers, locations, and property sizes



How are listings distributed across price tiers?
Categorizes every listing as Luxury, Mid-range, or Affordable
based on sale price to understand the overall market composition
*/
SELECT 
    CASE
        WHEN price > 800000 THEN 'Luxury'
        WHEN price > 500000 THEN 'Mid-range'
        ELSE 'Affordable'
    END AS price_category,
    COUNT(*) AS total_listings
FROM housing
GROUP BY price_category;


-- Which cities have the highest price per square foot?
-- Shows the top 10 most expensive cities by avg price/sqft
-- A better measure of value than raw price alone
SELECT
    city,
    ROUND(AVG(price / sqft), 2) AS avg_price_per_sqft
FROM housing
GROUP BY city
ORDER BY avg_price_per_sqft DESC
LIMIT 10;


-- How does price change as bedroom count increases?
-- Shows min, max, and average price for each bedroom count
-- Helps identify how much each additional bedroom adds in value
SELECT
    bed,
    ROUND(MAX(price), 2) AS max_price,
    ROUND(MIN(price), 2) AS min_price,
    ROUND(AVG(price), 2) AS avg_price
FROM housing
GROUP BY bed
ORDER BY bed;