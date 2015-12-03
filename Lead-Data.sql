select
   a.LeadID,
   a.ParentLeadID, 
   a.RawLeadID,
   a.DateCreated,
   c.FirstName,
   c.LastName,
   c.Phone, 
   c.Email,
   b.LeadStatusID,
   d.Status  
from
   Lead a   
left join
   LeadStatusChange b    
      on a.LeadId = b.LeadID  
left join
   LeadRawInfo c  
      on a.RawLeadID = c.RawLeadID  
left join
   LeadStatusLU d  
      on b.LeadStatusID = d.LeadStatusID  
where
--   d.Status = 'Pending'
--and
	c.LastName like 'Alxxxyy'
order by RawLeadID



select 
	LastName, FirstName, Email, Phone, DateCreated, RawLeadID, Data, SourceKey
from LeadRawInfo
where DateCreated > '2015-11-17 13:30:00'
order by DateCreated


select 
	LastName, FirstName, Email, Phone, DateCreated, RawLeadID, Data, SourceKey
from LeadRawInfo
where RawLeadId='1196983'