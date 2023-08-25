/****** substituindo nulos por uma outra coluna ou por outra string  ******/
SELECT 
      [FirstName]
      ,[LastName]
      ,[MiddleName],
	  coalesce(MiddleName,LastName) as Coalesce_LastName,
	  coalesce(MiddleName,'Unknown') as Coalesce_Unkown,
	  nullif(MiddleName,'A') as Nullif_A


  FROM [AdventureWorksDW2022].[dbo].[DimEmployee]