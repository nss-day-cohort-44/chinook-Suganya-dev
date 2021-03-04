-- What are the respective total sales for each of those years?

-- SELECT 
-- printf('%.2f', SUM(i.Total)) Total,
-- strftime('%Y', i.InvoiceDate) Invoiceyear
-- FROM Invoice i
-- WHERE (Invoiceyear = '2009' OR Invoiceyear = '2011')
-- GROUP BY Invoiceyear 


SELECT 
printf('%.2f' , SUM(i.Total)),
i.InvoiceDate
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%' OR i.InvoiceDate LIKE '2011%'
GROUP BY InvoiceDate LIKE '2009%'