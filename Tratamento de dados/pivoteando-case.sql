/****** agregando vendas por cliente  

SELECT 
      [CustomerKey]
      ,sum([SalesAmount]) as total_amount
     
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]

 group by CustomerKey

  order by CustomerKey

******/

/*---------------------------------------------------------*/


/*Pivoteando Data,Categoria e valor (Tabela dinamica)*/
SELECT 
		a.OrderDate,

		sum(
			case when EnglishProductCategoryName='Bikes' then a.SalesAmount
			else 0
			end
		)	as Bikes_amount

		,

		sum(
			case when EnglishProductCategoryName='Components' then a.SalesAmount
			else 0
			end
		)	as Components_amount

		,

		sum(
			case when EnglishProductCategoryName='Accessories' then a.SalesAmount
			else 0
			end
		)	as Acessories_amount

		,

		sum(
			case when EnglishProductCategoryName='Clothing' then a.SalesAmount
			else 0
			end
		)	as Clothing_amount
     
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales] a


  /*joins para pegar a categoria do produto*/
  join DimProduct b
  on 
  a.ProductKey=b.ProductKey


  join DimProductSubcategory c
  on
  b.ProductSubcategoryKey=c.ProductSubcategoryKey

  join DimProductCategory d
  on
  c.ProductCategoryKey=d.ProductCategoryKey

  group by OrderDate