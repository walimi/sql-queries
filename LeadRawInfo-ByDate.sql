select 
	LastName, FirstName, Email, Phone, DateCreated, RawLeadID, Data, SourceKey
from LeadRawInfo
where DateCreated > '2015-11-17 13:30:00'
order by DateCreated