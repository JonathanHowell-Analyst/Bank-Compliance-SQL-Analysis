/* Goal: Identify the top 5 most loyal customers (highest total spend) 
who are located in the top 10 cities and countries identified. */

SELECT 
    customer.customer_id, 
    customer.first_name, 
    customer.last_name, 
    ctry.country, 
    cty.city, 
    SUM(pay.amount) AS total_amount_paid
FROM 
    customer
INNER JOIN 
    payment AS pay ON customer.customer_id = pay.customer_id
INNER JOIN 
    address AS addr ON customer.address_id = addr.address_id
INNER JOIN 
    city AS cty ON addr.city_id = cty.city_id
INNER JOIN 
    country AS ctry ON cty.country_id = ctry.country_id
WHERE 
    cty.city IN ('Aurora', 'Atlixco', 'Xintai', 'Adoni', 'Dhule (Dhulia)', 
                 'Kurashiki', 'Pingxiang', 'Sivas', 'Celaya', 'So Leopoldo')
GROUP BY 
    customer.customer_id, 
    customer.first_name, 
    customer.last_name, 
    cty.city, 
    ctry.country
ORDER BY 
    total_amount_paid DESC
LIMIT 5;
