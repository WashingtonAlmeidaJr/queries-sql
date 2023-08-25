/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT 
	[Color],
   count(ProductID) as Produtos

      
      
  FROM [AdventureWorks2022].[Production].[Product]

  group by Color
  order by 2 desc