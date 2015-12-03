USE HR;
GO
select distinct t.name AS table_name,
schema_name(t.schema_id) AS schema_name,
c.name AS column_name, 
d.name
FROM sys.tables AS t
left join sys.columns c ON t.OBJECT_ID = c.OBJECT_ID
left join sys.types d on c.user_type_id = d.system_type_id
where c.name LIKE '%LeadStatus%'
order by schema_name, table_name;





/* Columns for a given table */
select distinct
	c.name AS column_name, 
	schema_name(t.schema_id) AS schema_name,
	d.name, 
	c.max_length, 
	c.is_nullable, 
	c.column_id
from sys.tables AS t
left join sys.columns c ON t.OBJECT_ID = c.OBJECT_ID
left join sys.types d on c.user_type_id = d.system_type_id
where t.name = 'LeadRawInfo'
order by c.column_id

