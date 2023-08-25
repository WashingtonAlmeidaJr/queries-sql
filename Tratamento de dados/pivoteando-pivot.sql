/*INCOMPLETO!!*/

select 
*

		from		
		
		(
					select 
						a.OrderDate,
						a.SalesAmount,
						d.EnglishProductCategoryName 

					from 



					FactInternetSales a
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
  
					) as SourceTable
	
	
