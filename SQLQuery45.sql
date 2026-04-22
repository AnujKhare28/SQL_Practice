
Select * ,
CONCAT(DistRank * 100, '%') DistRankPercentage
From (
Select 
	Product,
	Price,
	CUME_DIST() Over(Order by Price DESC) DistRank
From Sales.Products
) t Where DistRank <= 0.4 ;



Select * ,
CONCAT(DistRank * 100, '%') DistRankPercentage
From (
Select 
	Product,
	Price,
	Percent_Rank() Over(Order by Price DESC) DistRank
From Sales.Products
) t Where DistRank <= 0.4 ;