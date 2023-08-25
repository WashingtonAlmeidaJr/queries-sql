/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT 
      [FullDateAlternateKey]
      ,[DayNumberOfMonth]
      ,[MonthNumberOfYear]
      ,[CalendarYear]
	  ,cast(CONCAT(CalendarYear,'-',MonthNumberOfYear,'-',DayNumberOfMonth) as date) as Data
  FROM [AdventureWorksDW2022].[dbo].[DimDate]