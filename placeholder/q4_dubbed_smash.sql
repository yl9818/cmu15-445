select artist.name,
	count(distinct artist_alias.name) as num
from artist
	inner join artist_alias on artist.id = artist_alias.artist
	inner join area on area.id = artist.area
where artist.begin_date_year > 1950
	and area.name = 'United Kingdom'
group by artist.id
order by num desc
limit 10;
