USE [master]
GO
/****** Object:  Database [InsightDbSample]    Script Date: 5/22/2017 11:21:59 AM ******/
CREATE DATABASE [InsightDbSample]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InsightDbSample', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\InsightDbSample.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InsightDbSample_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\InsightDbSample_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [InsightDbSample] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InsightDbSample].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InsightDbSample] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InsightDbSample] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InsightDbSample] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InsightDbSample] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InsightDbSample] SET ARITHABORT OFF 
GO
ALTER DATABASE [InsightDbSample] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InsightDbSample] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InsightDbSample] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InsightDbSample] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InsightDbSample] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InsightDbSample] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InsightDbSample] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InsightDbSample] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InsightDbSample] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InsightDbSample] SET  ENABLE_BROKER 
GO
ALTER DATABASE [InsightDbSample] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InsightDbSample] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InsightDbSample] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InsightDbSample] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InsightDbSample] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InsightDbSample] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InsightDbSample] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InsightDbSample] SET RECOVERY FULL 
GO
ALTER DATABASE [InsightDbSample] SET  MULTI_USER 
GO
ALTER DATABASE [InsightDbSample] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InsightDbSample] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InsightDbSample] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InsightDbSample] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InsightDbSample] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'InsightDbSample', N'ON'
GO
ALTER DATABASE [InsightDbSample] SET QUERY_STORE = OFF
GO
USE [InsightDbSample]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [InsightDbSample]
GO
/****** Object:  UserDefinedTableType [dbo].[BeerTable]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[BeerTable] AS TABLE(
	[ID] [int] NULL,
	[Name] [varchar](256) NULL,
	[Style] [varchar](256) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[EvilTypes]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[EvilTypes] AS TABLE(
	[a] [money] NULL,
	[b] [smallmoney] NULL,
	[c] [date] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[InsertByTableType]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[InsertByTableType] AS TABLE(
	[Text] [varchar](128) NULL,
	[Value] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[InsertTestDataTVP]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[InsertTestDataTVP] AS TABLE(
	[X] [int] NULL,
	[Z] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[InsightTestDataStringTable]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[InsightTestDataStringTable] AS TABLE(
	[String] [varchar](128) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[InsightTestDataTable]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[InsightTestDataTable] AS TABLE(
	[Int] [int] NOT NULL,
	[IntNull] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[InsightTestDataTable2]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[InsightTestDataTable2] AS TABLE(
	[Int] [decimal](18, 0) NOT NULL,
	[IntNull] [decimal](18, 0) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Int32Table]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[Int32Table] AS TABLE(
	[Value] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[MappingTestTable]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[MappingTestTable] AS TABLE(
	[IntParentX] [int] NULL,
	[IntX] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ObjectTable]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[ObjectTable] AS TABLE(
	[ParentX] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[StringMapTable]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[StringMapTable] AS TABLE(
	[Key] [varchar](1024) NULL,
	[Value] [varchar](1024) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[VarcharIDTableType]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[VarcharIDTableType] AS TABLE(
	[ID] [varchar](300) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[XmlDataTable]    Script Date: 5/22/2017 11:22:00 AM ******/
CREATE TYPE [dbo].[XmlDataTable] AS TABLE(
	[id] [int] NULL,
	[Data] [xml] NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[ReflectTableFunction]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ReflectTableFunction](@p [BeerTable] READONLY)
RETURNS TABLE AS
	RETURN SELECT ID FROM @p
