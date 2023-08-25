/****** altera a granularidade de annual amount para mes  ******/
SELECT a.FullDateAlternateKey as date,
		b.[CustomerKey] as custumer_id,
		b.GeographyKey as annual_amount,
		b.GeographyKey/12 as month_subscription,
      b.[DateFirstPurchase] as subscription_date


  FROM DimDate a
  
  join [AdventureWorksDW2022].[dbo].[DimCustomer] b 
  
  on a.FullDateAlternateKey 
  between b.DateFirstPurchase and b.DateFirstPurchase
