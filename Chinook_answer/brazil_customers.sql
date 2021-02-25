Provide a query only showing the Customers from Brazil.

SELECT
c.FirstName,
c.LastName,
c.CustomerID,
c.Country

FROM Customer c 
WHERE Country = 'Brazil'
