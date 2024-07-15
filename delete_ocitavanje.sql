DELETE FROM ocitavanje
WHERE
	YEAR(created_at) = 2023
	AND MONTH(created_at) = 8
	AND (
		TIME(created_at) < '08:00:00'
		OR TIME(created_at) > '18:00:00'
	)