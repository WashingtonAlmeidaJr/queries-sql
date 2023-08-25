


select p.FirstName,sum(s.SubTotal) as Quantia
from Sales.SalesOrderHeader s

join Sales.Customer c

on c.CustomerID=s.CustomerID

join Person.Person p

on c.PersonID=p.BusinessEntityID


group by p.FirstName


