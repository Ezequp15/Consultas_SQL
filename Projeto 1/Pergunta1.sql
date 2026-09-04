SELECT PP.ProductID, PP.Name, PP.Color, PP.Weight, PP.Size, SOD.UnitPrice
FROM Production.Product AS PP
INNER JOIN Sales.SalesOrderDetail AS SOD ON PP.ProductID = SOD.ProductID
ORder BY PP.ProductID ASC


