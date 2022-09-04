select decade, count(*) as cnt
from (
	select (cast((date_year / 10) as int) * 10) || 's' as decade
	from release
		inner join release_info on release.id = release_info.release
		inner join release_status on release.status = release_status.id
	where release_status.name = 'Official' 
		and release_info.date_year >= 1900 
	)
group by decade
order by cnt desc,
	decade desc;
