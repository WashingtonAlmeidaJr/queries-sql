select 

	FullDateAlternateKey,
	datetrunc(year,FullDateAlternateKey) as YEAR,
	datetrunc(MONTH,FullDateAlternateKey) as MONTH,
	datetrunc(QUARTER,FullDateAlternateKey) as QUARTER,
	datetrunc(WEEK,FullDateAlternateKey) as WEEK
	
from DimDate