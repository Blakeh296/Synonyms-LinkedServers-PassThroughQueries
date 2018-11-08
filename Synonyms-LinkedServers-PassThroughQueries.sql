use master;

-- To link servers they must share commen security credentials
-- For example you can create this on both servers & then link them
CREATE LOGIN Blake
	WITH PASSWORD = 'Blake296'
	GO

CREATE USER UserBlake FOR LOGIN Blake;
GO

-- Then you may execute querys from the other server like this [Server].[Database].[Schema].[Table]
select * from [PL11\MTCDB].[Adventureworks2012].[Person].[ContactType]

-- SYNONYM EXAMPLES: I took the cross server query select * from [PL11\MTCDB].[Adventureworks2012].[Person].[ContactType]
-- & put the From statement in a synonym

SELECT * FROM [dbo].[AdvWorks2012ContactType];

-- The statement below is the way to create the Synonym through Code

USE [AdventureWorks2012]
GO

/****** Object:  Synonym [dbo].[AdvWorks2012ContactType]    Script Date: 11/7/2018 8:11:04 PM ******/
CREATE SYNONYM [dbo].[AdvWorks2012ContactType] FOR [PL11\MTCDB].[AdventureWorks2012].[Person].[ContactType]
GO






