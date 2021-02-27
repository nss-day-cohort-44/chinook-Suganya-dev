Provide a query that shows the top 3 best selling artists.

SELECT

     a.name ArtistName,
     il.Quantity,

FROM Artist a
JOIN Album al
    ON(a.ArtistId = al.ArtistId)
JOIN Track t
    ON(al.AlbumId = t.albumId)
JOIN InvoiceLine il
    ON(t.TrackId = il.trackId)
JOIN Invoice i
    ON(il.InvoiceId = i.InvoiceId)
