
UPDATE DEBITOS a 
SET SITUACAO_DEBITO = "atrasado"
WHERE DATAVENCIMENTO < CURRENT_DATE
AND SITUACAO_DEBITO NOT IN ('Negociado', 'Pago');

SELECT * FROM DEBITOS d 
WHERE DATAVENCIMENTO < CURRENT_DATE
AND  situacao_debito NOT IN ('negociado', 'pago');

/*2*/
UPDATE DEBITOS 
SET SITUACAO_DEBITO = "Pedente"
WHERE DATAVENCIMENTO > CURRENT_DATE
AND SITUACAO_DEBITO NOT IN ('pago');

SELECT * FROM DEBITOS d 
SET DATAVENCIMENTO = CURRENT_DATE
AND SITUACAO_DEBITO NOT IN ('pago');

/*3*/
UPDATE DEBITOS d 
SET DATAVENCIMENTO = DATEADD(-5 YEAR TO DATAVENCIMENTO) 
where SITUACAO_DEBITO IN ('Negociado');

SELECT * FROM DEBITOS d
WHERE SITUACAO_DEBITO IN ('Negociado');

/*4*/
SELECT p.nome, p.email, p.telefone,
FROM pessoa p 

/*5*/
SELECT * FROM produto p
WHERE PRECO_UNITARIO > 100

/*6*/
SELECT * FROM VENDA v 
WHERE v.DATA_VENDA BETWEEN '2014-10-22' AND '2022-05-04'

/*7*/
SELECT p.nome, p.data_nascimento, (CURRENT_DATE - p.data_nascimento)* FROM FORNECEDOR f 
LEFT JOIN PESSOA p ON p.ID_PESSOA = f.ID_FORNECEDOR 
WHERE f.ID_FORNECEDOR IN (SELECT ID_FORNECEDOR FROM PRODUTO p2 WHERE quantidade_estoque IS NULL)


/*11*/
UPDATE FROM PRODUTO p
SET PRECO_UNITARIO = PRECO_UNITARIO = (PRECO_UNITARIO * 10)
WHERE p.QUANTIDADE_ESTOQUE < 10 

SELECT * FROM PRODUTO p 
WHERE p.QUANTIDADE_ESTOQUE 

/*13*/
UPDATE DEBITOS D
SET SITUACAO_DEBITO = 'pago'
WHERE D.SITUACAO_DEBITO NOT IN ('atrasado')

SELECT *FROM DEBITOS d 
WHERE d.SITUACAO_DEBITO IN ('atrasado')

SELECT * FROM PAGAMENTO p, DEBITOS d 
WHERE p.ID_DEBITO = d.ID_DEBITO 

/*14*/
