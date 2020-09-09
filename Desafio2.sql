SELECT	ContasAPagar.Numero AS NumeroProcessoPagamento, Pessoa.Nome AS NomeFornecedor, 
		ContasAPagar.DataVencimento, ContasPagas.DataPagamento, ContasAPagar.Valor AS ValorLiquido, 
                         CASE WHEN ContasPagas.DataPagamento IS NULL THEN '� Pagar' ELSE 'Paga' END AS Identificador
FROM            ContasAPagar LEFT OUTER JOIN
                         ContasPagas ON ContasAPagar.Numero = ContasPagas.Numero LEFT OUTER JOIN
                         Pessoa ON ContasAPagar.CodigoFornecedor = Pessoa.Codigo

/*
O Gerente financeiro requisitou junto a Globaltec, 
uma consulta que traga as informa��es de contas a pagar e contas pagas, 
sendo que ele precisa 
do n�mero do processo de pagamento, nome do fornecedor, data de vencimento, data de pagamento, valor l�quido 
e um identificador se � conta a pagar ou paga.
*/
