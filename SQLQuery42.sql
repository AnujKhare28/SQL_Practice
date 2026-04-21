
SELECT * FROM (
	Select
		ROW_NUMBER() Over(Partition by OrderID Order by CreationTime DESC) rn,
		*
	From Sales.OrdersArchive
) T WHERE rn = 1;


SELECT * FROM (
	Select
		ROW_NUMBER() Over(Partition by OrderID Order by CreationTime DESC) rn,
		*
	From Sales.OrdersArchive
) T WHERE rn > 1;
