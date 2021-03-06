USE [Datascience]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_FakeNamesCanada]    Script Date: 3/16/2020 6:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROC [dbo].[BLD_WRK_FakeCannadaNames]
-- =============================================
-- Author:		Gaurav Kumar
-- Create date: 20200316
-- Description:	RAW -> WRL
--MOD Date
-- =============================================
	
AS
BEGIN
-- =============================================
-- drop the table
-- =============================================
if object_id('WRK_FakeCannadaNames') is not null
drop table WRK_FakeCannadaNames
-- =============================================
-- We have create a Table
-- =============================================

create table [WRK_FakeCannadaNames]
(
	[RowNumber] int identity (1,1)
	  ,[Number] varchar(100)
      ,[Gender] varchar(10)
      ,[GivenName] varchar(1000)
      ,[Surname] varchar(1000)
      ,[StreetAddress] varchar(1000)
      ,[City] varchar(1000)
      ,[ZipCode] varchar(10)
      ,[CountryFull] varchar(100)
      ,[Birthday] date
      ,[Balance] float
	  ,[InterestRate] float
)
-- =============================================
-- Truncate Table
-- =============================================
truncate table [WRK_FakeCannadaNames]

-- =============================================
-- We have to insert into table
-- =============================================


insert into [WRK_FakeCannadaNames]
(     
       [Number] 
      ,[Gender] 
      ,[GivenName] 
      ,[Surname] 
      ,[StreetAddress]
      ,[City] 
      ,[ZipCode] 
      ,[CountryFull] 
      ,[Birthday] 
      ,[Balance] 
	  ,[InterestRate] 
)
select
       [Number]
      ,[Gender]
      ,[GivenName]
      ,[Surname]
      ,[StreetAddress]
      ,[City]
      ,[ZipCode]
      ,[CountryFull]
      ,[Birthday]
      ,[Balance]
      ,[InterestRate]
from [Raw_FakeCannadaNames]
--filter

where ISNUMERIC([Balance]) =1 -- 10 rows
AND len([ZipCode]) <= 7 -- 2 rows 
AND ISDATE([Birthday]) = 1 -- 1 rows


--==============================================
--ExclusionTable
--===========================================

select * 
from [RAW_FakeNamesCanada_20200315]
where [Balance] < 0


--(43 row(s) affected)


END