/******************************/
/**** Drop/Create Database  ***/
/******************************/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'introaspdotnet')
  DROP DATABASE introaspdotnet
GO

CREATE DATABASE introaspdotnet
GO

USE introaspdotnet
GO

--Grant ASPNET access and dataread/write permissions
DECLARE @ASPNETUserAccount NVARCHAR (255)
SET @ASPNETUserAccount = @@SERVERNAME + '\ASPNET'

IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = @ASPNETUserAccount)
  EXEC sp_grantlogin @ASPNETUserAccount
IF NOT EXISTS (SELECT * FROM dbo.sysusers WHERE name = @ASPNETUserAccount)
  EXEC sp_grantdbaccess @ASPNETUserAccount

EXEC sp_addrolemember N'db_datareader', @ASPNETUserAccount
EXEC sp_addrolemember N'db_datawriter', @ASPNETUserAccount
GO

CREATE TABLE movies (
  movie_id            INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_movies PRIMARY KEY CLUSTERED,
  title               NVARCHAR(64) NOT NULL,
  release_date        DATETIME NOT NULL
)
GO  

CREATE TABLE reviews (
  review_id    INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_reviews PRIMARY KEY CLUSTERED,
  movie_id     INT NOT NULL CONSTRAINT fk_reviews_movies FOREIGN KEY (movie_id) REFERENCES movies (movie_id),
  summary      VARCHAR(64) NOT NULL,
  rating       INT NOT NULL,
  review       NVARCHAR(512) NOT NULL,
  reviewer     NVARCHAR(64) NULL
)
GO