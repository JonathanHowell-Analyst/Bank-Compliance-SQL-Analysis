/* Goal: Identify the top 10 cities with the most customers 
within the top 10 countries previously identified. */

SELECT 
    cty.city, 
    ctry.country, 
    COUNT(customer_id) AS count_of_customer
FROM 
    customer
INNER JOIN 
    address AS addr ON customer.address_id = addr.address_id
INNER JOIN 
    city AS cty ON addr.city_id = cty.city_id
INNER JOIN 
    country AS ctry ON cty.country_id = ctry.country_id
WHERE 
    ctry.country IN ('India', 'China', 'United States', 'Japan', 'Mexico', 
                     'Brazil', 'Russian Federation', 'Philippines', 'Turkey', 'Indonesia')
GROUP BY 
    cty.city, 
    ctry.country
ORDER BY 
    count_of_customer DESC
LIMIT 10;
