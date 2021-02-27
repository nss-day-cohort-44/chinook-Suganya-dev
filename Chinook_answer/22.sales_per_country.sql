 Provide a query that shows the total sales per country.
 

 SELECT
    SUM(i.total),
    c.country
FROM Invoice i
JOIN Customer c
        ON(i.customerId = c.CustomerId)
GROUP BY  c.country