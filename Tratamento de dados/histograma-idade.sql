/****** Histograma idade  ******/
SELECT 
	  datediff(YEAR,BirthDate,getdate()) as Idade
      
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer]