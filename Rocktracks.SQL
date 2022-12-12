SELECT invoice.billingcountry as country, COUNT(genre.name)as rocktracks
FROM invoice
JOIN invoiceline
ON invoice.invoiceid = invoiceline.invoiceid
JOIN track
ON track.trackid = invoiceline.trackid
JOIN genre
ON genre.genreid = track.genreid
WHERE genre.name = "Rock"
GROUP BY country
ORDER BY rocktracks desc;
