SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION helloworld
	(@Name varchar(50))
RETURNS varchar(100)  
AS
BEGIN
	RETURN 'Witaj ' + @Name + '!'  
END
GO

SELECT dbo.helloworld('Jan')