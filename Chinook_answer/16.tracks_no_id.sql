-- Provide a query that shows all the Tracks, but displays no ID
-- The result should include the Album name, Media type and Genre.

SELECT 
    t.name Trackname,
    a.title,
    mt.name MediatypeName,
    g.name
FROM Track t
JOIN Album a
    ON(t.AlbumId = a.AlbumId)
JOIN MediaType mt
    On(t.MediatypeId = mt.MediatypeId)
JOIN Genre g
    ON(t.GenreId = g.GenreId)