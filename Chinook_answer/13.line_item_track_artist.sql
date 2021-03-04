-- Provide a query that includes the purchased track name AND artist
--  name with each invoice line item.

SELECT 
    t.name TrackName,
    a.name ArtistName,
    il.InvoiceLineId

FROM Artist  a
JOIN Album al
    ON (a.ArtistId = al.artistId)
JOIN Track t
    ON (al.AlbumId = t.TrackId)
JOIN InvoiceLine il
    ON (il.TrackId = t.TrackId)
ORDER BY il.InvoiceLineId