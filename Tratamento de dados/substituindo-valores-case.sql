/*
O código substitui o M por Male e o F por Female
O Codigo substitui S por Sigle e M por Married

*/
SELECT 
		[BusinessEntityID]
      ,[MaritalStatus]
      ,[Gender]
	  ,
	  case when Gender='M' then 'Male'
			when Gender='F' then 'Female'
	  end as gender_cleaned,

	  case when MaritalStatus='S' then 'Single'
			when MaritalStatus='M' then 'Married'

		end as Marital_cleaned

  FROM [AdventureWorks2022].[HumanResources].[Employee]


  /*
usando case para criação de uma variavel dummy 'is_female'

*/
SELECT 
		[BusinessEntityID]
      ,[MaritalStatus]
      ,[Gender]
	  ,
	  case when Gender='F' then 1 else 0 
	  end as is_female


  FROM [AdventureWorks2022].[HumanResources].[Employee]