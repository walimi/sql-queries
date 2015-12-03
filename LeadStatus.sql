declare @LeadID as int
set @LeadID=2003512
--2003512
--2003498
select l.LeadID, ParentLeadID, 
case 
	when l.ParentLeadID is null then 'ParentLead' 
	when l.ParentLeadID is not null then 'ChildLead' end as 'Relation',
RawLeadID, lsc.LeadStatusID, lslu.Status, lsc.LeadStatusChangeID, lsc.DateCreated, lsc.Notes
from Lead l 
left join LeadStatusChange lsc 
on l.LeadID = lsc.LeadID
left join LeadStatusLU lslu 
on lsc.LeadStatusID = lslu.LeadStatusID
where l.LeadID=@LeadID or l.LeadId in (select LeadID from Lead where ParentLeadID=@LeadID)
order by l.LeadID, lsc.DateCreated


select * from LeadRawInfo
where RawLeadID=1201692