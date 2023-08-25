/****** Utilizei a função cast para converter OrderQty em string. Assim podemos ter os valores maiores que 4 representador por "+4"   ******/
SELECT 
      [OrderQty] as order_items,
      [ProductID],
		  case when [OrderQty]<=3 then cast([OrderQty] as varchar)
		  else '+4'
		  end as Qtde_Items_String
     
  FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]