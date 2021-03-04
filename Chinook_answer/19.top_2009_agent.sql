Which sales agent made the most in sales in 2009?
Hint: Use the MAX function on a subquery.


SELECT 
    e.Title,
    e.EmployeeId,
    i.InvoiceDate,
    MAX(i.Total)
FROM Employee e
JOIN Customer c
    ON(e.EmployeeId = c.SupportRepId)
JOIN Invoice i
    ON(c.CustomerId = i.CustomerId)
WHERE i.InvoiceDate LIKE '2009%'