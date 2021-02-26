-- Provide a query that shows the invoices associated with each sales age
-- The resultant table should include the Sales Agent's full name.

SELECT
e.LastName,
e.FirstName,
e.Title,
i.InvoiceDate,
i.InvoiceId

FROM Invoice i
JOIN Employee e
  ON (e.EmployeeId = c.SupportRepId)
JOIN Customer c 
 ON (c.CustomerId = i.CustomerId)