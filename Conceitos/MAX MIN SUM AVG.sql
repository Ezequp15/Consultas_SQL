-- FUNÇOES PRINCIPAIS DE AGREGAÇÃO
/*

Elas são funçoes que agragam ou combinam dados de uma tabela em um resultado só

São elas: 

MIN - MINIMO
MAX - MAXIMO
SUM - SOMA
AVG _ MEDIA
*/

SELECT TOP 10 sum(linetotal) AS "Soma"
FROM Sales.SalesOrderDetail

SELECT TOP 10 max(linetotal) AS "Maximo"
From Sales.SalesOrderDetail

SELECT TOP 10 min(linetotal) AS "Minimo"
From Sales.SalesOrderDetail

SELECT TOP 10 avg(linetotal) AS "Média"
From Sales.SalesOrderDetail

-- O 'AS' SERVE PARA CHAMAR UMA COLUNA DE DETERMIANDO NOME 