/****** concatenar colunas de dia m�s e ano para formar uma coluna de data ******/
SELECT 
      [FullDateAlternateKey]
      ,[DayNumberOfMonth]
      ,[MonthNumberOfYear]
      ,[CalendarYear]
	  ,cast(CONCAT(CalendarYear,'-',MonthNumberOfYear,'-',DayNumberOfMonth) as date) as Data
  FROM [AdventureWorksDW2022].[dbo].[DimDate]