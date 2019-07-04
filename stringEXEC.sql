
CREATE FUNCTION [dbo].[stringEXEC] (@code NVARCHAR(4000))
RETURNS VARCHAR(4)
AS
BEGIN
	-- Update the server hostname and the database name below. You can also supply login credentials with -U and -P parameters
	DECLARE @sql NVARCHAR(4000) = 'sqlcmd -S SQLSERVER -d AdventureWorks -Q "' + @code + '"'
	EXEC xp_cmdshell @sql
	RETURN 'Done'
END
