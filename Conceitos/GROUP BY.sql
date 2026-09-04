-- GROUP BY: DIVIDE OS RESULTADOS DA PESQUISA EM GRUPOS

/*

SELECT coluna 1, funcdeagregação(coluna2)
FROM tabela
GROUP BY coluna 1:

*/

SELECT *
FROM Sales.SalesOrderDetail

SELECT specialofferID, sum(UnitPrice)
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
ORDER BY SpecialOfferID asc

--  O que ocorreu foi que o GROUP BY  pegou todos os UnitPrice e agrupou (somando eles) em realçao ao specialofferID

SELECT specialofferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 1
ORDER BY UnitPrice asc

-- NEssa consulta esta sendo mostrado apenas onde o specialofferID é 1 e o que GROUP by faz é agrupar todos os UnitPrice para todos os specialofferID que tem 1

-- DESAFIO: quantos de CADA PRODUTO foi vendido até hoje ?

SELECT ProductID, COUNT(productID)
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- DESAFIO: quantos nomes de cada nome temos cadastrados ?

SELECT Title, COUNT(title) AS "Quantidade de titulos"
FROM Person.Person
GROUP BY Title

--DESAFIO: QUAL a media de preço para os produtos que são prateados (SILVER) ?

SELECT color, avg(listprice)
FROM Production.Product                      -- nesse caso em especifico estamos agrupando a media de preço (listprice) por cores
GROUP BY Color

--DESAFIO 1: "PRECISO SABER QUANTAS PESSOAS TEM O MESMO NOME DO MEIO NESSE BANCO DE DADOS"

select FirstName, COUNT(FirstName)
from Person.Person
group by FirstName

--DESAFIO 2: "PRECISO SABER EM MEDIA QUAL A QUANTIDADE QUE CADA PRODUTO È VENDIDO NA LOJA

SELECT ProductID, avg(OrderQty) AS "Quantidade Média"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

--DESAFIO: QUAL FORAM AS 10 VENDAS QUE NO TOTAL TIVERAM OS MAIORES VALORES DE VENDA POR PRODUTO DO MAIOR PARA O MENOR

SELECT TOP 10 ProductID, sum(Linetotal) AS "maximo"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY maximo desc

/*
DESAFIO 4: QUANTOS PRODUTOS (COUNT) 
E QUAL A QUANTIDADE MEDIA DE PRODUTO (AVG) 
TEMOS CADASTRADOS NAS NOSSAS ORDEM DE SERVIÇOS (TABELA WORKORDER)
*/

SELECT ProductID, count(ProductID) AS "Contagem",
avg(orderqty) as "Média"
FROM Production.WorkOrder
GROUP BY ProductID