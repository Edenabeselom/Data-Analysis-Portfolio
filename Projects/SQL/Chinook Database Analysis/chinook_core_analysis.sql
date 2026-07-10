-- Query 1: Top-Performing Customers (Purchasing Behavior)
-- Meets: SELECT, WHERE, GROUP BY, HAVING, ORDER BY, LIMIT, SUM, COUNT, ROUND, INNER JOIN
SELECT 
    c.CustomerId,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    c.Country,
    ROUND(SUM(i.Total), 2) AS TotalSpent,
    COUNT(i.InvoiceId) AS TotalOrders
FROM chinook.customer c
INNER JOIN chinook.invoice i ON c.CustomerId = i.CustomerId
WHERE i.InvoiceDate >= '2010-01-01'
GROUP BY c.CustomerId, c.FirstName, c.LastName, c.Country
HAVING TotalSpent > 35.00
ORDER BY TotalSpent DESC
LIMIT 10;

-- Query 2: Product Performance Analysis
-- Meets: SELECT, GROUP BY, ORDER BY, LIMIT, SUM, COUNT, INNER JOIN
SELECT 
    t.TrackId,
    t.Name AS TrackName,
    a.Title AS AlbumTitle,
    COUNT(il.InvoiceLineId) AS TotalUnitsSold,
    ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS TrackRevenue
FROM chinook.track t
INNER JOIN chinook.album a ON t.AlbumId = a.AlbumId
INNER JOIN chinook.invoiceline il ON t.TrackId = il.TrackId
GROUP BY t.TrackId, t.Name, a.Title
ORDER BY TotalUnitsSold DESC
LIMIT 10;