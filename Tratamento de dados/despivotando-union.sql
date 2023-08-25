/****** 
seleciono a coluna salesOrder
coloco os valores de sales amount em linhas
uso a union para unir outra consta
repito a lógica da anterior para outras colunas da tabela original
assim as 4 colunas(Sales,Cost,Tax,Freight) viram linhas em um atributo Type

******/

SELECT 
      [SalesOrderNumber]
      ,'Sales Amount' as Type,
	  [SalesAmount] as Value
FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]

union all

SELECT 
      [SalesOrderNumber]
      ,'Cost Amount' as Type,
	  [TotalProductCost] as Value
FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]

union all

SELECT 
      [SalesOrderNumber]
      ,'Tax Amount' as Type,
	  [TaxAmt] as Value
FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]

union all

SELECT 
      [SalesOrderNumber]
      ,'Freight' as Type,
	  [Freight] as Value
FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]


order by SalesOrderNumber