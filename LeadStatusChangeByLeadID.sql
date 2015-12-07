select
	a.LeadID,
	c.Status,
	b.DateCreated,
	b.LeadStatusID
from Lead a
left join LeadStatusChange b on a.LeadID = b.LeadID
left join LeadStatusLU c on b.LeadStatusID = c.LeadStatusID
where c.Status is not null
and a.LeadID in (
	select LeadID
	from LeadStatusChange 
	where DateCreated > '2015-01-01'
	group by LeadID
	having count(LeadID) > 1
	)
and a.LeadID=1931033
group by a.LeadID, c.Status, b.DateCreated, b.LeadStatusID
order by LeadID, DateCreated


