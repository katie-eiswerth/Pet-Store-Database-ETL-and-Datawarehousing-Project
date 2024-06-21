SELECT

	PetStore.dbo.Product.ProductID			AS Product_BK
	,PetStore.dbo.Product.ProductName		AS Product_Name
	,PetStore.dbo.Category.CategoryName		AS Category
	,PetStore.dbo.Rating.RatingScore		AS Product_Rating
	
FROM PetStore.dbo.Product

INNER JOIN PetStore.dbo.Category
	ON PetStore.dbo.Product.CategoryID = PetStore.dbo.Category.CategoryID

INNER JOIN PetStore.dbo.Rating
	ON PetStore.dbo.Product.RatingID = PetStore.dbo.Rating.RatingID