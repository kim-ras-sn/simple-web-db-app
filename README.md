# AwesomeApp
This small app can be deployed to a IIS server and then connect to a Database for Service mapping and Dependency views using Discoverty - Build for ServiceNow Discovery test

Feel free to use it at your own risk. 

Ther is Database create scripts and a load data SQL scripts, there is also a Powerscript to create the local Database.
It has been tested on Azure SQL, AWS SQL Database and Local SQL.

I am working on a Fully automatet script to be combined with a CPG provisioning.

-- Connect strings --- 
Local SQL:

    <connectionStrings>
        <add name="ToDoDB"
        connectionString="Server=(local);user id=dbuser;password=VerySecret; initial catalog=to_do; 
        MultipleActiveResultSets=true" providerName="System.Data.SqlClient"/>
    </connectionStrings>

 Azure database:

    <connectionStrings>
        <add name="ToDoDB"
        connectionString="Server=kr-sql.database.windows.net;user id=dbuser;password=V3rySecret!#; initial catalog=to_to; 
        MultipleActiveResultSets=true" providerName="System.Data.SqlClient"/>
    </connectionStrings>

 Build login :

    CREATE DATABASE [ToDo]  (EDITION = 'GeneralPurpose', SERVICE_OBJECTIVE = 'GP_Gen5_2', MAXSIZE = 32 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
    GO
    CREATE LOGIN dbuser WITH password='V3rySecret!#';
    GO
    CREATE USER dbuser FROM LOGIN dbuser;
    use ToDo
    EXEC sp_addrolemember 'db_datareader', 'dbuser';
