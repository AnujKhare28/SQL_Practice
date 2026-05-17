With Series as (
	
	Select 
		1 as MyNumber
	Union All
	Select 
		 MyNumber + 1
	From Series
	Where MyNumber < 20
)

Select * from Series 