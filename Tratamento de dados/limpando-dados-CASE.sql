

/*
o codigo abaixo faz uma join de customers na tabela transactions 
e acaba duplicando os dados de id_customers, 
totalizando 31465 linhas, 
pois um cliente pode comprar mais de uma vez
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
gerando apenas 19119 linhas
*/

select 
	distinct a.CustomerID
from 
	Sales.Customer a

join Sales.SalesOrderHeader b

on

a.CustomerID=b.CustomerID