USE Datascience
go


--  update [P12-OrderBreakdown]
 -- set Discount =NULL
  --where Discount = 0.5


SELECT TOP 1000 [Order ID]
      ,[Product Name]
      ,[Discount]
      ,[Sales]
      ,[Quantity]
      ,[Category]
  FROM [P12-OrderBreakdown]

