select RawLeadID
from Lead
where LeadID=2003489

select * from Lead
where RawLeadID=1201672

select * from LeadRawInfo
where RawLeadID=1201673

select LeadID, b.Status
from LeadStatusChange a
join LeadStatusLU b on a.LeadStatusID=b.LeadStatusID
where LeadID in (2003487, 2003488)

select * from Lead
where ParentLeadID=2003494

select * from LeadRawInfo
where firstname='Teegan'
and lastname='Russell'

select
	a.LeadID,
	b.Status
from LeadStatusChange a
join LeadStatusLU b on a.LeadStatusID=b.LeadStatusID
where 
	a.LeadID in (2003487, 2003488, 2003489, 2003490, 2003491)



select * from LeadStatusChange
where LeadID in (2003487, 2003488, 2003489, 2003490, 2003491)


select distinct contactid 
from Contact where Phone = '0609677451' or AltPhone = '0609677451'  or Email = 'Donec.dignissim.magna@luctus.ca' or AltEmail = 'Donec.dignissim.magna@luctus.ca' 


SELECT l.*
FROM Lead l
INNER JOIN Contact c ON l.ContactID = c.ContactID
INNER JOIN
(
	SELECT LeadID, MAX(LeadStatusChangeID) as MaxID
	FROM LeadStatusChange
	GROUP BY LeadID
) as MAXSTATUS ON l.LeadID = MAXSTATUS.LeadID
INNER JOIN LeadStatusChange lsc ON MAXSTATUS.MaxID = lsc.LeadStatusChangeID
LEFT JOIN Account a on l.leadid = a.leadid
WHERE 
l.ParentLeadID is null and  
lsc.LeadStatusID <> 17 and
a.AccountID is null and 
c.ContactID IN (select distinct contactid 
				from Contact 
				where Phone = '0609677451' or 
				AltPhone = '0609677451'  or 
				Email = 'Donec.dignissim.magna@luctus.ca' or 
				AltEmail = 'Donec.dignissim.magna@luctus.ca' )



EXEC dbo.proc_FindMatchingLeads '0609677451', '0609677451', 'Donec.dignissim.magna@luctus.ca', 'Donec.dignissim.magna@luctus.ca'

EXEC dbo.proc_FindMatchingLeads '7033896766', '', 'risus@dapibus.com', ''

SELECT l.*
FROM Lead l
INNER JOIN Contact c ON l.ContactID = c.ContactID
INNER JOIN
(
	SELECT LeadID, MAX(LeadStatusChangeID) as MaxID
	FROM LeadStatusChange
	GROUP BY LeadID
) as MAXSTATUS ON l.LeadID = MAXSTATUS.LeadID
INNER JOIN LeadStatusChange lsc ON MAXSTATUS.MaxID = lsc.LeadStatusChangeID
LEFT JOIN Account a on l.leadid = a.leadid
WHERE 
l.ParentLeadID is null and  
lsc.LeadStatusID <> 17 and
a.AccountID is null and 
c.ContactID IN (select distinct contactid 
				from Contact 
				where Phone = '0983711210' or 
				AltPhone = '0983711210'  or 
				Email = 'Donec.felis.orci@turpis.net' or 
				AltEmail = 'Donec.felis.orci@turpis.net' )


select distinct contactid from Contact where Phone = '0983711210' or AltPhone = '0983711210'  or Email = 'Donec.felis.orci@turpis.net' or AltEmail = 'Donec.felis.orci@turpis.net' 

EXEC dbo.proc_FindMatchingLeads '7033896766', '7033896766', 'risus@dapibus.com', 'risus@dapibus.com'

select DISTINCT contactid
from Contact 
where Phone = '0764743767' or 
AltPhone = '0764743767'  or 
Email = 'tristique.pellentesque.tellus@Etiam.co.uk' or 
AltEmail = 'tristique.pellentesque.tellus@Etiam.co.uk' 


select * from Account
where LeadID=2003487


SELECT * FROM LeadStatusLU
									