-- Looking at the InvoiceLine table, provide a query that COUNTs the number of 
-- line items for Invoice ID 37.


SELECT 
    il.Quantity,
    i.InvoiceId,
    count(il.Quantity)
FROM InvoiceLine il
JOIN Invoice i
    ON(il.InvoiceId = i.InvoiceId)
WHERE i.InvoiceId = 37