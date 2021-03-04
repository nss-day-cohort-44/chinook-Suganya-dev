-- Provide a query that shows total sales made by each sales agent.


SELECT
 e.FirstName,
 e.LastName,
 e.title,
SUM ( i.total)

FROM Employee e
Join Customer c
 On(e.EmployeeId = c.SupportRepId)
JOIN Invoice i  
 ON(c.CustomerId = i.CustomerId)
GROUP By e.EmployeeId