/* Goal: Find the top 10 countries with the most Rockbuster customers.
This query joins four tables to link customer IDs to their respective country names.
*/

SELECT 
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
GROUP BY 
    ctry.country 
ORDER BY 
    count_of_customer DESC 
LIMIT 10;
