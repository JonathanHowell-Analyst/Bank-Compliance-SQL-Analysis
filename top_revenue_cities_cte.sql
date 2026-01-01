/* Goal: Use a CTE to identify top revenue-generating cities 
   in our top 10 countries. */

WITH top_10_countries_cte AS (
    SELECT country_id, country
    FROM country
    WHERE country IN ('India', 'China', 'United States', 'Japan', 'Mexico', 
                      'Brazil', 'Russian Federation', 'Philippines', 'Turkey', 'Indonesia')
)

SELECT 
    cty.city, 
    ctry.country, 
    SUM(pay.amount) AS total_revenue
FROM 
    payment AS pay
INNER JOIN customer AS cus ON pay.customer_id = cus.customer_id
INNER JOIN address AS addr ON cus.address_id = addr.address_id
INNER JOIN city AS cty ON addr.city_id = cty.city_id
INNER JOIN top_10_countries_cte AS ctry ON cty.country_id = ctry.country_id
GROUP BY 
    cty.city, 
    ctry.country
ORDER BY 
    total_revenue DESC
LIMIT 10;
