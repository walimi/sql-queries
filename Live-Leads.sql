select l.LeadID, ParentLeadID, l.LeadSourceID, l.DateCreated, SubmittedToDialer, l.IsActive, RawLeadID, CreatedByID, PartnerLeadID 
from Lead l join LeadStatusChange lsc 
	on l.LeadID = lsc.LeadID
where l.DateCreated > '2015-12-07'
order by DateCreated desc;

