-- O comando ORDER BY: ORDENE OS RESULTADOS COM BASE EM UMA COLUNA EM ORDEM CRESCENTE E DECRESCENDE
-- asc ou desc


SELECT TOP 100 StandardCost 
FROM Production.Product
ORDER BY StandardCost asc


/*
 Nesse exemplo foi utilizado o TOP para restringir apenas aoas primeiros 100 elementos da tabela
 Foi ordenado a coluna StandartCost em ordem crescente (asc)
*/

--DESAFIO 1

SELECT TOP 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice desc

