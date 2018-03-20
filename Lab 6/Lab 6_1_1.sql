-- select the ProductID, Name, and ListPrice columns
SELECT ProductID, Name, ListPrice
FROM SalesLT.Product
-- filter based on ListPrice
WHERE ListPrice >
-- get the average UnitPrice
(SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail)
ORDER BY ProductID;
