
use WorkBench2Prod;
go
select distinct t.name AS table_name,
schema_name(t.schema_id) AS schema_name,
c.name AS column_name, 
d.name
FROM sys.tables AS t
left join sys.columns c ON t.OBJECT_ID = c.OBJECT_ID
left join sys.types d on c.user_type_id = d.system_type_id
where c.name = 'ContractID'
order by schema_name, table_name;


/* Columns for a given table */
use WorkBench2Prod;
go
select distinct
	c.name AS column_name, 
	column_id, 
	schema_name(t.schema_id) AS schema_name,
	d.name, 
	c.max_length, 
	c.is_nullable, 
	c.column_id
from sys.tables AS t
left join sys.columns c ON t.OBJECT_ID = c.OBJECT_ID
left join sys.types d on c.user_type_id = d.system_type_id
where t.name = 'Contract'
--and d.name='varchar'
order by column_name



SELECT * FROM information_schema.tables
where TABLE_NAME like '%Account%'
and TABLE_TYPE='BASE TABLE'
order by TABLE_NAME