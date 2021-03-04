-- Looking at the InvoiceLine table, provide a query that COUNTs the number of 
-- line items for Invoice ID 37.


SELECT 
    il.InvoiceId,
    il.Quantity,
    count(il.Quantity),
    i.InvoiceID
FROM InvoiceLine il
JOIN Invoice i
   ON (il.InvoiceLineId = i.InvoiceId)
WHERE  i.InvoiceID = 37