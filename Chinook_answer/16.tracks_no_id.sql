-- Provide a query that shows all the Tracks, but displays no ID
-- The result should include the Album name, Media type and Genre.



SELECT
    t.name TrackName,
    mt.name MediaTypeName,
    a.title,
    g.name GenreName
FROM Track t
JOIN Album a
    ON(t.albumId = a.albumId)
JOIN MediaType mt
    ON(t.mediaTypeId = mt.mediaTypeId)
JOIN Genre g
    ON (t.genreId = g.genreId)