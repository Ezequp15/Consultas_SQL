SELECT TOP 10 BusinessEntityID ,CONCAT(FirstName,' ', LastName) AS Name
FROM Person.Person
WHERE FirstName Like 'Ka%'
UNION
SELECT TOP 10 BusinessEntityID ,CONCAT(FirstName,' ', LastName) AS Name
FROM Person.Person
WHERE FirstName Like 'La%'
ORDER BY BusinessEntityID ASC