GO
/****** Object:  UserDefinedFunction [dbo].[ReflectTableFunction2]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ReflectTableFunction2](@p [BeerTable] READONLY, @q int)
RETURNS TABLE AS
	RETURN SELECT ID FROM @p
GO
/****** Object:  Table [dbo].[Beer]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](256) NULL,
	[Style] [varchar](256) NULL,
 CONSTRAINT [PK_Beer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BulkCopyData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BulkCopyData](
	[Int] [int] NULL,
	[Computed]  AS ([Int]+(1)),
	[Geometry] [geometry] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BulkCopyWithComputedData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BulkCopyWithComputedData](
	[Int1] [int] NULL,
	[Computed]  AS ([Int1]+(1)),
	[Int2] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardTransactions]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardTransactions](
	[TranId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CardTransactions] PRIMARY KEY CLUSTERED 
(
	[TranId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsertByTableTable]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsertByTableTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID2] [int] NULL,
	[Text] [varchar](128) NULL,
	[Value] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsertTestDataTable]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsertTestDataTable](
	[X] [int] IDENTITY(5,1) NOT NULL,
	[Z] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MappingBulkCopyTestTable]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MappingBulkCopyTestTable](
	[IntParentX] [int] NULL,
	[IntX] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MerchNameTermsTransactions]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MerchNameTermsTransactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TermId] [int] NOT NULL,
	[TranId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InsertByTableTable] ADD  DEFAULT ((2)) FOR [ID2]
GO
ALTER TABLE [dbo].[MerchNameTermsTransactions]  WITH CHECK ADD  CONSTRAINT [FK_MerchNameTermsTransactions_CardTransactions] FOREIGN KEY([TranId])
REFERENCES [dbo].[CardTransactions] ([TranId])
GO
ALTER TABLE [dbo].[MerchNameTermsTransactions] CHECK CONSTRAINT [FK_MerchNameTermsTransactions_CardTransactions]
GO
/****** Object:  StoredProcedure [dbo].[ClassAsJsonParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- JSON test procs
----------------------------------------------------------
CREATE PROC [dbo].[ClassAsJsonParameter] @SubClass [varchar](max) AS SELECT SubClass=@SubClass
GO
/****** Object:  StoredProcedure [dbo].[ConvertClassToString]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- Type test procs
----------------------------------------------------------
CREATE PROC [dbo].[ConvertClassToString] (@ID int, @Name varchar(128)) AS SELECT ID=@ID, Name=@Name
GO
/****** Object:  StoredProcedure [dbo].[DateTimeInput]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DateTimeInput] @t [datetime] AS SELECT @t
GO
/****** Object:  StoredProcedure [dbo].[DynamicProcWithTable]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- Dynamic connection procs
----------------------------------------------------------
CREATE PROC [dbo].[DynamicProcWithTable] (@i int = 0, @table Int32Table READONLY, @j int = 0) AS SELECT * FROM @table
GO
/****** Object:  StoredProcedure [dbo].[EvilProc]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EvilProc] @p [EvilTypes] READONLY AS SELECT * FROM @p
GO
/****** Object:  StoredProcedure [dbo].[ExecuteScalarWithOutputParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ExecuteScalarWithOutputParameter] (@p int = NULL OUTPUT) AS
	SELECT @p = @p + 1
	SELECT 7
GO
/****** Object:  StoredProcedure [dbo].[ExecuteSomething]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ExecuteSomething] AS SELECT NULL
GO
/****** Object:  StoredProcedure [dbo].[ExecuteSomethingScalar]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ExecuteSomethingScalar] @p int AS SELECT @p
GO
/****** Object:  StoredProcedure [dbo].[ExecuteSomethingWithParameters]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ExecuteSomethingWithParameters] @p int, @q [varchar](128) AS SELECT @p, @q
GO
/****** Object:  StoredProcedure [dbo].[ExecuteWithOutputParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ExecuteWithOutputParameter] (@p int = NULL OUTPUT) AS
	SELECT @p = @p + 1
GO
/****** Object:  StoredProcedure [dbo].[FieldAsJsonParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[FieldAsJsonParameter] @DateTimeField [varchar](max) AS SELECT DateTimeField=@DateTimeField
GO
/****** Object:  StoredProcedure [dbo].[GeometryProc]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GeometryProc] (@geo [geometry]) AS SELECT @geo
GO
/****** Object:  StoredProcedure [dbo].[GetParentAndChildTestData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetParentAndChildTestData] AS
	SELECT ParentX=2, X=5
	SELECT Y=7 
GO
/****** Object:  StoredProcedure [dbo].[GetParentTestData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- Type test procs
----------------------------------------------------------
CREATE PROC [dbo].[GetParentTestData] AS
	SELECT ParentX=2, X=5 
GO
/****** Object:  StoredProcedure [dbo].[InsertBeer]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertBeer]
(
	@Name varchar(256) = NULL,
	@Style varchar(256) = NULL
)
AS

DECLARE @T TABLE(
[ID] int)

INSERT INTO [dbo].[Beer]
(
	[Name],
	[Style]
)
OUTPUT
	Inserted.[ID]
INTO @T
VALUES
(
	@Name,
	@Style
)
SELECT * FROM @T
GO

CREATE PROCEDURE [DeleteBeer] (@id int)
AS
DELETE FROM Beer WHERE id = @id
GO

CREATE PROCEDURE FindBeers(@name varchar(max))
AS
SELECT * FROM Beer WHERE Name = @name
GO


/****** Object:  StoredProcedure [dbo].[InsertBeer_ScopeIdentity]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertBeer_ScopeIdentity]
(
	@Name varchar(256) = NULL,
	@Style varchar(256) = NULL
)
AS

	INSERT INTO [dbo].[Beer] ([Name], [Style])
		VALUES 	(@Name,	@Style)

	SELECT SCOPE_IDENTITY() AS [Id]
GO
/****** Object:  StoredProcedure [dbo].[InsertBeers]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertBeers] (@Beer [dbo].[BeerTable] READONLY)
AS
DECLARE @T TABLE(
[ID] int)

INSERT INTO [dbo].[Beer]
(
	[Name],
	[Style]
)
OUTPUT
	Inserted.[ID]
INTO @T
SELECT
	[Name],
	[Style]
FROM @Beer
SELECT * FROM @T
GO
/****** Object:  StoredProcedure [dbo].[InsertByTable]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertByTable](@OtherValue int, @Items [InsertByTableType] READONLY) AS 
	TRUNCATE TABLE InsertByTableTable
	DBCC CHECKIDENT ('InsertByTableTable', RESEED, 1)
	INSERT INTO InsertByTableTable (Text, Value)
		OUTPUT inserted.ID, inserted.ID2
		SELECT Text, @OtherValue FROM @Items
GO
/****** Object:  StoredProcedure [dbo].[InsertIdentityReturn]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- Insert test procs
----------------------------------------------------------
CREATE PROC [dbo].[InsertIdentityReturn] (@Value int) AS SELECT Id=1, Id2=@Value
GO
/****** Object:  StoredProcedure [dbo].[InsertIdentityReturn2]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertIdentityReturn2] (@OtherValue int) AS SELECT Id=1, Id2=@OtherValue
GO
/****** Object:  StoredProcedure [dbo].[InsertMultipleTestData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertMultipleTestData] @data [InsertTestDataTVP] READONLY AS
	INSERT INTO InsertTestDataTable (Z) OUTPUT inserted.X SELECT Z FROM @data
GO
/****** Object:  StoredProcedure [dbo].[InsertTestData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertTestData] @Z [int] AS 
	INSERT INTO InsertTestDataTable (Z) OUTPUT inserted.X VALUES (@Z)
GO
/****** Object:  StoredProcedure [dbo].[InsertWithOutputParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertWithOutputParameter] @data [InsertTestDataTVP] READONLY, @p [int] OUTPUT AS
	INSERT INTO InsertTestDataTable (Z) OUTPUT inserted.X SELECT z FROM @data OUTPUT SELECT @p=@p+1
GO
/****** Object:  StoredProcedure [dbo].[InsightTestDataStringTestProc]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsightTestDataStringTestProc] @p [InsightTestDataStringTable] READONLY AS SELECT * FROM @p
GO
/****** Object:  StoredProcedure [dbo].[InsightTestDataTestProc]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsightTestDataTestProc] @p [InsightTestDataTable] READONLY AS SELECT * FROM @p
GO
/****** Object:  StoredProcedure [dbo].[InsightTestDataTestProc2]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsightTestDataTestProc2] @p [InsightTestDataTable2] READONLY AS SELECT * FROM @p
GO
/****** Object:  StoredProcedure [dbo].[Int32TestProc]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Int32TestProc] @p [Int32Table] READONLY AS SELECT * FROM @p
GO
/****** Object:  StoredProcedure [dbo].[ListAsJsonParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ListAsJsonParameter] @ListOfClass [varchar](max) AS SELECT ListOfClass=@ListOfClass
GO
/****** Object:  StoredProcedure [dbo].[MappingAsJson1]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MappingAsJson1] @SubClass [varchar](max) AS SELECT SubClass=@SubClass
GO
/****** Object:  StoredProcedure [dbo].[MappingAsJson2]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MappingAsJson2] @SubClass [varchar](max) AS SELECT SubClass=@SubClass
GO
/****** Object:  StoredProcedure [dbo].[MappingAsJson3]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MappingAsJson3] @SubClass [varchar](max) AS SELECT SubClass=@SubClass
GO
/****** Object:  StoredProcedure [dbo].[MappingAsJson4]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MappingAsJson4] @SubClass [varchar](max) AS SELECT SubClass=@SubClass
GO
/****** Object:  StoredProcedure [dbo].[MappingTestProc]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MappingTestProc] @p MappingTestTable READONLY AS SELECT * FROM @p
GO
/****** Object:  StoredProcedure [dbo].[MappingTestProc2]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MappingTestProc2] @intParentX [int] AS SELECT @intParentX
GO
/****** Object:  StoredProcedure [dbo].[MappingTestProcGeography]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MappingTestProcGeography] @geo [geography] AS SELECT GEO=@geo
GO
/****** Object:  StoredProcedure [dbo].[ObjectAsParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ObjectAsParameter] @ParentX [int] AS SELECT @ParentX
GO
/****** Object:  StoredProcedure [dbo].[ObjectListAsParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ObjectListAsParameter] (@objects [ObjectTable] READONLY) AS SELECT ParentX FROM @objects
GO
/****** Object:  StoredProcedure [dbo].[OutputParameterMappingTest]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OutputParameterMappingTest] @out_foo int = NULL OUTPUT AS SELECT @out_foo = 5
GO
/****** Object:  StoredProcedure [dbo].[OutputParameterParentMappingTest]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- Mapping test procs
----------------------------------------------------------
CREATE PROCEDURE [dbo].[OutputParameterParentMappingTest] @parent int = NULL OUTPUT, @foo int = NULL OUTPUT
AS
	SELECT @parent = 1
	SELECT @foo = 2
GO
/****** Object:  StoredProcedure [dbo].[ProcWithOutputParameters]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- ProcWithOutputParameters
----------------------------------------------------------
CREATE PROC [dbo].[ProcWithOutputParameters] (
	@in [int],
	@out1 [int] OUTPUT,
	@out2 [int] = 0 OUTPUT
)
AS
	SET @out1 = @in
	SET @out2 = @in
	SELECT @in
	RETURN @in
GO
/****** Object:  StoredProcedure [dbo].[QueryObject]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[QueryObject] AS SELECT ParentX=2, X=5 
GO
/****** Object:  StoredProcedure [dbo].[QueryResults]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[QueryResults] @p int AS
	SELECT ParentX=2, X=5 
	SELECT @p
GO
/****** Object:  StoredProcedure [dbo].[QueryResultsWithOutputParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[QueryResultsWithOutputParameter] (@p int = NULL OUTPUT) AS
	SELECT @p = @p + 1
	SELECT 1
	SELECT 2
GO
/****** Object:  StoredProcedure [dbo].[QueryValue]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[QueryValue] @p int AS SELECT @p UNION ALL SELECT @p
GO
/****** Object:  StoredProcedure [dbo].[QueryWithOutputParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[QueryWithOutputParameter] (@p int = NULL OUTPUT) AS
	SELECT @p = @p + 1
	SELECT 5
GO
/****** Object:  StoredProcedure [dbo].[RaiseAnError]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RaiseAnError] (@Value varchar(128)) AS raiserror ('test', 18, 1)
GO
/****** Object:  StoredProcedure [dbo].[ReflectInt]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ReflectInt] (@Value int = 5) AS SELECT Value=@Value
GO
/****** Object:  StoredProcedure [dbo].[ReflectInt32Table]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ReflectInt32Table] (@Value Int32Table READONLY) AS SELECT * FROM @Value
GO
/****** Object:  StoredProcedure [dbo].[ReflectMultipleTestData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ReflectMultipleTestData] @data [InsertTestDataTVP] READONLY AS
	SELECT * FROM @data
GO
/****** Object:  StoredProcedure [dbo].[ReflectString]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ReflectString] (@Value varchar(128)) AS SELECT Value=@Value
GO
/****** Object:  StoredProcedure [dbo].[ReflectTwoRecordsets]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ReflectTwoRecordsets] (@Value varchar(128), @Value2 varchar(128)) AS SELECT Value=@Value SELECT Value=@Value2
GO
/****** Object:  StoredProcedure [dbo].[ReflectXml]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- XML test types
----------------------------------------------------------
CREATE PROC [dbo].[ReflectXml] (@Xml xml) AS SELECT Xml=@Xml
GO
/****** Object:  StoredProcedure [dbo].[ReflectXmlAsData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ReflectXmlAsData] (@Xml xml) AS SELECT Data=@Xml
GO
/****** Object:  StoredProcedure [dbo].[ReflectXmlTable]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReflectXmlTable] @p [XmlDataTable] READONLY AS SELECT * FROM @p
GO
/****** Object:  StoredProcedure [dbo].[ReflectXmlTableAsVarChar]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReflectXmlTableAsVarChar] @p [XmlDataTable] READONLY AS SELECT CONVERT(varchar(MAX),Data) FROM @p
GO
/****** Object:  StoredProcedure [dbo].[ResetTestDataTable]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ResetTestDataTable] AS
	INSERT INTO InsertTestDataTable (Z) VALUES (0)
	TRUNCATE TABLE InsertTestDataTable
	DBCC CHECKIDENT ('InsertTestDataTable', RESEED, 1)
GO
/****** Object:  StoredProcedure [dbo].[ReturnAValue]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ReturnAValue] AS RETURN 11
GO
/****** Object:  StoredProcedure [dbo].[SelectAllBeer]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- SelectAllBeer
----------------------------------------------------------
CREATE PROC [dbo].[SelectAllBeer]
AS
	SELECT * FROM Beer
GO
/****** Object:  StoredProcedure [dbo].[SelectAllBeerChildren]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- SelectAllBeerChildren
----------------------------------------------------------
CREATE PROC [dbo].[SelectAllBeerChildren]
AS
	SELECT ParentID=1, b.* FROM Beer b
GO
/****** Object:  StoredProcedure [dbo].[SingleObject]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SingleObject] AS SELECT ParentX=2, X=5
GO
/****** Object:  StoredProcedure [dbo].[SingleObjectWithNoData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SingleObjectWithNoData] AS SELECT ParentX=2, X=5 WHERE 0=1
GO
/****** Object:  StoredProcedure [dbo].[StructAsJsonParameter]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[StructAsJsonParameter] @SubStruct [varchar](max) AS SELECT SubStruct=@SubStruct
GO
/****** Object:  StoredProcedure [dbo].[TestDateTime2]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestDateTime2] @date datetime2 AS SELECT @date
GO
/****** Object:  StoredProcedure [dbo].[TestDateTimeConvert]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestDateTimeConvert] @p datetime2 AS SELECT @p
GO
/****** Object:  StoredProcedure [dbo].[TestGuidFromStringParam]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestGuidFromStringParam] @p uniqueidentifier AS SELECT @p
GO
/****** Object:  StoredProcedure [dbo].[TestGuidToStringParam]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestGuidToStringParam] @p varchar(300) AS SELECT convert(uniqueidentifier, @p)
GO
/****** Object:  StoredProcedure [dbo].[TestMap]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestMap]
	@Map [StringMapTable] READONLY
AS
	SELECT * FROM @Map
GO
/****** Object:  StoredProcedure [dbo].[TestOutputParameters]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------------------------------
-- Output parameter procs
----------------------------------------------------------
CREATE PROCEDURE [dbo].[TestOutputParameters] @p int = 1 OUTPUT AS SET @p = 9
GO
/****** Object:  StoredProcedure [dbo].[TestStringToGuidValue]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TestStringToGuidValue] @p varchar(300) AS SELECT convert(uniqueidentifier, @p)
GO
/****** Object:  StoredProcedure [dbo].[TestXmlOutputParameters]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TestXmlOutputParameters] @data [xml] = NULL OUTPUT AS SET @data = @data
GO
/****** Object:  StoredProcedure [dbo].[TimeAdd]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TimeAdd] @t [datetime], @add [datetime] AS SELECT @t + @add
GO
/****** Object:  StoredProcedure [dbo].[TimeAdd2]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TimeAdd2] @t [datetime], @add [time] AS SELECT @t + CAST(@add as [datetime])
GO
/****** Object:  StoredProcedure [dbo].[TimeInput]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TimeInput] @t [time] AS SELECT @t
GO
/****** Object:  StoredProcedure [dbo].[UpdateTestData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateTestData] @X [int], @Z [int] AS
	UPDATE InsertTestDataTable SET Z=@Z WHERE X=@X SELECT X=0
GO
/****** Object:  StoredProcedure [dbo].[UpsertMultipleTestData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpsertMultipleTestData] @data [InsertTestDataTVP] READONLY AS
	UPDATE InsertTestDataTable SET Z=data.Z FROM @data data WHERE data.X = InsertTestDataTable.X SELECT X=0 FROM @data
GO
/****** Object:  StoredProcedure [dbo].[UpsertTestData]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpsertTestData] (@X [int], @Z [int]) AS
	UPDATE InsertTestDataTable SET Z=@Z WHERE X=@X SELECT X=0
GO
/****** Object:  StoredProcedure [dbo].[VarCharProc]    Script Date: 5/22/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VarCharProc] (@p [VarcharIDTableType] READONLY) AS SELECT * FROM @p
GO
USE [master]
GO
ALTER DATABASE [InsightDbSample] SET  READ_WRITE 
GO
