	select NTILE,
	min(order_amount) as lower_bound,
	max(order_amount) as upper_bound,
	count(order_id) as orders
	
	from
	(
		select 
		SalesOrderID as order_id,
		SubTotal as order_amount,
		NTILE(10) over (order by SubTotal) as ntile
		
		from Sales.SalesOrderHeader
	) a
	
	group by ntile