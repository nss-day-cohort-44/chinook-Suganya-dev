Which sales agent made the most in sales over all?

SELECT
e.EmployeeId,
e.Title,
MAX(i.Total)
FROM Employee e
JOIN Customer c
    ON(e.EmployeeId = c.SupportRepId)
JOIN Invoice i
    ON(c.CustomerId = i.CustomerId)