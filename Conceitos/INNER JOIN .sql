-- JOIN:
/*

Serve para juntar uma coluna em outra - JUNTAR INFORMAÇÔES

TABELA CLIENTE   e   TABELA  ENDEREÇO

ClientID             AddressID
Name                 Street
AddressID            City

Na Consulta ficaria:

SELECT C.Client, C.name, E.Street, E.city
FROM Cliente C
INNER JOIN Endereço E ON E.AddressID = C.AddressID

INNER JOIN SERVE PARA EXTRAIR INFORMAÇÕES DO SELECT

*/

--BusinessEntityID, FirstName, LastName, EmailAddress

SELECT TOP 10 *
FROM Person.Person
                              -- AS DUAS TABELAS POSSUEM A TABELA BusinessEntityID EM COMUM
SELECT TOP 10 *
FROM Person.EmailAddress

SELECT P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress
FROM Person.Person AS P
INNER JOIN Person.EmailAddress AS  PE ON P.BusinessEntityID = PE.BusinessEntityID

--EXEMPLO 1: NOMES DOS PRODUTOS E AS INFORMAÇÔES DE SAUS SUBCATEGORIAS E O PREÇO DE CADA 

SELECT TOP 10 PP.ProductID, PP.Name, PSC.Name, PP.ListPrice 
FROM Production.Product AS PP
INNER JOIN Production.ProductSubcategory AS PSC ON PP.ProductSubcategoryID = PSC.ProductSubcategoryID
--                                                     1º tabela                    2ºtabela

--Nesse Exemplo a coluna ProductSubcategoryId é a chave que liga as duas colunas.


--RASCUNHO ABAIXO DE UM QUE CRIEI

SELECT PP.ProductID, PP.Name, PP.Color, PP.Weight, PP.Size, SOD.UnitPrice
FROM Production.Product AS PP
INNER JOIN Sales.SalesOrderDetail AS SOD ON PP.ProductID = SOD.ProductID
ORder BY PP.ProductID ASC

-- É POSSIVEL JUNTAR DUAS TABELAS COM TUDO QUE TODAS AS COLUNAS SE NÃO DEFINIR QUAIS COLUNAS SERAO UTILIZADAS

SELECT TOP 10 *
FROM Person.BusinessEntityAddress AS BA
INNER JOIN Person.Address AS PA ON BA.AddressID = PA.AddressID

--DESAFIO 1: RESULTADOS COM BUSINESSENTITYID, NAME, PHONE NUMBERTYPEID, PHONE NUMBER

SELECT PH.BusinessEntityID, PHT.Name, PH.PhoneNumberTypeID, PH.PhoneNumber
FROM person.PhoneNumberType AS PHT
INNER JOIN Person.PersonPhone AS PH ON PHT.PhoneNumberTypeID = PH.PhoneNumberTypeID

--DESAFIO 2: RESULTADOS COM ADRESSID, CITY, STATEPROVINCEID, NOME DO ESTADO

SELECT A.AddressID, A.City, SP.StateProvinceID, SP.Name AS "Nome do Estado"
FROM Person.StateProvince AS SP
INNER JOIN Person.Address AS A ON SP.StateProvinceID = A.StateProvinceID
