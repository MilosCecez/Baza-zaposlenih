UPDATE 
	departman 
SET 
	naziv = 'NIJE U UPOTREBI' 
WHERE
	departman_id IN (
		SELECT
		departman_id
	FROM
		view_departmani
	WHERE
		view_departmani.broj_zaposlenih = 0
	)

