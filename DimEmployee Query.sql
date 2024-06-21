SELECT
	PetStore.dbo.Employee.EmployeeID AS Employee_BK,
	PetStore.dbo.Employee.FirstName,
	PetStore.dbo.Employee.LastName,
	PetStore.dbo.Employee.HireDate AS EMP_HIREDATE,
	PetStore.dbo.Department.DepartmentName,
	PetStore.dbo.JobPosition.PositionName,
	PetStore.dbo.JobPosition.Salary
FROM	
	PetStore.dbo.Employee 
INNER JOIN
	PetStore.dbo.Department
ON
	PetStore.dbo.Employee.DepartmentID = PetStore.dbo.Department.DepartmentID
INNER JOIN
	PetStore.dbo.JobPosition
ON
	PetStore.dbo.Employee.JobPositionID = PetStore.dbo.JobPosition.JobPositionID