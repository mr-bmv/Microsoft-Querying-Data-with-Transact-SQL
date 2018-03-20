SELECT ProductID, Name, ListPrice
FROM SalesLT.Product
WHERE ProductID IN
  -- select ProductID from the appropriate table
  (SELECT ProductID FROM SalesLT.SALESORDERDETAIL
   WHERE UnitPrice < 100)
AND ListPrice >= 100
ORDER BY ProductID;
