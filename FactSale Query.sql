SELECT 
	PetStore.dbo.OrderItem.OrderItemID,
	PetStore.dbo.OrderItem.OrderID,
	PetStoreDM.dbo.DimDate.Date_SK AS OrderDate, 
	PetStoreDM.dbo.DimCustomer.Customer_SK, 
	PetStoreDM.dbo.DimProduct.Product_SK, 
	PetStoreDM.dbo.DimEmployee.Employee_SK,
	PetStore.dbo.OrderItem.Quantity,
	PetStore.dbo.Product.UnitCost,
	PetStore.dbo.Product.UnitSalesPrice,
	PetStore.dbo.Product.UnitSalesPrice-PetStore.dbo.Product.UnitCost AS UnitProfit,
	PetStore.dbo.Product.UnitSalesPrice*PetStore.dbo.OrderItem.Quantity AS Revenue,
	PetStore.dbo.Product.UnitCost*PetStore.dbo.OrderItem.Quantity AS Cost,
	(PetStore.dbo.Product.UnitSalesPrice*PetStore.dbo.OrderItem.Quantity)-(PetStore.dbo.Product.UnitCost*PetStore.dbo.OrderItem.Quantity) AS Profit

FROM 
	PetStore.dbo.OrderItem
INNER JOIN
	PetStore.dbo.[Order]
ON 
	PetStore.dbo.OrderItem.OrderID = PetStore.dbo.[Order].OrderID
INNER JOIN
	PetStore.dbo.Product
ON
	PetStore.dbo.OrderItem.ProductID = PetStore.dbo.Product.ProductID

INNER JOIN
	PetStoreDM.dbo.DimDate
ON
	PetStoreDM.dbo.DimDate.[Date] = PetStore.dbo.[Order].OrderDate

INNER JOIN
	PetStoreDM.dbo.DimCustomer
ON
	PetStoreDM.dbo.DimCustomer.Customer_BK = PetStore.dbo.[Order].CustomerID        


INNER JOIN
	PetStoreDM.dbo.DimProduct
ON
	PetStoreDM.dbo.DimProduct.Product_BK = PetStore.dbo.[OrderItem].ProductID      

INNER JOIN
	PetStoreDM.dbo.DimEmployee
ON
	PetStoreDM.dbo.DimEmployee.Employee_BK = PetStore.dbo.[Order].EmployeeID
