/* Goal: Use a subquery to find the count of customers 
   in specific target countries. */

SELECT 
    (SELECT COUNT(customer_id)
     FROM customer
     INNER JOIN address ON customer.address_id = address.address_id
     INNER JOIN city ON address.city_id = city.city_id
     INNER JOIN country ON city.country_id = country.country_id
     WHERE country.country = 'India') AS india_customer_count,
     
    (SELECT COUNT(customer_id)
     FROM customer
     INNER JOIN address ON customer.address_id = address.address_id
     INNER JOIN city ON address.city_id = city.city_id
     INNER JOIN country ON city.country_id = country.country_id
     WHERE country.country = 'Canada') AS canada_customer_count;
