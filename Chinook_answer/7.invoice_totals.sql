--  Provide a query that shows the Invoice Total, Customer name, Country and
--   Sale Agent name for all invoices and customers.


 SELECT
    i.Total,
    c.FirstName,
    c.LastName,
    c.Country,
    e.Title
FROM Invoice i 
JOIN Customer c
 On(i.customerId = c.CustomerId)
JOIN Employee e 
 ON (c.supportRepId = e.EmployeeId)
