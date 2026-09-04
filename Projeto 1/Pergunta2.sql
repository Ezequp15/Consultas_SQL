SELECT ProductID, ROUND(AVG(linetotal),1) AS "Média de vendas"
FROM Sales.SalesOrderDetail
WHERE UnitPrice BETWEEN 1000 AND 3000
GROUP BY ProductID
HAVING AVG(linetotal) < 1000000
ORDER BY [Média de vendas] desc



