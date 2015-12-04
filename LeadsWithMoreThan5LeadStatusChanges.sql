select LeadID, count(LeadId) leadCount
from LeadStatusChange
group by LeadID
having count(LeadID) > 5
order by leadCount