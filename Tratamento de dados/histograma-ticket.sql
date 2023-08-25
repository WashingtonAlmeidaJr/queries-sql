/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT 
      [SalesAmount],
	  case	when SalesAmount>0 and SalesAmount<600 then '0-600'
			when SalesAmount>600 and SalesAmount<1200 then '600-1200'
			when SalesAmount>1200 and SalesAmount<1800 then '1200-1800'
			when SalesAmount>1800 and SalesAmount<2400 then '1800-2400'
			when SalesAmount>2400 and SalesAmount<3000 then '2400-3000'
			when SalesAmount>3000 and SalesAmount<3600 then '3000-3600'
			when SalesAmount>3600 and SalesAmount<4200 then '3600-4200'
			when SalesAmount>4200 and SalesAmount<4800 then '4200-4800'
			when SalesAmount>4800 and SalesAmount<5400 then '4800-5400'
			when SalesAmount>5400 and SalesAmount<6000 then '5400-6000'
			when SalesAmount>6000  then '+6000'

	  end as FaixaTicket 
	  ,
	  case	when SalesAmount>0 and SalesAmount<600 then 1
			when SalesAmount>600 and SalesAmount<1200 then 2
			when SalesAmount>1200 and SalesAmount<1800 then 3
			when SalesAmount>1800 and SalesAmount<2400 then 4
			when SalesAmount>2400 and SalesAmount<3000 then 5
			when SalesAmount>3000 and SalesAmount<3600 then 6
			when SalesAmount>3600 and SalesAmount<4200 then 7
			when SalesAmount>4200 and SalesAmount<4800 then 8
			when SalesAmount>4800 and SalesAmount<5400 then 9
			when SalesAmount>5400 and SalesAmount<6000 then 10
			when SalesAmount>6000  then 11

	  end as idFaixa 
      
  FROM [AdventureWorksDW2022].[dbo].[FactResellerSales]

  order by SalesAmount 