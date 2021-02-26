-- Looking at the InvoiceLine table, provide a query that COUNTs the 
-- number of line items for each Invoice. HINT: GROUP BY

SELECT
    il.Quantity,
    i.InvoiceId,
    count (il.Quantity)
FROM InvoiceLine il
JOIN Invoice i
    ON (il.InvoiceId = i.InvoiceId)
GROUP BY i.InvoiceId