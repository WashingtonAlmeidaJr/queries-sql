

/*
o codigo abaixo faz uma join de customers na tabela transactions e acaba duplicando os dados de id_customers pois um cliente pode comprar mais de uma vez
*/

select 
	a.CustomerID
from 
	Sales.Customer a

join Sales.SalesOrderHeader b

on

a.CustomerID=b.CustomerID


/*
para resolver o problema acima, usamos o distinct que remove a duplicada gerada
*/

select 
	distinct a.CustomerID
from 
	Sales.Customer a

join Sales.SalesOrderHeader b

on

a.CustomerID=b.CustomerID