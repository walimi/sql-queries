select
	a.LeadID,
	c.Status
from Lead a
join LeadStatusChange b on a.LeadID = b.LeadID
join LeadStatusLU c on b.LeadStatusID = c.LeadStatusID
where a.LeadID = 1994566