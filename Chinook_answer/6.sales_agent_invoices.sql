-- Provide a query that shows the invoices associated with each sales age
-- The resultant table should include the Sales Agent's full name.

SELECT 
  i.InvoiceId,
  i.InvoiceDate,
  i.BillingCity,
  e.FirstName,
  e.LastName,
  e.Title

FROM Invoice i
JOIN Employee e
  ON (e.EmployeeId = c.SupportRepId)
JOIN Customer c 
 ON (c.CustomerId = i.CustomerId)
