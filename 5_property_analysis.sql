/*
 5. Property Analysis
 Analyzing how property characteristics like
bedrooms and bathrooms affect listings and price


What is the most common bedroom/bathroom combination?
Identifies which property types are most available in SoCal */
SELECT 
    bed,
    bath,
    COUNT(*) AS total_listings
FROM housing
GROUP BY bed, bath
ORDER BY total_listings DESC;


-- What is the average price per bedroom/bathroom combination?
-- Only includes combinations with more than 100 listings for reliability
SELECT 
    bed,
    bath,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS average_price
FROM housing
GROUP BY bed, bath
HAVING COUNT(*) > 100 
ORDER BY total_listings DESC;
