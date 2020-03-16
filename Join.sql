Use Datascience
go

select * from 
[P12-ListOfOrders] A
left join [P12-OrderBreakdown] B
on A.[Order ID] = B.[Order ID]
