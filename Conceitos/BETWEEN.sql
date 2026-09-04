--BETWEEN: Encontra um valor entre u mvalor minimo e maximo
-- ELE É UTILIZADO NO WHERE

SELECT *
FROM Person.Person
WHERE BusinessEntityID between 10 and 20

/*
	Nesse exemplo foi utilizado para filtrar (POR ISSO USA NO WHERE) O ID entre 10 e 20
	Não foi precisa dizer ao sistema para transformar em STRINGS. 
*/

-- MUITO UTILIZADO EM DATAS 

SELECT * 
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2012/01/01'  --Datas são colocadas ao CONTRARIO
ORDER BY HireDate desc