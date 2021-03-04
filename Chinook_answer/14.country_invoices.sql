-- Provide a query that shows the # of
--  invoices per country. HINT: GROUP BY

SELECT 
    i.BillingCountry,
    i.InvoiceId,
    count(i.InvoiceId)

FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY i.InvoiceId