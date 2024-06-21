SELECT
	
	PetStore.dbo.Customer.CustomerID							AS Customer_BK
	,PetStore.dbo.Customer.FirstName							AS First_Name
	,PetStore.dbo.Customer.LastName								AS Last_Name
	,PetStore.dbo.Customer.Birthdate							AS Birthdate
	,DATEDIFF(YY, PetStore.dbo.Customer.Birthdate, GETDATE())	AS Age
	,CASE 
	WHEN (DATEDIFF(YY, PetStore.dbo.Customer.Birthdate, GETDATE())) BETWEEN 18 AND 25 THEN '18 - 25'
	WHEN (DATEDIFF(YY, PetStore.dbo.Customer.Birthdate, GETDATE())) BETWEEN 26 AND 35 THEN '26 - 35'
	WHEN (DATEDIFF(YY, PetStore.dbo.Customer.Birthdate, GETDATE())) BETWEEN 36 AND 45 THEN '36 - 45'
	WHEN (DATEDIFF(YY, PetStore.dbo.Customer.Birthdate, GETDATE())) BETWEEN 46 AND 55 THEN '46 - 55'
	END AS Age_Group
	,PetStore.dbo.Customer.Gender								AS Gender
	,PetStore.dbo.Customer.Email								AS Email
	,PetStore.dbo.Customer.Phone								AS Telephone
	,PetStore.dbo.Customer.Street								AS [Address]
	,PetStore.dbo.Customer.City									AS City
	,PetStore.dbo.Customer.[State]								AS [State]
	,PetStore.dbo.Customer.ZipCode								AS Zip_Code

FROM PetStore.dbo.Customer
