--HAVING: É UTILIZADO JUNTO COM GROUP BY PARA FILTRAR DADOS AGRUPADOS (WHERE PARA DADOS AGRUPADOS)

/*

SELECT colun1, funcagrega(coluna2)
FROM tabela
GROUP BY colun1
HAVING condição...;

*/

-- EXEMPLO 1:  Quais nomes tem uma ocorrencia maior que 10x

SELECT FirstName, COUNT(firstname) AS "quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING count(firstname) >= 10

--EXEMPLO 2: Quais produtos que no total de vendas estã oentre 162k e 500k

SELECT ProductID, round(SUM(linetotal), 0)  --ROUND: UTILIZADO PARA ARREDONDAR.
FROM Sales.SalesOrderDetail
GROUP BY ProductID
having SUM(linetotal) BETWEEN 162000 and 500000

-- EXEMPLO 1:  Quais nomes tem uma ocorrencia maior que 10x, porém só com titulo Mr

SELECT FirstName, COUNT(firstname) AS "quantidade"
FROM Person.Person
WHERE Title = 'Mr.'                        -- UTILIZADO O WHERE PARA FILTRAR ANTES DO HAVING
GROUP BY FirstName
HAVING count(firstname) >= 10

SELECT *
FROM Person.Person
WHERE Title = 'Mr.'

--DESAFIO 1:

SELECT StateProvinceID, COUNT(stateprovinceid) AS "quantidade_provincias"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(stateprovinceid) >= 1000
ORDER BY quantidade_provincias desc

--DESAFIO 2: QUAIS PRODUTOS NÃO ESTAO TRAZENDO EM MEDIA NO MINIMO 1 MILHÃO EM TOTAL DE VENDAS

SELECT ProductID, AVG(linetotal) AS "Média de vendas"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(linetotal) < 1000000

--DESAFIO 3: QUAIS PRODUTOS NÃO ESTAO TRAZENDO EM MEDIA NO MINIMO 1 MILHÃO EM TOTAL DE VENDAS,
--           ONDE O PREÇO DE VENDA SEJA ENTRE 1000 e 3000

SELECT ProductID, ROUND(AVG(linetotal),1) AS "Média de vendas"
FROM Sales.SalesOrderDetail
WHERE UnitPrice BETWEEN 1000 AND 3000
GROUP BY ProductID
HAVING AVG(linetotal) < 1000000
ORDER BY [Média de vendas] desc



