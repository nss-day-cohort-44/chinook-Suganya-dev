Which country's customers spent the most?

SELECT
    c.customerId,
    c.country,
    MAX(i.total)

FROM Customer c
JOIN Invoice i
    ON(c.CustomerId = i.customerId)