        CREATE DATABASE [to_do]  (EDITION = 'GeneralPurpose', SERVICE_OBJECTIVE = 'GP_Gen5_2', MAXSIZE = 32 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
        GO
        CREATE LOGIN dbuser WITH password='#S3cr3t!';
        GO
        use [to_do]
		CREATE USER dbuser FROM LOGIN dbuser;
		GO
        EXEC sp_addrolemember 'db_datareader', 'dbuser';