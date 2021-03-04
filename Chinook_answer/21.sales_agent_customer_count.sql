Provide a query that shows the count of customers assigned to each sales agent.

SELECT
    e.EmployeeId,
    e.Title,
    count(c.CustomerId)
FROM Customer c
JOIN Employee e
    ON(c.supportRepId = e.EmployeeId)
GROUP BY  e.Title
