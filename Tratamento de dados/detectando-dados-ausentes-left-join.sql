/****** 
-o codigo verifica quais ids que est�o na tabela vendas 'a' que n�o existem na tabela 'b'.

-como o resultado foi uma tabela vazia, podemos concluir que todos ids que est�o em venda tambem est�o em clientes
******/

SELECT 
      distinct a.[CustomerKey]
     
  FROM [FactInternetSales] a

  left join DimCustomer b

  on a.CustomerKey=b.CustomerKey

  where b.CustomerKey is null