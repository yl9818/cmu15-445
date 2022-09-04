select count (distinct artist) 
from artist_credit_name
where artist_credit in (
	select artist_credit
	from artist_credit_name
	where name = 'Ariana Grande'
	);
