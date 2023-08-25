/****** Preencher null com valores acima  ******/
SELECT  
StartDate,
[ReorderPoint],
ListPrice,
lag(ListPrice) over (partition by ReorderPoint order by StartDate) as Preenchimento_Cima
		
     

  FROM [AdventureWorksDW2022].[dbo].[DimProduct]


  order by ReorderPoint