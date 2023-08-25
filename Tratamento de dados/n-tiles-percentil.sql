	select 
		CustomerID as customer_id,
		SalesOrderID as order_id,
		SubTotal as order_amount,
		NTILE(50) over (order by SubTotal) as ntile
	from Sales.SalesOrderHeader
	order by ntile