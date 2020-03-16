use Datascience

go

select * from [RAW_FakeNamesCanada_20200315]
where ISNUMERIC([Balance]) <> 1 