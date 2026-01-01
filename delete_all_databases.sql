USE master;

DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql = @sql + 
    'ALTER DATABASE [' + name + '] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     DROP DATABASE [' + name + '];'
FROM sys.databases
WHERE name NOT IN ('master', 'model', 'msdb', 'tempdb');

EXEC sp_executesql @sql;
