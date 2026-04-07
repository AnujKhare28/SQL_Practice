select 
CustomerID,
Score,
Coalesce(Score, 0) Score2,
avg(Score) over() AvgScore,
avg(Coalesce(Score, 0)) over() AvgScore2
from Sales.Customers;

select 
CustomerID,
FirstName,
LastName,
FirstName + ' '+coalesce(LastName,'') as FullName,
Score,
coalesce(Score,0) + 10 as ScoreWithBonus
from Sales.Customers;

