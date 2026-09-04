SELECT TOP 10 BusinessEntityID ,CONCAT(FirstName,' ', LastName) AS Name
FROM Person.Person
WHERE FirstName Like 'Ka%'
UNION
SELECT TOP 10 BusinessEntityID ,CONCAT(FirstName,' ', LastName) AS Name
FROM Person.Person
WHERE FirstName Like 'La%'
Order by Name


-- RASCUNHO DE UMA IDEIA QUE VEIO NA AMENTE

SELECT PPH.BusinessEntityID, CONCAT(PP.FirstName,' ',PP.LastName) AS UserName, PPH.PhoneNumber
FROM person.PersonPhone AS PPH
INNER JOIN Person.Person AS PP ON PPH.BusinessEntityID = PP.BusinessEntityID
WHERE FirstName like 'Ka%'
ORDER BY BusinessEntityID ASC

