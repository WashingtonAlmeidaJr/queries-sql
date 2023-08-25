/*para o id não há duplicidade*/

select 
	BusinessEntityID,
	count(*) as records
from 
	Person.Person

group by BusinessEntityID

having count(*)>1
