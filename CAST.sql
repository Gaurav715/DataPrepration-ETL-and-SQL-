USE Datascience
go
SELECT * from [p12-OrderBreakdown]
order by CAST([Sales] as float) DESC