-- Provide a query that 
-- shows all Invoices but includes the # of invoice line items.

SELECT 
    i.InvoiceId,
    i.InvoiceDate,
    i.total,
    count(il.InvoicelineId)
FROM Invoiceline il
JOIN Invoice i 
    ON(il.InvoiceId = i.InvoiceId)
GROUP BY i.InvoiceId






