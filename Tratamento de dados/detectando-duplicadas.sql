/*para o id n�o h� duplicidade*/

select 
	BusinessEntityID,
	count(*) as records
from 
	Person.Person

group by BusinessEntityID

having count(*)>1
