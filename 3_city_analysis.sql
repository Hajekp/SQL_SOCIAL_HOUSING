/*
3. City Analysis
Exploring which cities have the most listings
and the highest home prices across SoCal



Which cities have the highest average home price?
Shows the top 10 most expensive cities by average sale price 
*/
SELECT 
    city, 
    ROUND(AVG(price), 2) AS average_price
FROM housing
GROUP BY city
ORDER BY AVG(price) DESC
LIMIT 10;


-- Which cities have the most listings?
-- Only shows cities with more than 100 listings for meaningful results
SELECT 
    city,
    COUNT(*) AS total_listings
FROM housing
GROUP BY city
HAVING COUNT(*) > 100
ORDER BY total_listings DESC;


-- How many cities have more than 100 listings?
-- Wraps the previous query in a CTE to count qualifying cities
WITH over100_listings AS (
    SELECT 
        city,
        COUNT(*) AS total_listings
    FROM housing
    GROUP BY city
    HAVING COUNT(*) > 100
)
SELECT 
    COUNT(*) AS cities_with_over_100_listings
FROM over100_listings;


-- Which cities have an average price above $500,000?
-- Identifies premium markets across SoCal
SELECT 
    city,
    ROUND(AVG(price), 2) AS average_price
FROM housing
GROUP BY city
HAVING AVG(price) > 500000
ORDER BY average_price DESC;