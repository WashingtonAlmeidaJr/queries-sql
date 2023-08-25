/****** 
-o codigo verifica quais ids que estão na tabela vendas 'a' que não existem na tabela 'b'.

-como o resultado foi uma tabela vazia, podemos concluir que todos ids que estão em venda tambem estão em clientes
******/

SELECT 
      distinct a.[CustomerKey]
     
  FROM [FactInternetSales] a

  left join DimCustomer b

  on a.CustomerKey=b.CustomerKey

  where b.CustomerKey is null