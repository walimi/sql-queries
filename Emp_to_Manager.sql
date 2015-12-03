select 
	a.EmployeeId, a.FirstName, a.LastName, 
	b.FirstName 'Manager Name', b.LastName 'Manager Last Name', b.EmployeeId 'Manager Id'
from hr.dbo.employee a 
join hr.dbo.employee b
on a.ManagerId = b.EmployeeId


select top 100 FirstName, LastName, EmailAddress
from hr.dbo.employee
