-- Para criar banco de dados utilizamos o comando

CREATE DATABASE myDB;
USE myDB;

--Para excluir tabelas ou banco de dados usa o comando DROP

DROP TABLE nome_data_bela
DROP DATABASE nome_do_banco_de_dados

/*
Criando tabela - CREATE

CREATE TABLE nome_da_tabela (
Coluna 1 TIPO 1,
Coluna 2 TIPO 2
);
*/

/*
-- TIPOS DE COLUNAS: (PESQUISAR SOBRE TIPOS DE DADOS)

INT ----> Numero inteiro

DECIMAL(M, D) ----> Decimal sendo M o digito e D o numero de casa

VARCHAR(N) ----> String de comprimento N (caractere)

DATE ----> Data

EXEMPLO:
*/

Use myDB;

CREATE TABLE Vendas (
ID_Produtos INT,
Nome_Produtos VARCHAR(20),
Data_de_Venda DATE,
Data_de_entrega DATE
);

/*
Lendo a tabela - READ (SELECT)

SELECT * FROM tabela 1
SELECT * FROM tabela 2
*/

-- Ao utilizar esses comandos vamos visualizar as tabelas vazias, para isso precisamos adicionar elementos a essa tabelas, para inserir é bem simples, Basta:

/*
Adicionando dados a tabela - (INSERT TO)
 
INSERT INTO nome_da_tabela (Coluna 1, Coluna 2, ..., Coluna n)
VALUES
(Coluna 1, Coluna 2, ..., Coluna n);

Exemplo: Utilizando a tabela "Vendas" criada anteriormente com o comando CREATE, vamos adicionar valores a ela:
*/

INSERT INTO Vendas (ID_Produtos, Nome_Produtos, Data_de_Venda, Data_de_entrega)
VALUES
(1, 'Microondas', 2022-10-1, 2022-10-10),
(2, 'Computador', 2022-10-2, 2022-10-20),
(3, 'Lixeira', 2022-11-23, 2022-11-30);

/*
Atualizar dados - UPDATE

UPDATE nome_da_tabela
SET coluna 1 = "novo_valor"
WHERE ID_coluna = X

IMPORTANTE! - SEMPRE COLOCAR O WHERE SE NAO ATUALZIA TUDO:

Exemplo:
*/

UPDATE Vendas
SET Nome_Produtos = 'Micro-ondas'
WHERE ID_Produtos = 1

--Deletar dados - DELETE

DELETE FROM nome_da_tabela
WHERE ID_coluna = X
 
IMPORTANTE! - SEMPRE COLOCAR O WHERE SE NAO DELETA TUDO: