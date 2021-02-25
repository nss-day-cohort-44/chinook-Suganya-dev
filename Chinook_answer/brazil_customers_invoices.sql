-- Provide a query showing the Invoices of customers who are 
-- from Brazil. The resultant table should show the customer's 
-- full name, Invoice ID, Date of the invoice and billing country.


SELECT
    c.FirstName,
    c.LastName,
    i.InVoiceId,
    i.InVoiceDate,
    i.billingCountry
FROM Customer c
JOIN Invoice i 
    ON (i.customerId == c.customerId )
WHERE Country ='Brazil';