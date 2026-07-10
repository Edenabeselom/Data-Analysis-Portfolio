-- Query 3: Regional Customer Spending Rank using Window Functions & Subqueries (CTE)
-- Meets: CTE (Subquery), Window Functions (DENSE_RANK, PARTITION BY), LEFT JOIN
WITH CustomerSpending AS (
    SELECT 
        c.Country,
        CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
        ROUND(SUM(i.Total), 2) AS TotalSpent
    FROM chinook.customer c
    LEFT JOIN chinook.invoice i ON c.CustomerId = i.CustomerId
    GROUP BY c.Country, c.FirstName, c.LastName
)
SELECT 
    Country,
    CustomerName,
    TotalSpent,
    DENSE_RANK() OVER (PARTITION BY Country ORDER BY TotalSpent DESC) AS RegionalRank
FROM CustomerSpending;

-- Query 4: Track Inventory Assessment (To explicitly show unmatched records via Outer Join)
-- Meets: LEFT JOIN, AVG, ROW_NUMBER
SELECT 
    p.PlaylistId,
    p.Name AS PlaylistName,
    COUNT(pt.TrackId) AS TotalTracks,
    ROUND(AVG(t.Milliseconds) / 60000, 2) AS AvgTrackLengthMinutes
FROM chinook.playlist p
LEFT JOIN chinook.playlisttrack pt ON p.PlaylistId = pt.PlaylistId
LEFT JOIN chinook.track t ON pt.TrackId = t.TrackId
GROUP BY p.PlaylistId, p.Name;