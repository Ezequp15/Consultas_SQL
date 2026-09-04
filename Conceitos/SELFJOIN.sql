SELECT A.ContactName,A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region

SELECT *
FROM Employees

SELECT City,MAX(Extension)
FROM Employees
GROUP BY City

SELECT A.FirstName, YEAR(A.HireDate) AS Year1, B.FirstName, YEAR(B.HireDate) AS Year2
FROM Employees A, Employees B
WHERE YEAR(A.HireDate) = YEAR(B.HireDate)

SELECT *
FROM [Order Details]

SELECT A.ProductID, A.Discount*100 AS Discount1, B.ProductID, B.Discount*100 AS Discount2
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount 

SELECT Discount
FROM [Order Details]



