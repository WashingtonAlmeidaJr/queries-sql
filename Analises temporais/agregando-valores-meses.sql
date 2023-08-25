select 
	datepart (year,sales_month) as sales_year,
	datepart (month,sales_month) as sales_month,
	sum(sales) as sales_amout

from retail_sales

where kind_of_business='Retail and food services sales, total'

group by sales_month
