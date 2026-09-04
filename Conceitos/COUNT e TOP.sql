SELECT COUNT(DISTINCT Title)
FROM person.Person

-- Distinct tira  os valores repetidos. Count pserve para contar a quantidade de linhas.

--DESAFIO 1

SELECT COUNT(*)
FROM Production.Product

-- DESAFIO 2

SELECT COUNT(DISTINCT Size)
FROM Production.Product


--COMANDO TOP: usado para limitar a quantidade de entradas no banco de dados

--SELECT TOP 10 *
--FROM TABELA X    Esse comando limita a demonstração para apenas as 10 primeiras linhas.

SELECT tOP 10 *
FROM Production.Product
