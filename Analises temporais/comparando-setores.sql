select 
	datepart (year,sales_month) as sales_year,
	datepart (month,sales_month) as sales_month,
	kind_of_business,
	sum(sales) as sales_amout

from retail_sales

where kind_of_business in ('Book stores','Sporting goos store','Hobby, toy, and game stores')

group by sales_month,kind_of_business
