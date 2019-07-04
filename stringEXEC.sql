
CREATE FUNCTION [dbo].[stringEXEC] (@code NVARCHAR(4000))
RETURNS NVARCHAR(250)
AS
BEGIN
	DECLARE @sql NVARCHAR(4000) = 'sqlcmd -S SQLSERVER -d AdventureWorks -Q "' + @code + '"'
	EXEC xp_cmdshell @sql
	RETURN 'Done'
END
