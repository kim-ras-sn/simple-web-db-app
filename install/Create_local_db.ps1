sqlcmd -S localhost -Q "create database to_do"
sqlcmd -S localhost -Q "CREATE LOGIN dbuser WITH password='#S3cr3t!'"
sqlcmd -S localhost -i .\BuildToDoTables.sql