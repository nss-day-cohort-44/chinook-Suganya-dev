Provide a query that shows the top 5 most purchased tracks over all.

SELECT MAX(il.TrackId) number_of_purchases,
t.Name track_name
FROM InvoiceLine il
JOIN Track t
    ON il.TrackId = t.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE "2013%";

SELECT TOP 5 il.Track