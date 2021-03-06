USE [master]
GO
/****** Object:  Database [ACA2016]    Script Date: 7/11/2016 12:03:31 PM ******/
CREATE DATABASE [ACA2016]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ACA2016', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MEDAPP2\MSSQL\DATA\ACA2016.mdf' , SIZE = 278528KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ACA2016_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MEDAPP2\MSSQL\DATA\ACA2016_log.ldf' , SIZE = 1623488KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ACA2016] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ACA2016].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ACA2016] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ACA2016] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ACA2016] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ACA2016] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ACA2016] SET ARITHABORT OFF 
GO
ALTER DATABASE [ACA2016] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ACA2016] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ACA2016] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ACA2016] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ACA2016] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ACA2016] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ACA2016] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ACA2016] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ACA2016] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ACA2016] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ACA2016] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ACA2016] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ACA2016] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ACA2016] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ACA2016] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ACA2016] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ACA2016] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ACA2016] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ACA2016] SET  MULTI_USER 
GO
ALTER DATABASE [ACA2016] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ACA2016] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ACA2016] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ACA2016] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ACA2016] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ACA2016]
GO
/****** Object:  User [EMEDCOM\Z_bradmin]    Script Date: 7/11/2016 12:03:31 PM ******/
CREATE USER [EMEDCOM\Z_bradmin] FOR LOGIN [EMEDCOM\Z_bradmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EMEDCOM\RemoteDev4]    Script Date: 7/11/2016 12:03:31 PM ******/
CREATE USER [EMEDCOM\RemoteDev4] FOR LOGIN [EMEDCOM\RemoteDev4] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EMEDCOM\RemoteDev3]    Script Date: 7/11/2016 12:03:31 PM ******/
CREATE USER [EMEDCOM\RemoteDev3] FOR LOGIN [EMEDCOM\RemoteDev3] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EMEDCOM\RemoteDev2]    Script Date: 7/11/2016 12:03:31 PM ******/
CREATE USER [EMEDCOM\RemoteDev2] FOR LOGIN [EMEDCOM\RemoteDev2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EMEDCOM\RemoteDev1]    Script Date: 7/11/2016 12:03:31 PM ******/
CREATE USER [EMEDCOM\RemoteDev1] FOR LOGIN [EMEDCOM\RemoteDev1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EMEDCOM\clazar]    Script Date: 7/11/2016 12:03:31 PM ******/
CREATE USER [EMEDCOM\clazar] FOR LOGIN [EMEDCOM\clazar] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [EMEDCOM\Z_bradmin]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [EMEDCOM\Z_bradmin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [EMEDCOM\Z_bradmin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [EMEDCOM\Z_bradmin]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [EMEDCOM\RemoteDev4]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [EMEDCOM\RemoteDev3]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [EMEDCOM\RemoteDev2]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [EMEDCOM\RemoteDev1]
GO
/****** Object:  Table [dbo].[CoveredIndividual]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoveredIndividual](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employeeCodeId] [int] NOT NULL,
	[firstName] [varchar](100) NULL,
	[middleName] [varchar](100) NULL,
	[lastName] [varchar](100) NULL,
	[ssn] [varchar](10) NULL,
	[birthday] [date] NULL,
	[allCoverage] [smallint] NULL,
	[janCoverage] [smallint] NULL,
	[febCoverage] [smallint] NULL,
	[marCoverage] [smallint] NULL,
	[aprCoverage] [smallint] NULL,
	[mayCoverage] [smallint] NULL,
	[junCoverage] [smallint] NULL,
	[julCoverage] [smallint] NULL,
	[augCoverage] [smallint] NULL,
	[sepCoverage] [smallint] NULL,
	[octCoverage] [smallint] NULL,
	[novCoverage] [smallint] NULL,
	[decCoverage] [smallint] NULL,
	[disableCoding] [smallint] NULL,
 CONSTRAINT [PK_CoveredIndividual] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](100) NULL,
	[middleName] [varchar](100) NULL,
	[lastName] [varchar](100) NULL,
	[ssn] [varchar](50) NULL,
	[birthday] [date] NULL,
	[isForeign] [smallint] NULL,
	[address] [varchar](150) NULL,
	[address2] [varchar](150) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](50) NULL,
	[zip] [varchar](50) NULL,
	[country] [varchar](100) NULL,
	[email] [varchar](150) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeCode]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeCode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[employerId] [int] NOT NULL,
	[filingYear] [int] NULL,
	[hourlyAmount] [decimal](6, 2) NULL,
	[salaryAmount] [decimal](6, 2) NULL,
	[ALLM_COC] [varchar](2) NULL,
	[JAN_COC] [varchar](2) NULL,
	[FEB_COC] [varchar](2) NULL,
	[MAR_COC] [varchar](2) NULL,
	[APR_COC] [varchar](2) NULL,
	[MAY_COC] [varchar](2) NULL,
	[JUN_COC] [varchar](2) NULL,
	[JUL_COC] [varchar](2) NULL,
	[AUG_COC] [varchar](2) NULL,
	[SEP_COC] [varchar](2) NULL,
	[OCT_COC] [varchar](2) NULL,
	[NOV_COC] [varchar](2) NULL,
	[DEC_COC] [varchar](2) NULL,
	[ALLM_LCMP] [money] NULL,
	[JAN_LCMP] [money] NULL,
	[FEB_LCMP] [money] NULL,
	[MAR_LCMP] [money] NULL,
	[APR_LCMP] [money] NULL,
	[MAY_LCMP] [money] NULL,
	[JUN_LCMP] [money] NULL,
	[JUL_LCMP] [money] NULL,
	[AUG_LCMP] [money] NULL,
	[SEP_LCMP] [money] NULL,
	[OCT_LCMP] [money] NULL,
	[NOV_LCMP] [money] NULL,
	[DEC_LCMP] [money] NULL,
	[ALLM_SHC] [varchar](2) NULL,
	[JAN_SHC] [varchar](2) NULL,
	[FEB_SHC] [varchar](2) NULL,
	[MAR_SHC] [varchar](2) NULL,
	[APR_SHC] [varchar](2) NULL,
	[MAY_SHC] [varchar](2) NULL,
	[JUN_SHC] [varchar](2) NULL,
	[JUL_SHC] [varchar](2) NULL,
	[AUG_SHC] [varchar](2) NULL,
	[SEP_SHC] [varchar](2) NULL,
	[OCT_SHC] [varchar](2) NULL,
	[NOV_SHC] [varchar](2) NULL,
	[DEC_SHC] [varchar](2) NULL,
	[isDependent] [smallint] NULL,
	[flaggedEmployee] [smallint] NULL,
	[disableCoding] [smallint] NULL,
 CONSTRAINT [PK_EmployeeCode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeCustSSN]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeCustSSN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ssn] [nvarchar](11) NULL,
	[Note] [nvarchar](100) NULL,
 CONSTRAINT [PK_EmployeeCustSSN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeEnrollment]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeEnrollment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enrollmentName] [varchar](50) NOT NULL,
	[employeeCodeId] [int] NOT NULL,
	[planId] [int] NOT NULL,
	[unionMember] [smallint] NULL,
	[contributionStartDate] [date] NULL,
	[contributionEndDate] [date] NULL,
	[coverageOfferDate] [date] NULL,
	[isEnrolled] [smallint] NULL,
	[CoverageStartDate] [date] NULL,
	[coverageEndDate] [date] NULL,
	[COBRAEnrolled] [smallint] NULL,
	[COBRAStartDate] [date] NULL,
	[COBRAEndDate] [date] NULL,
 CONSTRAINT [PK_EmployeeEnrollment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeHireSpan]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeHireSpan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hireName] [varchar](50) NOT NULL,
	[employeeCodeId] [int] NOT NULL,
	[startDate] [date] NULL,
	[endDate] [date] NULL,
 CONSTRAINT [PK_EmployeeHireSpan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeStatus]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[statusName] [varchar](50) NOT NULL,
	[employeeCodeId] [int] NOT NULL,
	[status] [varchar](50) NULL,
	[startDate] [date] NULL,
	[endDate] [date] NULL,
 CONSTRAINT [PK_EmployeeStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taxid] [varchar](10) NULL,
	[name] [varchar](70) NULL,
	[isForeignAddress] [smallint] NULL,
	[address] [varchar](150) NULL,
	[address2] [varchar](150) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](50) NULL,
	[zip] [varchar](50) NULL,
	[country] [varchar](100) NULL,
	[phoneNumber] [varchar](50) NULL,
	[contactName] [varchar](100) NULL,
	[signTitle] [varchar](100) NULL,
	[signDate] [date] NULL,
	[originCode] [varchar](1) NULL,
	[SHOPIdentifier] [varchar](50) NULL,
	[totalNumberEE] [int] NOT NULL CONSTRAINT [DF_Employer_totalNumberEE]  DEFAULT ((0)),
	[totalNumberForms] [int] NOT NULL CONSTRAINT [DF_Employer_totalNumberForms]  DEFAULT ((0)),
	[eligibility_A] [smallint] NOT NULL CONSTRAINT [DF_Employer_eligibility_A]  DEFAULT ((0)),
	[eligibility_B] [smallint] NOT NULL CONSTRAINT [DF_Employer_eligibility_B]  DEFAULT ((0)),
	[eligibility_C] [smallint] NOT NULL CONSTRAINT [DF_Employer_eligibility_C]  DEFAULT ((0)),
	[eligibility_D] [smallint] NOT NULL CONSTRAINT [DF_Employer_eligibility_D]  DEFAULT ((0)),
	[lockEmployer] [smallint] NOT NULL CONSTRAINT [DF_Employer_lockEmployer]  DEFAULT ((0)),
	[formType] [varchar](50) NULL,
	[isCompany] [smallint] NOT NULL CONSTRAINT [DF_Employer_isCompany]  DEFAULT ((0)),
	[status] [varchar](50) NULL,
	[companyId] [int] NULL,
	[teamId] [int] NULL,
	[lockCompany] [smallint] NOT NULL CONSTRAINT [DF_Employer_lockCompany]  DEFAULT ((0)),
	[lastEdit] [date] NULL CONSTRAINT [DF_Employer_lastEdit]  DEFAULT (getdate()),
	[filingYear] [int] NULL,
	[isCorrected] [smallint] NOT NULL CONSTRAINT [DF_Employer_isCorrected]  DEFAULT ((0)),
	[isAuthoritative] [smallint] NOT NULL CONSTRAINT [DF_Employer_isAuthoritative]  DEFAULT ((0)),
	[lastUploadDate] [date] NULL,
	[minimum_0] [smallint] NULL,
	[minimum_1] [smallint] NULL,
	[minimum_2] [smallint] NULL,
	[minimum_3] [smallint] NULL,
	[minimum_4] [smallint] NULL,
	[minimum_5] [smallint] NULL,
	[minimum_6] [smallint] NULL,
	[minimum_7] [smallint] NULL,
	[minimum_8] [smallint] NULL,
	[minimum_9] [smallint] NULL,
	[minimum_10] [smallint] NULL,
	[minimum_11] [smallint] NULL,
	[minimum_12] [smallint] NULL,
	[fullTime_0] [int] NULL CONSTRAINT [DF_Employer_fullTime_00]  DEFAULT ((0)),
	[fullTime_1] [int] NULL CONSTRAINT [DF_Employer_fullTime_01]  DEFAULT ((0)),
	[fullTime_2] [int] NULL CONSTRAINT [DF_Employer_fullTime_02]  DEFAULT ((0)),
	[fullTime_3] [int] NULL CONSTRAINT [DF_Employer_fullTime_03]  DEFAULT ((0)),
	[fullTime_4] [int] NULL CONSTRAINT [DF_Employer_fullTime_04]  DEFAULT ((0)),
	[fullTime_5] [int] NULL CONSTRAINT [DF_Employer_fullTime_05]  DEFAULT ((0)),
	[fullTime_6] [int] NULL CONSTRAINT [DF_Employer_fullTime_06]  DEFAULT ((0)),
	[fullTime_7] [int] NULL CONSTRAINT [DF_Employer_fullTime_07]  DEFAULT ((0)),
	[fullTime_8] [int] NULL CONSTRAINT [DF_Employer_fullTime_08]  DEFAULT ((0)),
	[fullTime_9] [int] NULL CONSTRAINT [DF_Employer_fullTime_09]  DEFAULT ((0)),
	[fullTime_10] [int] NULL CONSTRAINT [DF_Employer_fullTime_10]  DEFAULT ((0)),
	[fullTime_11] [int] NULL CONSTRAINT [DF_Employer_fullTime_11]  DEFAULT ((0)),
	[fullTime_12] [int] NULL CONSTRAINT [DF_Employer_fullTime_12]  DEFAULT ((0)),
	[total_0] [int] NULL CONSTRAINT [DF_Employer_total_00]  DEFAULT ((0)),
	[total_1] [int] NULL CONSTRAINT [DF_Employer_total_01]  DEFAULT ((0)),
	[total_2] [int] NULL CONSTRAINT [DF_Employer_total_02]  DEFAULT ((0)),
	[total_3] [int] NULL CONSTRAINT [DF_Employer_total_03]  DEFAULT ((0)),
	[total_4] [int] NULL CONSTRAINT [DF_Employer_total_04]  DEFAULT ((0)),
	[total_5] [int] NULL CONSTRAINT [DF_Employer_total_05]  DEFAULT ((0)),
	[total_6] [int] NULL CONSTRAINT [DF_Employer_total_06]  DEFAULT ((0)),
	[total_7] [int] NULL CONSTRAINT [DF_Employer_total_07]  DEFAULT ((0)),
	[total_8] [int] NULL CONSTRAINT [DF_Employer_total_08]  DEFAULT ((0)),
	[total_9] [int] NULL CONSTRAINT [DF_Employer_total_09]  DEFAULT ((0)),
	[total_10] [int] NULL CONSTRAINT [DF_Employer_total_10]  DEFAULT ((0)),
	[total_11] [int] NULL CONSTRAINT [DF_Employer_total_11]  DEFAULT ((0)),
	[total_12] [int] NULL CONSTRAINT [DF_Employer_total_12]  DEFAULT ((0)),
	[group_0] [smallint] NULL CONSTRAINT [DF_Employer_group_00]  DEFAULT ((0)),
	[group_1] [smallint] NULL CONSTRAINT [DF_Employer_group_01]  DEFAULT ((0)),
	[group_2] [smallint] NULL CONSTRAINT [DF_Employer_group_02]  DEFAULT ((0)),
	[group_3] [smallint] NULL CONSTRAINT [DF_Employer_group_03]  DEFAULT ((0)),
	[group_4] [smallint] NULL CONSTRAINT [DF_Employer_group_04]  DEFAULT ((0)),
	[group_5] [smallint] NULL CONSTRAINT [DF_Employer_group_05]  DEFAULT ((0)),
	[group_6] [smallint] NULL CONSTRAINT [DF_Employer_group_06]  DEFAULT ((0)),
	[group_7] [smallint] NULL CONSTRAINT [DF_Employer_group_07]  DEFAULT ((0)),
	[group_8] [smallint] NULL CONSTRAINT [DF_Employer_group_08]  DEFAULT ((0)),
	[group_9] [smallint] NULL CONSTRAINT [DF_Employer_group_09]  DEFAULT ((0)),
	[group_10] [smallint] NULL CONSTRAINT [DF_Employer_group_10]  DEFAULT ((0)),
	[group_11] [smallint] NULL CONSTRAINT [DF_Employer_group_11]  DEFAULT ((0)),
	[group_12] [smallint] NULL CONSTRAINT [DF_Employer_group_12]  DEFAULT ((0)),
	[S4980H_0] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_00]  DEFAULT (' '),
	[S4980H_1] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_01]  DEFAULT (' '),
	[S4980H_2] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_02]  DEFAULT (' '),
	[S4980H_3] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_03]  DEFAULT (' '),
	[S4980H_4] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_04]  DEFAULT (' '),
	[S4980H_5] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_05]  DEFAULT (' '),
	[S4980H_6] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_06]  DEFAULT (' '),
	[S4980H_7] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_07]  DEFAULT (' '),
	[S4980H_8] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_08]  DEFAULT (' '),
	[S4980H_9] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_09]  DEFAULT (' '),
	[S4980H_10] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_10]  DEFAULT (' '),
	[S4980H_11] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_11]  DEFAULT (' '),
	[S4980H_12] [varchar](1) NULL CONSTRAINT [DF_Employer_S4980H_12]  DEFAULT (' '),
	[disableChanges] [smallint] NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployerPlan]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployerPlan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employerId] [int] NULL,
	[name] [varchar](70) NULL,
	[medicalPlan] [smallint] NULL,
	[bandingType] [varchar](50) NULL,
	[offeredSpouse] [smallint] NULL,
	[offeredDependents] [smallint] NULL,
	[waitingDays] [int] NULL,
	[eligibile1stOfMonth] [smallint] NULL,
	[fundingType] [varchar](50) NULL,
	[planRenewal] [int] NULL,
	[planTermTermination] [smallint] NULL,
	[minimumValue] [smallint] NULL,
	[code1A] [smallint] NULL,
	[code1B] [smallint] NULL,
	[code1C] [smallint] NULL,
	[code1D] [smallint] NULL,
	[code1E] [smallint] NULL,
	[code1F] [smallint] NULL,
	[code1G] [smallint] NULL,
	[code1H] [smallint] NULL,
	[code1I] [smallint] NULL,
	[code2A] [smallint] NULL,
	[code2B] [smallint] NULL,
	[code2C] [smallint] NULL,
	[code2D] [smallint] NULL,
	[code2E] [smallint] NULL,
	[code2F] [smallint] NULL,
	[code2G] [smallint] NULL,
	[code2H] [smallint] NULL,
	[code2I] [smallint] NULL,
 CONSTRAINT [PK_EmployerPlan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Note]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Note](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employerId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[note] [varchar](1000) NULL,
	[date] [timestamp] NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Premium]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Premium](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bandingName] [varchar](20) NOT NULL,
	[EmployerPlanId] [int] NOT NULL,
	[bandingValueStart] [decimal](6, 2) NULL,
	[bandingValueEnd] [decimal](6, 2) NULL,
	[amount] [decimal](6, 2) NULL,
 CONSTRAINT [PK_Premium] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Team]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Team](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[teamId] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[privilege] [varchar](5) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CoveredIndividual]  WITH CHECK ADD  CONSTRAINT [FK_CoveredIndividual_EmployeeCode] FOREIGN KEY([employeeCodeId])
REFERENCES [dbo].[EmployeeCode] ([id])
GO
ALTER TABLE [dbo].[CoveredIndividual] CHECK CONSTRAINT [FK_CoveredIndividual_EmployeeCode]
GO
ALTER TABLE [dbo].[EmployeeCode]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeCode_Employee] FOREIGN KEY([employeeId])
REFERENCES [dbo].[Employee] ([id])
GO
ALTER TABLE [dbo].[EmployeeCode] CHECK CONSTRAINT [FK_EmployeeCode_Employee]
GO
ALTER TABLE [dbo].[EmployeeCode]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeCode_Employer] FOREIGN KEY([employerId])
REFERENCES [dbo].[Employer] ([id])
GO
ALTER TABLE [dbo].[EmployeeCode] CHECK CONSTRAINT [FK_EmployeeCode_Employer]
GO
ALTER TABLE [dbo].[EmployeeEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeEnrollment_EmployeeCode] FOREIGN KEY([employeeCodeId])
REFERENCES [dbo].[EmployeeCode] ([id])
GO
ALTER TABLE [dbo].[EmployeeEnrollment] CHECK CONSTRAINT [FK_EmployeeEnrollment_EmployeeCode]
GO
ALTER TABLE [dbo].[EmployeeEnrollment]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeEnrollment_EmployerPlan] FOREIGN KEY([planId])
REFERENCES [dbo].[EmployerPlan] ([id])
GO
ALTER TABLE [dbo].[EmployeeEnrollment] CHECK CONSTRAINT [FK_EmployeeEnrollment_EmployerPlan]
GO
ALTER TABLE [dbo].[EmployeeHireSpan]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeHireSpan_EmployeeCode] FOREIGN KEY([employeeCodeId])
REFERENCES [dbo].[EmployeeCode] ([id])
GO
ALTER TABLE [dbo].[EmployeeHireSpan] CHECK CONSTRAINT [FK_EmployeeHireSpan_EmployeeCode]
GO
ALTER TABLE [dbo].[EmployeeStatus]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeStatus_EmployeeCode] FOREIGN KEY([employeeCodeId])
REFERENCES [dbo].[EmployeeCode] ([id])
GO
ALTER TABLE [dbo].[EmployeeStatus] CHECK CONSTRAINT [FK_EmployeeStatus_EmployeeCode]
GO
ALTER TABLE [dbo].[Employer]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Employer] FOREIGN KEY([companyId])
REFERENCES [dbo].[Employer] ([id])
GO
ALTER TABLE [dbo].[Employer] CHECK CONSTRAINT [FK_Employer_Employer]
GO
ALTER TABLE [dbo].[EmployerPlan]  WITH CHECK ADD  CONSTRAINT [FK_EmployerPlan_Employer] FOREIGN KEY([employerId])
REFERENCES [dbo].[Employer] ([id])
GO
ALTER TABLE [dbo].[EmployerPlan] CHECK CONSTRAINT [FK_EmployerPlan_Employer]
GO
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_Employer] FOREIGN KEY([employerId])
REFERENCES [dbo].[Employer] ([id])
GO
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_Employer]
GO
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_User]
GO
ALTER TABLE [dbo].[Premium]  WITH CHECK ADD  CONSTRAINT [FK_Premium_EmployerPlan] FOREIGN KEY([EmployerPlanId])
REFERENCES [dbo].[EmployerPlan] ([id])
GO
ALTER TABLE [dbo].[Premium] CHECK CONSTRAINT [FK_Premium_EmployerPlan]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Team] FOREIGN KEY([teamId])
REFERENCES [dbo].[Team] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Team]
GO
/****** Object:  StoredProcedure [dbo].[usp_CompanyAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_CompanyAdd]
(@taxid [varchar](10)
,@name [varchar](70)=null
,@isForeignAddress [smallint]=0
,@address [varchar](150)=null
,@address2 [varchar](150)=NULL
,@city [varchar](100)=NULL
,@state [varchar](50)=NULL
,@zip [varchar](50) =NULL
,@country [varchar](100)= NULL
,@phoneNumber [varchar](50)= NULL
,@contactName [varchar](100)= NULL
,@signTitle [varchar](100)= NULL
,@signDate [date]= NULL
,@originCode [varchar](1)= NULL
,@SHOPIdentifier [varchar](50)= NULL
,@totalNumberEE [int] =NULL
,@totalNumberForms [int] =NULL
,@eligibility_A [int] =NULL
,@eligibility_B [int]= NULL
,@eligibility_C [int]= NULL
,@eligibility_D [int]= NULL
,@lockEmployer [smallint]=0
,@formType [varchar](50)= NULL
,@isCompany [smallint]=1
,@status [varchar](50)= NULL
,@CompanyId [int] =NULL
,@teamId [int] =null
,@lockCompany [smallint]=0
,@lastEdit [date] = null
,@filingYear [int] =NULL
,@lastUploadDate [date] =null
)
as
/*
EXEC [usp_CompanyAdd]
@taxid =90559780
,@name ='Bobby Inc,'
,@isForeignAddress =0
,@address [varchar](150)=null
,@address2 [varchar](150)=NULL
,@city [varchar](100)=NULL
,@state [varchar](50)=NULL
,@zip [varchar](50) =NULL
,@country [varchar](100)= NULL
,@phoneNumber [varchar](50)= NULL
,@contactName [varchar](100)= NULL
,@signTitle [varchar](100)= NULL
,@signDate [date]= NULL
,@originCode [varchar](1)= NULL
,@SHOPIdentifier [varchar](50)= NULL
,@totalNumberEE [int] =NULL
,@totalNumberForms [int] =NULL
,@eligibility_A [int] =NULL
,@eligibility_B [int]= NULL
,@eligibility_C [int]= NULL
,@eligibility_D [int]= NULL
,@lockEmployer [smallint]=0
,@formType [varchar](50)= NULL
,@isCompany [smallint]=1
,@status [varchar](50)= NULL
,@CompanyId [int] NULL
,@teamId [int] =null
*/
set nocount on;
IF NOT EXISTS (SELECT 1 from [dbo].[Employer] where [taxid]=@taxid)
	BEGIN
		INSERT INTO [dbo].[Employer]
			([taxid]
			,[name]
			,[isForeignAddress]
			,[address]
			,[address2]
			,[city]
			,[state]
			,[zip]
			,[country]
			,[phoneNumber]
			,[contactName]
			,[signTitle]
			,[signDate]
			,[originCode]
			,[SHOPIdentifier]
			,[totalNumberEE]
			,[totalNumberForms]
			,[eligibility_A]
			,[eligibility_B]
			,[eligibility_C]
			,[eligibility_D]
			,[lockEmployer]
			,[formType]
			,[isCompany]
			,[status]
			,[CompanyId]
			,[teamId]
			,[lockCompany]
			,[lastEdit]
			,[filingYear]
			,[lastUploadDate])
	SELECT      
			@taxid
			,@name
			,@isForeignAddress
			,@address
			,@address2
			,@city
			,@state
			,@zip
			,@country
			,@phoneNumber
			,@contactName
			,@signTitle
			,@signDate
			,@originCode
			,@SHOPIdentifier
			,@totalNumberEE
			,@totalNumberForms
			,@eligibility_A
			,@eligibility_B
			,@eligibility_C
			,@eligibility_D
			,@lockEmployer
			,@formType
			,@isCompany
			,@status
			,@CompanyId
			,@teamId
			,@lockCompany 
			,getdate() as lastEdit
			,@filingYear
			,getdate() as lastUploadDate
	END
 ELSE
	SELECT 'Company TaxID: '+ cast (@taxID as varchar) + ' already exists. Please enter a unique Complany Tax ID.' 
return



GO
/****** Object:  StoredProcedure [dbo].[usp_CompanyDelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_CompanyDelete]
(@taxid [varchar](10)
)
as
/*
EXEC [usp_CompanyDelete] @taxid =90559780
*/
set nocount on;
delete from [dbo].[Employer] where [taxid]=@taxid and isCompany=1
return



GO
/****** Object:  StoredProcedure [dbo].[usp_CompanyModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_CompanyModify]
(@taxid [varchar](10)
,@name [varchar](70)=null
,@isForeignAddress [smallint]=0
,@address [varchar](150)=null
,@address2 [varchar](150)=NULL
,@city [varchar](100)=NULL
,@state [varchar](50)=NULL
,@zip [varchar](50) =NULL
,@country [varchar](100)= NULL
,@phoneNumber [varchar](50)= NULL
,@contactName [varchar](100)= NULL
,@signTitle [varchar](100)= NULL
,@signDate [date]= NULL
,@originCode [varchar](1)= NULL
,@SHOPIdentifier [varchar](50)= NULL
,@totalNumberEE [int] =NULL
,@totalNumberForms [int] =NULL
,@eligibility_A [int] =NULL
,@eligibility_B [int]= NULL
,@eligibility_C [int]= NULL
,@eligibility_D [int]= NULL
,@lockEmployer [smallint]=0
,@formType [varchar](50)= NULL
,@isCompany [smallint]=1
,@status [varchar](50)= NULL
,@CompanyId [int] =NULL
,@teamId [int] =null
,@lockCompany [smallint]=0
,@lastEdit [date] = null
,@filingYear [int] =NULL
,@lastUploadDate [date] =null
)
as
/*
EXEC [usp_CompanyModify]
@taxid =90559780
,@name ='Bobby Inc,'
,@isForeignAddress =1
,@address ='addresss'
,@address2 =NULL
,@city =NULL
,@state=NULL
,@zip  =NULL
,@country = NULL
,@phoneNumber= NULL
,@contactName = NULL
,@signTitle = NULL
,@signDate = NULL
,@originCode = NULL
,@SHOPIdentifier = NULL
,@totalNumberEE  =NULL
,@totalNumberForms  =NULL
,@eligibility_A  =NULL
,@eligibility_B= NULL
,@eligibility_C = NULL
,@eligibility_D = NULL
,@lockEmployer=0
,@formType = NULL
,@isCompany =1
,@status = NULL
,@CompanyId  NULL
,@teamId  =null
*/
set nocount on;
IF NOT EXISTS (SELECT 1 from [dbo].[Employer] where [taxid]=@taxid)
	BEGIN
		INSERT INTO [dbo].[Employer]
			([taxid]
			,[name]
			,[isForeignAddress]
			,[address]
			,[address2]
			,[city]
			,[state]
			,[zip]
			,[country]
			,[phoneNumber]
			,[contactName]
			,[signTitle]
			,[signDate]
			,[originCode]
			,[SHOPIdentifier]
			,[totalNumberEE]
			,[totalNumberForms]
			,[eligibility_A]
			,[eligibility_B]
			,[eligibility_C]
			,[eligibility_D]
			,[lockEmployer]
			,[formType]
			,[isCompany]
			,[status]
			,[CompanyId]
			,[teamId]
			,[lockCompany]
			,[lastEdit]
			,[filingYear]
			,[lastUploadDate])
	SELECT      
			@taxid
			,@name
			,@isForeignAddress
			,@address
			,@address2
			,@city
			,@state
			,@zip
			,@country
			,@phoneNumber
			,@contactName
			,@signTitle
			,@signDate
			,@originCode
			,@SHOPIdentifier
			,@totalNumberEE
			,@totalNumberForms
			,@eligibility_A
			,@eligibility_B
			,@eligibility_C
			,@eligibility_D
			,@lockEmployer
			,@formType
			,@isCompany
			,@status
			,@CompanyId
			,@teamId
			,@lockCompany 
			,getdate() as lastEdit
			,@filingYear
			,getdate() as lastUploadDate
	END
 ELSE
	UPDATE [dbo].[Employer] SET 
			name=@name
			,isForeignAddress=@isForeignAddress
			,[address]=@address
			,address2=@address2
			,city=@city
			,[state]=@state
			,zip=@zip
			,country=@country
			,phoneNumber=@phoneNumber
			,contactName=@contactName
			,signTitle=@signTitle
			,signDate=@signDate
			,originCode=@originCode
			,SHOPIdentifier=@SHOPIdentifier
			,totalNumberEE=@totalNumberEE
			,totalNumberForms=@totalNumberForms
			,eligibility_A=@eligibility_A
			,eligibility_B=@eligibility_B
			,eligibility_C=@eligibility_C
			,eligibility_D=@eligibility_D
			,lockEmployer=@lockEmployer
			,formType=@formType
			,isCompany=@isCompany
			,[status]=@status
			,CompanyId=@CompanyId
			,teamId=@teamId
			,lockCompany=@lockCompany 
			,lastEdit=getdate()
			,filingYear=@filingYear
			,lastUploadDate=getdate()
	WHERE [taxid]=@taxid
return

GO
/****** Object:  StoredProcedure [dbo].[usp_CompanySelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_CompanySelect](
@CompanyTaxID varchar(10) = NULL
)
AS
BEGIN
	-- EXEC [usp_CompanySelect] 90559780
	SET NOCOUNT ON;

	SELECT [id]
	,[taxid]
	,[name]
	,[isForeignAddress]
	,[address]
	,[address2]
	,[city]
	,[state]
	,[zip]
	,[country]
	,[phoneNumber]
	,[contactName]
	,[signTitle]
	,[signDate]
	,[originCode]
	,[SHOPIdentifier]
	,[totalNumberEE]
	,[totalNumberForms]
	,[eligibility_A]
	,[eligibility_B]
	,[eligibility_C]
	,[eligibility_D]
	,[lockEmployer]
	,[formType]
	,[isCompany]
	,[status]
	,[CompanyId]
	,[teamId]
	,[lockCompany]
	,[lastEdit]
	,[filingYear]
	,[lastUploadDate]
	FROM [dbo].[Employer]
	WHERE (1=1) 
	and isCompany = 1
	AND (@CompanyTaxID IS NULL OR  [taxid] = @CompanyTaxID)
	ORDER BY name;
END

GO
/****** Object:  StoredProcedure [dbo].[usp_CoveredIndividualAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_CoveredIndividualAdd](
@EmployerTaxId varchar(10) = NULL
,@ssnEmployee varchar(50) = NULL
,@firstName varchar(100) = NULL
,@middleName varchar(100) = NULL
,@lastName varchar(100) = NULL
,@ssn varchar(9) = NULL
,@birthday date = NULL
,@allCoverage smallint = NULL
,@janCoverage smallint = NULL
,@febCoverage smallint = NULL
,@marCoverage smallint = NULL
,@aprCoverage smallint = NULL
,@mayCoverage smallint = NULL
,@junCoverage smallint = NULL
,@julCoverage smallint = NULL
,@augCoverage smallint = NULL
,@sepCoverage smallint = NULL
,@octCoverage smallint = NULL
,@novCoverage smallint = NULL
,@decCoverage smallint = NULL
,@disableCoding smallint = NULL
)
AS
SET NOCOUNT ON;

DECLARE @employeeCodeId INT = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssnEmployee
IF @employeeCodeId IS NULL
	RETURN 

IF NOT EXISTS (SELECT 1 from [dbo].[CoveredIndividual] where [employeeCodeId]=@employeeCodeId AND [ssn]=@ssn)
	BEGIN
		INSERT INTO [dbo].[CoveredIndividual]
			([employeeCodeId]
			,[firstName]
			,[middleName]
			,[lastName]
			,[ssn]
			,[birthday]
			,[allCoverage]
			,[janCoverage]
			,[febCoverage]
			,[marCoverage]
			,[aprCoverage]
			,[mayCoverage]
			,[junCoverage]
			,[julCoverage]
			,[augCoverage]
			,[sepCoverage]
			,[octCoverage]
			,[novCoverage]
			,[decCoverage]
			,[disableCoding])
		VALUES
			(@employeeCodeId
			,@firstName
			,@middleName
			,@lastName
			,@ssn
			,@birthday
			,@allCoverage
			,@janCoverage
			,@febCoverage
			,@marCoverage
			,@aprCoverage
			,@mayCoverage
			,@junCoverage
			,@julCoverage
			,@augCoverage
			,@sepCoverage
			,@octCoverage
			,@novCoverage
			,@decCoverage
			,@disableCoding)
	END
ELSE
	SELECT 'Employee Dependent: '+ @firstName + ' ' + @lastName + ' already exists.' 

RETURN

GO
/****** Object:  StoredProcedure [dbo].[usp_CoveredIndividualDelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_CoveredIndividualDelete] (
@EmployerTaxId varchar(10)
,@ssnEmployee varchar(50)
,@ssn varchar(50)
)
AS
SET NOCOUNT ON;

DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssnEmployee
IF @employeeCodeId IS NULL
	  RETURN

DELETE FROM [dbo].[CoveredIndividual] WHERE [employeeCodeId] = @employeeCodeId AND [ssn] = @ssn

return
GO
/****** Object:  StoredProcedure [dbo].[usp_CoveredIndividualModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_CoveredIndividualModify](
@EmployerTaxId varchar(10) = NULL
,@ssnEmployee varchar(50) = NULL
,@firstName varchar(100) = NULL
,@middleName varchar(100) = NULL
,@lastName varchar(100) = NULL
,@ssn varchar(9) = NULL
,@birthday date = NULL
,@allCoverage smallint = NULL
,@janCoverage smallint = NULL
,@febCoverage smallint = NULL
,@marCoverage smallint = NULL
,@aprCoverage smallint = NULL
,@mayCoverage smallint = NULL
,@junCoverage smallint = NULL
,@julCoverage smallint = NULL
,@augCoverage smallint = NULL
,@sepCoverage smallint = NULL
,@octCoverage smallint = NULL
,@novCoverage smallint = NULL
,@decCoverage smallint = NULL
,@disableCoding smallint = NULL
)
AS
SET NOCOUNT ON;

DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssnEmployee
IF @employeeCodeId IS NULL
	RETURN

IF NOT EXISTS (SELECT 1 from [dbo].[CoveredIndividual] where [employeeCodeId] = @employeeCodeId AND [ssn]=@ssn)
	BEGIN
		INSERT INTO [dbo].[CoveredIndividual]
			([employeeCodeId]
			,[firstName]
			,[middleName]
			,[lastName]
			,[ssn]
			,[birthday]
			,[allCoverage]
			,[janCoverage]
			,[febCoverage]
			,[marCoverage]
			,[aprCoverage]
			,[mayCoverage]
			,[junCoverage]
			,[julCoverage]
			,[augCoverage]
			,[sepCoverage]
			,[octCoverage]
			,[novCoverage]
			,[decCoverage]
			,[disableCoding])
		VALUES
			(@employeeCodeId
			,@firstName
			,@middleName
			,@lastName
			,@ssn
			,@birthday
			,@allCoverage
			,@janCoverage
			,@febCoverage
			,@marCoverage
			,@aprCoverage
			,@mayCoverage
			,@junCoverage
			,@julCoverage
			,@augCoverage
			,@sepCoverage
			,@octCoverage
			,@novCoverage
			,@decCoverage
			,@disableCoding)
	END
ELSE
	UPDATE [dbo].[CoveredIndividual] SET
		[employeeCodeId] = @employeeCodeId
		,[firstName] = @firstName
		,[middleName] = @middleName
		,[lastName] = @lastName
		,[ssn] = @ssn
		,[birthday] = @birthday
		,[allCoverage] = @allCoverage
		,[janCoverage] = @janCoverage
		,[febCoverage] = @febCoverage
		,[marCoverage] = @marCoverage
		,[aprCoverage] = @aprCoverage
		,[mayCoverage] = @mayCoverage
		,[junCoverage] = @junCoverage
		,[julCoverage] = @julCoverage
		,[augCoverage] = @augCoverage
		,[sepCoverage] = @sepCoverage
		,[octCoverage] = @octCoverage
		,[novCoverage] = @novCoverage
		,[decCoverage] = @decCoverage
		,[disableCoding] = @disableCoding
	WHERE [employeeCodeId] = @employeeCodeId AND [ssn] = @ssn

RETURN


GO
/****** Object:  StoredProcedure [dbo].[usp_CoveredIndividualSelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_CoveredIndividualSelect](
@CompanyTaxId varchar(10) = NULL
,@EmployerTaxId varchar(10) = NULL
,@ssnEmployee varchar(50) = NULL
,@ssn varchar(50) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId = [dbo].[usp_GetEmployerId] @EmployerTaxId

DECLARE @EmployeeId INT = NULL
EXEC @EmployeeId = [dbo].[usp_GetEmployeeId] @ssnEmployee

Declare @CompanyId INT = NULL
EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId

SELECT id INTO #t1 FROM [dbo].[Employer] 
WHERE [companyId] = @CompanyId 
OR [id] = @CompanyId OR [id] = @EmployerId

SELECT ec.id INTO #t2 FROM [dbo].[EmployeeCode] AS ec
INNER JOIN #t1 AS temp ON ec.employerId = temp.id
WHERE (@EmployeeId = 0 OR employeeId=@EmployeeId)

SELECT ci.[id]
    ,[employeeCodeId]
    ,[firstName]
    ,[middleName]
    ,[lastName]
    ,[ssn]
    ,[birthday]
    ,[allCoverage]
    ,[janCoverage]
    ,[febCoverage]
    ,[marCoverage]
    ,[aprCoverage]
    ,[mayCoverage]
    ,[junCoverage]
    ,[julCoverage]
    ,[augCoverage]
    ,[sepCoverage]
    ,[octCoverage]
    ,[novCoverage]
    ,[decCoverage]
    ,[disableCoding]
FROM [dbo].[CoveredIndividual] AS ci
INNER JOIN #t2 AS temp ON temp.id = ci.employeeCodeId
WHERE (@ssn is NULL OR [ssn] = @ssn)

DROP TABLE #t1
DROP TABLE #t2

RETURN
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_EmployeeAdd](
@firstName varchar(100) = NULL
,@middleName varchar(100) = NULL
,@lastName varchar(100) = NULL
,@ssn varchar(50) = NULL
,@birthday date = NULL
,@address varchar(150) = NULL
,@address2 varchar(150) = NULL
,@city varchar(100) = NULL
,@state varchar(50) = NULL
,@zip varchar(50) = NULL
,@country varchar(100) = NULL
,@email varchar(150) = NULL
)
as
SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 from [dbo].[Employee] where [ssn]=@ssn)
	BEGIN
		INSERT INTO [dbo].[Employee]
				   ([firstName]
				   ,[middleName]
				   ,[lastName]
				   ,[ssn]
				   ,[birthday]
				   ,[address]
				   ,[address2]
				   ,[city]
				   ,[state]
				   ,[zip]
				   ,[country]
				   ,[email])
			 VALUES
				   (@firstName 
					,@middleName
					,@lastName
					,@ssn
					,@birthday
					,@address
					,@address2
					,@city
					,@state
					,@zip
					,@country
					,@email)
	END
ELSE
	SELECT 'Employee Social: '+ @ssn + ' already exists. Please enter a unique Employee Social.' 

return
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeADelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_EmployeeADelete](
@ssn varchar(10))
as

SET NOCOUNT ON;
DELETE FROM [dbo].[Employee] WHERE [ssn] = @ssn
return
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeAModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_EmployeeAModify](
@firstName varchar(100) = NULL
,@middleName varchar(100) = NULL
,@lastName varchar(100) = NULL
,@ssn varchar(50) = NULL
,@birthday date = NULL
,@address varchar(150) = NULL
,@address2 varchar(150) = NULL
,@city varchar(100) = NULL
,@state varchar(50) = NULL
,@zip varchar(50) = NULL
,@country varchar(100) = NULL
,@email varchar(150) = NULL
)
as
SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 from [dbo].[Employee] where [ssn]=@ssn)
	BEGIN
		INSERT INTO [dbo].[Employee]
			([firstName]
			,[middleName]
			,[lastName]
			,[ssn]
			,[birthday]
			,[address]
			,[address2]
			,[city]
			,[state]
			,[zip]
			,[country]
			,[email])
		VALUES
			(@firstName 
			,@middleName
			,@lastName
			,@ssn
			,@birthday
			,@address
			,@address2
			,@city
			,@state
			,@zip
			,@country
			,@email)
	END
ELSE
	UPDATE [dbo].[Employee] SET
		[firstName] = @firstName
		,[middleName] = @middleName
		,[lastName] = @lastName
		,[ssn] = @ssn
		,[birthday] = @birthday
		,[address] = @address
		,[address2] = @address2
		,[city] = @city
		,[state] = @state
		,[zip] = @zip
		,[country] = @country
		,[email] = @email
	WHERE [ssn] = @ssn
return
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeASelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_EmployeeASelect](
@CompanyTaxId varchar(10) = NULL
,@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
)
as
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId = [dbo].[usp_GetEmployerId] @EmployerTaxId

Declare @CompanyId INT = NULL
EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId

SELECT ee.[id]
	,ec.id AS employeeCodeId
	,er.[name]
    ,ee.[firstName]
    ,ee.[middleName]
    ,ee.[lastName]
    ,ee.[ssn]
    ,ee.[birthday]
    ,ee.[address]
    ,ee.[address2]
    ,ee.[city]
    ,ee.[state]
    ,ee.[zip]
    ,ee.[country]
    ,ee.[email]
FROM [dbo].[Employee] AS ee
INNER JOIN [dbo].[EmployeeCode] AS ec ON ee.id = ec.employeeId 
INNER JOIN [dbo].[Employer] AS er ON ec.employerId = er.id
WHERE (@ssn IS NULL OR  [ssn] = @ssn)
AND ([companyId] = @CompanyId OR er.[id] = @CompanyId OR er.[id] = @EmployerId)

RETURN
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeCodeAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_EmployeeCodeAdd](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@filingYear int = NULL
,@hourlyAmount decimal(6, 2) = NULL
,@salaryAmount decimal(6, 2) = NULL
,@ALLM_COC varchar(2) = NULL
,@JAN_COC varchar(2) = NULL
,@FEB_COC varchar(2) = NULL
,@MAR_COC varchar(2) = NULL
,@APR_COC varchar(2) = NULL
,@MAY_COC varchar(2) = NULL
,@JUN_COC varchar(2) = NULL
,@JUL_COC varchar(2) = NULL
,@AUG_COC varchar(2) = NULL
,@SEP_COC varchar(2) = NULL
,@OCT_COC varchar(2) = NULL
,@NOV_COC varchar(2) = NULL
,@DEC_COC varchar(2) = NULL
,@ALLM_LCMP money = NULL
,@JAN_LCMP money = NULL
,@FEB_LCMP money = NULL
,@MAR_LCMP money = NULL
,@APR_LCMP money = NULL
,@MAY_LCMP money = NULL
,@JUN_LCMP money = NULL
,@JUL_LCMP money = NULL
,@AUG_LCMP money = NULL
,@SEP_LCMP money = NULL
,@OCT_LCMP money = NULL
,@NOV_LCMP money = NULL
,@DEC_LCMP money = NULL
,@ALLM_SHC varchar(2) = NULL
,@JAN_SHC varchar(2) = NULL
,@FEB_SHC varchar(2) = NULL
,@MAR_SHC varchar(2) = NULL
,@APR_SHC varchar(2) = NULL
,@MAY_SHC varchar(2) = NULL
,@JUN_SHC varchar(2) = NULL
,@JUL_SHC varchar(2) = NULL
,@AUG_SHC varchar(2) = NULL
,@SEP_SHC varchar(2) = NULL
,@OCT_SHC varchar(2) = NULL
,@NOV_SHC varchar(2) = NULL
,@DEC_SHC varchar(2) = NULL
,@isDependent smallint = NULL
,@flaggedEmployee smallint = NULL
,@disableCoding smallint = NULL
)
as
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId = [dbo].[usp_GetEmployerId] @EmployerTaxId
IF @EmployerId IS NULL
	  RETURN

DECLARE @EmployeeId INT = NULL
DECLARE @EmployeeName varchar(100) = NULL
EXEC @EmployeeId = [dbo].[usp_GetEmployeeId] @ssn
IF @EmployeeId IS NULL
	  RETURN
SELECT @EmployeeName = firstName + ' ' + lastName FROM [dbo].[Employee] WHERE id=@EmployeeId


IF NOT EXISTS (SELECT 1 from [dbo].[EmployeeCode] where [employeeId]=@employeeId and [employerId]=@EmployerId)
	BEGIN
		INSERT INTO [dbo].[EmployeeCode]
			([employeeId]
			,[employerId]
			,[filingYear]
			,[hourlyAmount]
			,[salaryAmount]
			,[ALLM_COC]
			,[JAN_COC]
			,[FEB_COC]
			,[MAR_COC]
			,[APR_COC]
			,[MAY_COC]
			,[JUN_COC]
			,[JUL_COC]
			,[AUG_COC]
			,[SEP_COC]
			,[OCT_COC]
			,[NOV_COC]
			,[DEC_COC]
			,[ALLM_LCMP]
			,[JAN_LCMP]
			,[FEB_LCMP]
			,[MAR_LCMP]
			,[APR_LCMP]
			,[MAY_LCMP]
			,[JUN_LCMP]
			,[JUL_LCMP]
			,[AUG_LCMP]
			,[SEP_LCMP]
			,[OCT_LCMP]
			,[NOV_LCMP]
			,[DEC_LCMP]
			,[ALLM_SHC]
			,[JAN_SHC]
			,[FEB_SHC]
			,[MAR_SHC]
			,[APR_SHC]
			,[MAY_SHC]
			,[JUN_SHC]
			,[JUL_SHC]
			,[AUG_SHC]
			,[SEP_SHC]
			,[OCT_SHC]
			,[NOV_SHC]
			,[DEC_SHC]
			,[isDependent]
			,[flaggedEmployee]
			,[disableCoding])
		VALUES
			(@EmployeeId
			,@EmployerId
			,@filingYear
			,@hourlyAmount
			,@salaryAmount
			,@ALLM_COC
			,@JAN_COC
			,@FEB_COC
			,@MAR_COC
			,@APR_COC
			,@MAY_COC
			,@JUN_COC
			,@JUL_COC
			,@AUG_COC
			,@SEP_COC
			,@OCT_COC
			,@NOV_COC
			,@DEC_COC
			,@ALLM_LCMP
			,@JAN_LCMP
			,@FEB_LCMP
			,@MAR_LCMP
			,@APR_LCMP
			,@MAY_LCMP
			,@JUN_LCMP
			,@JUL_LCMP
			,@AUG_LCMP
			,@SEP_LCMP
			,@OCT_LCMP
			,@NOV_LCMP
			,@DEC_LCMP
			,@ALLM_SHC
			,@JAN_SHC
			,@FEB_SHC
			,@MAR_SHC
			,@APR_SHC
			,@MAY_SHC
			,@JUN_SHC
			,@JUL_SHC
			,@AUG_SHC
			,@SEP_SHC
			,@OCT_SHC
			,@NOV_SHC
			,@DEC_SHC
			,@isDependent
			,@flaggedEmployee
			,@disableCoding)
	END
ELSE
	SELECT 'Employee Code for: '+ @EmployeeName + ' already exists.' 
return
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeCodeDelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_EmployeeCodeDelete](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
)
as
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId = [dbo].[usp_GetEmployerId] @EmployerTaxId
IF @EmployerId IS NULL
	  RETURN

DECLARE @EmployeeId INT = NULL
EXEC @EmployeeId = [dbo].[usp_GetEmployeeId] @ssn
IF @EmployeeId IS NULL
	  RETURN

DELETE FROM [dbo].[EmployeeCode] WHERE [employeeId] = @EmployeeId AND [employerId] = @EmployerId

return
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeCodeModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_EmployeeCodeModify](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@filingYear int = NULL
,@hourlyAmount decimal(6, 2) = NULL
,@salaryAmount decimal(6, 2) = NULL
,@ALLM_COC varchar(2) = NULL
,@JAN_COC varchar(2) = NULL
,@FEB_COC varchar(2) = NULL
,@MAR_COC varchar(2) = NULL
,@APR_COC varchar(2) = NULL
,@MAY_COC varchar(2) = NULL
,@JUN_COC varchar(2) = NULL
,@JUL_COC varchar(2) = NULL
,@AUG_COC varchar(2) = NULL
,@SEP_COC varchar(2) = NULL
,@OCT_COC varchar(2) = NULL
,@NOV_COC varchar(2) = NULL
,@DEC_COC varchar(2) = NULL
,@ALLM_LCMP money = NULL
,@JAN_LCMP money = NULL
,@FEB_LCMP money = NULL
,@MAR_LCMP money = NULL
,@APR_LCMP money = NULL
,@MAY_LCMP money = NULL
,@JUN_LCMP money = NULL
,@JUL_LCMP money = NULL
,@AUG_LCMP money = NULL
,@SEP_LCMP money = NULL
,@OCT_LCMP money = NULL
,@NOV_LCMP money = NULL
,@DEC_LCMP money = NULL
,@ALLM_SHC varchar(2) = NULL
,@JAN_SHC varchar(2) = NULL
,@FEB_SHC varchar(2) = NULL
,@MAR_SHC varchar(2) = NULL
,@APR_SHC varchar(2) = NULL
,@MAY_SHC varchar(2) = NULL
,@JUN_SHC varchar(2) = NULL
,@JUL_SHC varchar(2) = NULL
,@AUG_SHC varchar(2) = NULL
,@SEP_SHC varchar(2) = NULL
,@OCT_SHC varchar(2) = NULL
,@NOV_SHC varchar(2) = NULL
,@DEC_SHC varchar(2) = NULL
,@isDependent smallint = NULL
,@flaggedEmployee smallint = NULL
,@disableCoding smallint = NULL
)
as
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId = [dbo].[usp_GetEmployerId] @EmployerTaxId
IF @EmployerId IS NULL
	  RETURN

DECLARE @EmployeeId INT = NULL
EXEC @EmployeeId = [dbo].[usp_GetEmployeeId] @ssn
IF @EmployeeId IS NULL
	  RETURN

IF NOT EXISTS (SELECT 1 from [dbo].[EmployeeCode] where [employeeId]=@employeeId and [employerId]=@EmployerId)
	BEGIN
		INSERT INTO [dbo].[EmployeeCode]
			([employeeId]
			,[employerId]
			,[filingYear]
			,[hourlyAmount]
			,[salaryAmount]
			,[ALLM_COC]
			,[JAN_COC]
			,[FEB_COC]
			,[MAR_COC]
			,[APR_COC]
			,[MAY_COC]
			,[JUN_COC]
			,[JUL_COC]
			,[AUG_COC]
			,[SEP_COC]
			,[OCT_COC]
			,[NOV_COC]
			,[DEC_COC]
			,[ALLM_LCMP]
			,[JAN_LCMP]
			,[FEB_LCMP]
			,[MAR_LCMP]
			,[APR_LCMP]
			,[MAY_LCMP]
			,[JUN_LCMP]
			,[JUL_LCMP]
			,[AUG_LCMP]
			,[SEP_LCMP]
			,[OCT_LCMP]
			,[NOV_LCMP]
			,[DEC_LCMP]
			,[ALLM_SHC]
			,[JAN_SHC]
			,[FEB_SHC]
			,[MAR_SHC]
			,[APR_SHC]
			,[MAY_SHC]
			,[JUN_SHC]
			,[JUL_SHC]
			,[AUG_SHC]
			,[SEP_SHC]
			,[OCT_SHC]
			,[NOV_SHC]
			,[DEC_SHC]
			,[isDependent]
			,[flaggedEmployee]
			,[disableCoding])
		VALUES
			(@EmployeeId
			,@EmployerId
			,@filingYear
			,@hourlyAmount
			,@salaryAmount
			,@ALLM_COC
			,@JAN_COC
			,@FEB_COC
			,@MAR_COC
			,@APR_COC
			,@MAY_COC
			,@JUN_COC
			,@JUL_COC
			,@AUG_COC
			,@SEP_COC
			,@OCT_COC
			,@NOV_COC
			,@DEC_COC
			,@ALLM_LCMP
			,@JAN_LCMP
			,@FEB_LCMP
			,@MAR_LCMP
			,@APR_LCMP
			,@MAY_LCMP
			,@JUN_LCMP
			,@JUL_LCMP
			,@AUG_LCMP
			,@SEP_LCMP
			,@OCT_LCMP
			,@NOV_LCMP
			,@DEC_LCMP
			,@ALLM_SHC
			,@JAN_SHC
			,@FEB_SHC
			,@MAR_SHC
			,@APR_SHC
			,@MAY_SHC
			,@JUN_SHC
			,@JUL_SHC
			,@AUG_SHC
			,@SEP_SHC
			,@OCT_SHC
			,@NOV_SHC
			,@DEC_SHC
			,@isDependent
			,@flaggedEmployee
			,@disableCoding)
	END
ELSE
	UPDATE [dbo].[EmployeeCode] SET
		[employeeId] = @EmployeeId
		,[employerId] = @EmployerId
		,[filingYear] = @filingYear
		,[hourlyAmount] = @hourlyAmount
		,[salaryAmount] = @salaryAmount
		,[ALLM_COC] = @ALLM_COC
		,[JAN_COC] = @JAN_COC
		,[FEB_COC] = @FEB_COC
		,[MAR_COC] = @MAR_COC
		,[APR_COC] = @APR_COC
		,[MAY_COC] = @MAY_COC
		,[JUN_COC] = @JUN_COC
		,[JUL_COC] = @JUL_COC
		,[AUG_COC] = @AUG_COC
		,[SEP_COC] = @SEP_COC
		,[OCT_COC] = @OCT_COC
		,[NOV_COC] = @NOV_COC
		,[DEC_COC] = @DEC_COC
		,[ALLM_LCMP] = @ALLM_LCMP
		,[JAN_LCMP] = @JAN_LCMP
		,[FEB_LCMP] = @FEB_LCMP
		,[MAR_LCMP] = @MAR_LCMP
		,[APR_LCMP] = @APR_LCMP
		,[MAY_LCMP] = @MAY_LCMP
		,[JUN_LCMP] = @JUN_LCMP
		,[JUL_LCMP] = @JUL_LCMP
		,[AUG_LCMP] = @AUG_LCMP
		,[SEP_LCMP] = @SEP_LCMP
		,[OCT_LCMP] = @OCT_LCMP
		,[NOV_LCMP] = @NOV_LCMP
		,[DEC_LCMP] = @DEC_LCMP
		,[ALLM_SHC] = @ALLM_SHC
		,[JAN_SHC] = @JAN_SHC
		,[FEB_SHC] = @FEB_SHC
		,[MAR_SHC] = @MAR_SHC
		,[APR_SHC] = @APR_SHC
		,[MAY_SHC] = @MAY_SHC
		,[JUN_SHC] = @JUN_SHC
		,[JUL_SHC] = @JUL_SHC
		,[AUG_SHC] = @AUG_SHC
		,[SEP_SHC] = @SEP_SHC
		,[OCT_SHC] = @OCT_SHC
		,[NOV_SHC] = @NOV_SHC
		,[DEC_SHC] = @DEC_SHC
		,[isDependent] = @isDependent
		,[flaggedEmployee] = @flaggedEmployee
		,[disableCoding] = @disableCoding
		WHERE [employeeId] = @EmployeeId AND [employerId] = @EmployerId
return
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeCodeSelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_EmployeeCodeSelect](
@CompanyTaxId varchar(10) = NULL
,@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
)
as
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId = [dbo].[usp_GetEmployerId] @EmployerTaxId

DECLARE @EmployeeId INT = NULL
EXEC @EmployeeId = [dbo].[usp_GetEmployeeId] @ssn

Declare @CompanyId INT = NULL
EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId

SELECT ec.[id]
    ,[employeeId]
    ,[employerId]
    ,ec.[filingYear]
    ,[hourlyAmount]
    ,[salaryAmount]
    ,[ALLM_COC]
    ,[JAN_COC]
    ,[FEB_COC]
    ,[MAR_COC]
    ,[APR_COC]
    ,[MAY_COC]
    ,[JUN_COC]
    ,[JUL_COC]
    ,[AUG_COC]
    ,[SEP_COC]
    ,[OCT_COC]
    ,[NOV_COC]
    ,[DEC_COC]
    ,[ALLM_LCMP]
    ,[JAN_LCMP]
    ,[FEB_LCMP]
    ,[MAR_LCMP]
    ,[APR_LCMP]
    ,[MAY_LCMP]
    ,[JUN_LCMP]
    ,[JUL_LCMP]
    ,[AUG_LCMP]
    ,[SEP_LCMP]
    ,[OCT_LCMP]
    ,[NOV_LCMP]
    ,[DEC_LCMP]
    ,[ALLM_SHC]
    ,[JAN_SHC]
    ,[FEB_SHC]
    ,[MAR_SHC]
    ,[APR_SHC]
    ,[MAY_SHC]
    ,[JUN_SHC]
    ,[JUL_SHC]
    ,[AUG_SHC]
    ,[SEP_SHC]
    ,[OCT_SHC]
    ,[NOV_SHC]
    ,[DEC_SHC]
    ,[isDependent]
    ,[flaggedEmployee]
    ,[disableCoding]
FROM [dbo].[EmployeeCode] AS ec
INNER JOIN [dbo].[Employer] AS er ON ec.employerId = er.id
WHERE (@EmployeeId = 0 OR  [employeeId] = @EmployeeId)
AND ([companyId] = @CompanyId OR er.[id] = @CompanyId OR er.[id] = @EmployerId)

return
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeEnrollmentAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeEnrollmentAdd](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@planName varchar(70) = NULL
,@enrollmentName varchar(50) = NULL
,@unionMember smallint = NULL
,@contributionStartDate date = NULL
,@contributionEndDate date = NULL
,@coverageOfferDate date = NULL
,@isEnrolled smallint = NULL
,@CoverageStartDate date = NULL
,@coverageEndDate date = NULL
,@COBRAEnrolled smallint = NULL
,@COBRAStartDate date = NULL
,@COBRAEndDate date  = NULL
)
AS
SET NOCOUNT ON;
DECLARE @EmployeeName varchar(100) = NULL
SELECT  @EmployeeName = firstName + ' ' + lastName FROM [dbo].[Employee] WHERE ssn=@ssn

DECLARE @CompanyTaxId INT = NULL
SELECT  @CompanyTaxId = companyId FROM [dbo].[Employer] WHERE taxid=@EmployerTaxId

DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssn 

DECLARE @planId int = NULL
EXEC @PlanId = [dbo].[usp_GetPlanId] @CompanyTaxId, @planName

IF NOT EXISTS(SELECT 1 FROM [dbo].[EmployeeEnrollment] WHERE [enrollmentName] = @enrollmentName AND [employeeCodeId] = @employeeCodeId)
	BEGIN
		INSERT INTO [dbo].[EmployeeEnrollment]
			([enrollmentName]
			,[employeeCodeId]
			,[planId]
			,[unionMember]
			,[contributionStartDate]
			,[contributionEndDate]
			,[coverageOfferDate]
			,[isEnrolled]
			,[CoverageStartDate]
			,[coverageEndDate]
			,[COBRAEnrolled]
			,[COBRAStartDate]
			,[COBRAEndDate])
		VALUES
			(@enrollmentName
			,@employeeCodeId
			,@planId
			,@unionMember
			,@contributionStartDate
			,@contributionEndDate
			,@coverageOfferDate
			,@isEnrolled
			,@CoverageStartDate
			,@coverageEndDate
			,@COBRAEnrolled
			,@COBRAStartDate
			,@COBRAEndDate)
	END
ELSE
	SELECT 'Employee Enrollment for: '+ @EmployeeName + ' already exists.' 

RETURN



GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeEnrollmentDelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeEnrollmentDelete](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@enrollmentName varchar(50) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @CompanyTaxId INT = NULL
SELECT  @CompanyTaxId = companyId FROM [dbo].[Employer] WHERE taxid=@EmployerTaxId

DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @CompanyTaxId, @ssn 
IF @employeeCodeId IS NULL
	RETURN

DELETE FROM [dbo].[EmployeeEnrollment] WHERE [employeeCodeId]=@employeeCodeId AND [enrollmentName]=@enrollmentName

RETURN


GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeEnrollmentModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeEnrollmentModify](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@planName varchar(70) = NULL
,@enrollmentName varchar(50) = NULL
,@unionMember smallint = NULL
,@contributionStartDate date = NULL
,@contributionEndDate date = NULL
,@coverageOfferDate date = NULL
,@isEnrolled smallint = NULL
,@CoverageStartDate date = NULL
,@coverageEndDate date = NULL
,@COBRAEnrolled smallint = NULL
,@COBRAStartDate date = NULL
,@COBRAEndDate date  = NULL
)
AS
SET NOCOUNT ON;
DECLARE @CompanyTaxId INT = NULL
SELECT  @CompanyTaxId = companyId FROM [dbo].[Employer] WHERE taxid=@EmployerTaxId

DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @CompanyTaxId, @ssn 

DECLARE @planId int = NULL
EXEC @PlanId = [dbo].[usp_GetPlanId] @EmployerTaxId, @planName

IF NOT EXISTS(SELECT 1 FROM [dbo].[EmployeeEnrollment] WHERE [enrollmentName] = @enrollmentName AND [employeeCodeId] = @employeeCodeId)
	BEGIN
		INSERT INTO [dbo].[EmployeeEnrollment]
			([enrollmentName]
			,[employeeCodeId]
			,[planId]
			,[unionMember]
			,[contributionStartDate]
			,[contributionEndDate]
			,[coverageOfferDate]
			,[isEnrolled]
			,[CoverageStartDate]
			,[coverageEndDate]
			,[COBRAEnrolled]
			,[COBRAStartDate]
			,[COBRAEndDate])
		VALUES
			(@enrollmentName
			,@employeeCodeId
			,@planId
			,@unionMember
			,@contributionStartDate
			,@contributionEndDate
			,@coverageOfferDate
			,@isEnrolled
			,@CoverageStartDate
			,@coverageEndDate
			,@COBRAEnrolled
			,@COBRAStartDate
			,@COBRAEndDate)
	END
ELSE
	UPDATE [dbo].[EmployeeEnrollment] SET
		[enrollmentName] = @enrollmentName
		,[employeeCodeId] = @employeeCodeId
		,[planId] = @planId
		,[unionMember] = @unionMember
		,[contributionStartDate] = @contributionStartDate
		,[contributionEndDate] = @contributionEndDate
		,[coverageOfferDate] = @coverageOfferDate
		,[isEnrolled] = @isEnrolled
		,[CoverageStartDate] = @CoverageStartDate
		,[coverageEndDate] = @coverageEndDate
		,[COBRAEnrolled] = @COBRAEnrolled
		,[COBRAStartDate] = @COBRAStartDate
		,[COBRAEndDate] = @COBRAEndDate
	WHERE [enrollmentName] = @enrollmentName AND [employeeCodeId] = @employeeCodeId

RETURN
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeEnrollmentSelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeEnrollmentSelect](
@CompanyTaxId varchar(10) = NULL
,@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@enrollmentName varchar(50) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId = [dbo].[usp_GetEmployerId] @EmployerTaxId

DECLARE @EmployeeId INT = NULL
EXEC @EmployeeId = [dbo].[usp_GetEmployeeId] @ssn

Declare @CompanyId INT = NULL
EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId

SELECT id INTO #t1 FROM [dbo].[Employer] 
WHERE [companyId] = @CompanyId 
OR [id] = @CompanyId OR [id] = @EmployerId

SELECT ec.id INTO #t2 FROM [dbo].[EmployeeCode] AS ec
INNER JOIN #t1 AS temp ON ec.employerId = temp.id
WHERE @EmployeeId = 0 OR employeeId=@EmployeeId

SELECT enroll.[id]
    ,[enrollmentName]
    ,[employeeCodeId]
    ,erPlan.[name]
    ,[unionMember]
    ,[contributionStartDate]
    ,[contributionEndDate]
    ,[coverageOfferDate]
    ,[isEnrolled]
    ,[CoverageStartDate]
    ,[coverageEndDate]
    ,[COBRAEnrolled]
    ,[COBRAStartDate]
    ,[COBRAEndDate]
FROM [dbo].[EmployeeEnrollment] AS enroll
INNER JOIN #t2 AS temp ON temp.id = enroll.employeeCodeId
INNER JOIN [dbo].[EmployerPlan] AS erPlan ON enroll.planId = erPlan.id
WHERE (@enrollmentName IS NULL OR [enrollmentName]=@enrollmentName)

DROP TABLE #t1
DROP TABLE #t2
RETURN


GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeHireSpanAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeHireSpanAdd](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@hireName int = NULL
,@startDate varchar(12) = NULL
,@endDate varchar(12) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @EmployeeName varchar(100) = NULL
SELECT @EmployeeName = firstName + ' ' + lastName FROM [dbo].[Employee] WHERE ssn=@ssn

DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssn
IF @employeeCodeId IS NULL
	  RETURN

IF NOT EXISTS(SELECT 1 FROM [dbo].[EmployeeHireSpan] WHERE [hireName] = @hireName AND [employeeCodeId] = @employeeCodeId)
	BEGIN
		INSERT INTO [dbo].[EmployeeHireSpan]
				   ([hireName]
				   ,[employeeCodeId]
				   ,[startDate]
				   ,[endDate])
			 VALUES
				   (@hireName
				   ,@employeeCodeId
				   ,@startDate
				   ,@endDate)
	END
ELSE
	SELECT 'Employee Hire Span for: '+ @EmployeeName + ' already exists.' 

RETURN
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeHireSpanDelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeHireSpanDelete](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@hireName int = NULL
)
AS
SET NOCOUNT ON;
DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssn
IF @employeeCodeId IS NULL
	  RETURN

DELETE FROM [dbo].[EmployeeHireSpan] WHERE [employeeCodeId]=@employeeCodeId AND [hireName]=@hireName

RETURN

GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeHireSpanModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeHireSpanModify](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@hireName int = NULL
,@startDate varchar(12) = NULL
,@endDate varchar(12) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssn
IF @employeeCodeId IS NULL
	  RETURN

IF NOT EXISTS(SELECT 1 FROM [dbo].[EmployeeHireSpan] WHERE [hireName] = @hireName AND [employeeCodeId] = @employeeCodeId)
	BEGIN
		INSERT INTO [dbo].[EmployeeHireSpan]
				   ([hireName]
				   ,[employeeCodeId]
				   ,[startDate]
				   ,[endDate])
			 VALUES
				   (@hireName
				   ,@employeeCodeId
				   ,@startDate
				   ,@endDate)
	END
ELSE 
	UPDATE [dbo].[EmployeeHireSpan] SET
		[hireName] = @hireName
		,[employeeCodeId] = @employeeCodeId
		,[startDate] = @startDate
		,[endDate] = @endDate
	WHERE [hireName] = @hireName AND [employeeCodeId] = @employeeCodeId

RETURN

GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeHireSpanSelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeHireSpanSelect]( 
@CompanyTaxId varchar(10) = NULL
,@EmployerTaxId varchar(50) = NULL
,@ssn varchar(50) = NULL
,@hireName varchar(50) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId = [dbo].[usp_GetEmployerId] @EmployerTaxId

DECLARE @EmployeeId INT = NULL
EXEC @EmployeeId = [dbo].[usp_GetEmployeeId] @ssn

Declare @CompanyId INT = NULL
EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId

SELECT id INTO #t1 FROM [dbo].[Employer] 
WHERE [companyId] = @CompanyId 
OR [id] = @CompanyId OR [id] = @EmployerId

SELECT ec.id INTO #t2 FROM [dbo].[EmployeeCode] AS ec
INNER JOIN #t1 AS temp ON ec.employerId = temp.id
WHERE @EmployeeId = 0 OR employeeId=@EmployeeId

SELECT eh.[id]
    ,[hireName]
    ,[employeeCodeId]
    ,[startDate]
    ,[endDate]
FROM [dbo].[EmployeeHireSpan] AS eh
INNER JOIN #t2 AS temp ON temp.id = eh.employeeCodeId
WHERE (@hireName IS NULL OR [hireName]=@hireName)

DROP TABLE #t1
DROP TABLE #t2
RETURN

GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeStatusAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeStatusAdd](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@statusName varchar(50) = NULL
,@status varchar(50) = NULL
,@startDate varchar(12) = NULL
,@endDate varchar(12) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @EmployeeName varchar(100) = NULL
SELECT @EmployeeName = firstName + ' ' + lastName FROM [dbo].[Employee] WHERE ssn=@ssn

DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssn 
IF @employeeCodeId IS NULL
	  RETURN

IF NOT EXISTS(SELECT 1 FROM [dbo].[EmployeeStatus] WHERE [statusName] = @statusName AND [employeeCodeId] = @employeeCodeId)
	BEGIN
		INSERT INTO [dbo].[EmployeeStatus]
			   ([statusName]
			   ,[employeeCodeId]
			   ,[status]
			   ,[startDate]
			   ,[endDate])
		 VALUES
			   (@statusName
			   ,@employeeCodeId
			   ,@status
			   ,@startDate
			   ,@endDate)
	END
ELSE
	SELECT 'Employee status for: '+ @EmployeeName + ' already exists.' 

RETURN



GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeStatusDelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeStatusDelete](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@statusName varchar(50) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssn 
IF @employeeCodeId IS NULL
	  RETURN

DELETE FROM [dbo].[EmployeeStatus] WHERE [employeeCodeId]=@employeeCodeId AND [statusName]=@statusName

RETURN


GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeStatusModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeStatusModify](
@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@statusName varchar(50) = NULL
,@status varchar(50) = NULL
,@startDate varchar(12) = NULL
,@endDate varchar(12) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @employeeCodeId int = NULL 
EXEC @EmployeeCodeId = [dbo].[usp_GetEmployeeCodeId] @EmployerTaxId, @ssn 
IF @employeeCodeId IS NULL
	  RETURN

IF NOT EXISTS(SELECT 1 FROM [dbo].[EmployeeStatus] WHERE [statusName] = @statusName AND [employeeCodeId] = @employeeCodeId)
	BEGIN
		INSERT INTO [dbo].[EmployeeStatus]
			   ([statusName]
			   ,[employeeCodeId]
			   ,[status]
			   ,[startDate]
			   ,[endDate])
		 VALUES
			   (@statusName
			   ,@employeeCodeId
			   ,@status
			   ,@startDate
			   ,@endDate)
	END
ELSE
	UPDATE [dbo].[EmployeeStatus] SET
		[statusName] = @statusName
		,[employeeCodeId] = @employeeCodeId
		,[status] = @status
		,[startDate] = @startDate
		,[endDate] = @endDate
	WHERE [statusName] = @statusName AND [employeeCodeId] = @employeeCodeId

RETURN
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployeeStatusSelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_EmployeeStatusSelect](
@CompanyTaxId varchar(10) = NULL
,@EmployerTaxId varchar(10) = NULL
,@ssn varchar(50) = NULL
,@statusName varchar(50) = NULL
)
AS
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId = [dbo].[usp_GetEmployerId] @EmployerTaxId

DECLARE @EmployeeId INT = NULL
EXEC @EmployeeId = [dbo].[usp_GetEmployeeId] @ssn

Declare @CompanyId INT = NULL
EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId

SELECT id INTO #t1 FROM [dbo].[Employer] 
WHERE [companyId] = @CompanyId 
OR [id] = @CompanyId OR [id] = @EmployerId

SELECT ec.id INTO #t2 FROM [dbo].[EmployeeCode] AS ec
INNER JOIN #t1 AS temp ON ec.employerId = temp.id
WHERE @EmployeeId = 0 OR employeeId=@EmployeeId

SELECT es.[id]
    ,[statusName]
    ,[employeeCodeId]
    ,[status]
    ,[startDate]
    ,[endDate]
FROM [dbo].[EmployeeStatus] AS es
INNER JOIN #t2 AS temp ON temp.id = es.employeeCodeId
WHERE (@statusName IS NULL OR [statusName]=@statusName)

DROP TABLE #t1
DROP TABLE #t2
RETURN


GO
/****** Object:  StoredProcedure [dbo].[usp_EmployerAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_EmployerAdd]
(@CompanyTaxID [varchar](10)
,@EmployerTaxID [varchar](10)
,@name [varchar](70)=null
,@isForeignAddress [smallint]=0
,@address [varchar](150)=null
,@address2 [varchar](150)=NULL
,@city [varchar](100)=NULL
,@state [varchar](50)=NULL
,@zip [varchar](50) =NULL
,@country [varchar](100)= NULL
,@phoneNumber [varchar](50)= NULL
,@contactName [varchar](100)= NULL
,@signTitle [varchar](100)= NULL
,@signDate [date]= NULL
,@originCode [varchar](1)= NULL
,@SHOPIdentifier [varchar](50)= NULL
,@totalNumberEE [int] =0
,@totalNumberForms [int] =0
,@eligibility_A [int] =0
,@eligibility_B [int]= 0
,@eligibility_C [int]= 0
,@eligibility_D [int]= 0
,@lockEmployer [smallint]=0
,@formType [varchar](50)= NULL
,@isCompany [smallint]=0
,@status [varchar](50)= NULL
,@teamId [int] =null
,@lockCompany [smallint]=0
,@lastEdit [date] = null
,@filingYear [int] =NULL
,@isCorrected [smallint]=0
,@isAuthoritative [smallint]=0
,@lastUploadDate [date] =null
,@minimum_0 [int] =NULL
,@minimum_1 [int] =NULL
,@minimum_2 [int] =NULL
,@minimum_3 [int] =NULL
,@minimum_4 [int] =NULL
,@minimum_5 [int] =NULL
,@minimum_6 [int] =NULL
,@minimum_7 [int] =NULL
,@minimum_8 [int] =NULL
,@minimum_9 [int] =NULL
,@minimum_10 [int] =NULL
,@minimum_11 [int] =NULL
,@minimum_12 [int] =NULL
,@fullTime_0 [int] =NULL
,@fullTime_1 [int] =NULL
,@fullTime_2 [int] =NULL
,@fullTime_3 [int] =NULL
,@fullTime_4 [int] =NULL
,@fullTime_5 [int] =NULL
,@fullTime_6 [int] =NULL
,@fullTime_7 [int] =NULL
,@fullTime_8 [int] =NULL
,@fullTime_9 [int] =NULL
,@fullTime_10 [int] =NULL
,@fullTime_11 [int] =NULL
,@fullTime_12 [int] =NULL
,@total_0 [int] =NULL
,@total_1 [int] =NULL
,@total_2 [int] =NULL
,@total_3 [int] =NULL
,@total_4 [int] =NULL
,@total_5 [int] =NULL
,@total_6 [int] =NULL
,@total_7 [int] =NULL
,@total_8 [int] =NULL
,@total_9 [int] =NULL
,@total_10 [int] =NULL
,@total_11 [int] =NULL
,@total_12 [int] =NULL
,@group_0 [int] =NULL
,@group_1 [int] =NULL
,@group_2 [int] =NULL
,@group_3 [int] =NULL
,@group_4 [int] =NULL
,@group_5 [int] =NULL
,@group_6 [int] =NULL
,@group_7 [int] =NULL
,@group_8 [int] =NULL
,@group_9 [int] =NULL
,@group_10 [int] =NULL
,@group_11 [int] =NULL
,@group_12 [int] =NULL
,@S4980H_0 [varchar](1) =NULL
,@S4980H_1 [varchar](1) =NULL
,@S4980H_2 [varchar](1) =NULL
,@S4980H_3 [varchar](1) =NULL
,@S4980H_4 [varchar](1) =NULL
,@S4980H_5 [varchar](1) =NULL
,@S4980H_6 [varchar](1) =NULL
,@S4980H_7 [varchar](1) =NULL
,@S4980H_8 [varchar](1) =NULL
,@S4980H_9 [varchar](1) =NULL
,@S4980H_10 [varchar](1) =NULL
,@S4980H_11 [varchar](1) =NULL
,@S4980H_12 [varchar](1) =NULL
,@disableChanges [smallint] =NULL)
as
/*
EXEC [usp_EmployerAdd]
@CompanyTaxID ='90559780'
,@EmployerTaxID='905597801'
,@name ='Bobby Inc sun,'
,@isForeignAddress =0
,@address=null
,@address2 =NULL
,@city =NULL
,@state =NULL
,@zip  =NULL
,@country = NULL
,@phoneNumber = NULL
,@contactName = NULL
,@signTitle = NULL
,@signDate = NULL
,@originCode = NULL
,@SHOPIdentifier = NULL
,@totalNumberEE  =NULL
,@totalNumberForms=NULL
,@eligibility_A =NULL
,@eligibility_B = NULL
,@eligibility_C = NULL
,@eligibility_D = NULL
,@lockEmployer =0
,@formType = NULL
,@isCompany =0
,@status = NULL
,@teamId  =null
,@lockCompany =0
,@lastEdit  = null
,@filingYear  =NULL
,@lastUploadDate  =null
*/
SET NOCOUNT ON;
DECLARE @CompanyId varchar(10)
EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxID
IF @CompanyID is NULL
	Return

IF NOT EXISTS (SELECT 1 from [dbo].[Employer] where [taxid]=@EmployerTaxID)
	BEGIN
		INSERT INTO [dbo].[Employer]
			([taxid]
			,[name]
			,[isForeignAddress]
			,[address]
			,[address2]
			,[city]
			,[state]
			,[zip]
			,[country]
			,[phoneNumber]
			,[contactName]
			,[signTitle]
			,[signDate]
			,[originCode]
			,[SHOPIdentifier]
			,[totalNumberEE]
			,[totalNumberForms]
			,[eligibility_A]
			,[eligibility_B]
			,[eligibility_C]
			,[eligibility_D]
			,[lockEmployer]
			,[formType]
			,[isCompany]
			,[status]
			,[CompanyId]
			,[teamId]
			,[lockCompany]
			,[lastEdit]
			,[filingYear]
			,[isCorrected]
			,[isAuthoritative]
			,[lastUploadDate]
			,[minimum_0]
			,[minimum_1]
			,[minimum_2]
			,[minimum_3]
			,[minimum_4]
			,[minimum_5]
			,[minimum_6]
			,[minimum_7]
			,[minimum_8]
			,[minimum_9]
			,[minimum_10]
			,[minimum_11]
			,[minimum_12]
			,[fullTime_0]
			,[fullTime_1]
			,[fullTime_2]
			,[fullTime_3]
			,[fullTime_4]
			,[fullTime_5]
			,[fullTime_6]
			,[fullTime_7]
			,[fullTime_8]
			,[fullTime_9]
			,[fullTime_10]
			,[fullTime_11]
			,[fullTime_12]
			,[total_0]
			,[total_1]
			,[total_2]
			,[total_3]
			,[total_4]
			,[total_5]
			,[total_6]
			,[total_7]
			,[total_8]
			,[total_9]
			,[total_10]
			,[total_11]
			,[total_12]
			,[group_0]
			,[group_1]
			,[group_2]
			,[group_3]
			,[group_4]
			,[group_5]
			,[group_6]
			,[group_7]
			,[group_8]
			,[group_9]
			,[group_10]
			,[group_11]
			,[group_12]
			,[S4980H_0]
			,[S4980H_1]
			,[S4980H_2]
			,[S4980H_3]
			,[S4980H_4]
			,[S4980H_5]
			,[S4980H_6]
			,[S4980H_7]
			,[S4980H_8]
			,[S4980H_9]
			,[S4980H_10]
			,[S4980H_11]
			,[S4980H_12]
			,[disableChanges])
	SELECT      
			@EmployerTaxID
			,@name
			,@isForeignAddress
			,@address
			,@address2
			,@city
			,@state
			,@zip
			,@country
			,@phoneNumber
			,@contactName
			,@signTitle
			,@signDate
			,@originCode
			,@SHOPIdentifier
			,@totalNumberEE
			,@totalNumberForms
			,@eligibility_A
			,@eligibility_B
			,@eligibility_C
			,@eligibility_D
			,@lockEmployer
			,@formType
			,0 as isCompany
			,@status
			,@CompanyId
			,@teamId
			,@lockCompany 
			,getdate() as lastEdit
			,@filingYear
			,@isCorrected
			,@isAuthoritative
			,getdate() as lastUploadDate
			,@minimum_0
			,@minimum_1
			,@minimum_2
			,@minimum_3
			,@minimum_4
			,@minimum_5
			,@minimum_6
			,@minimum_7
			,@minimum_8
			,@minimum_9
			,@minimum_10
			,@minimum_11
			,@minimum_12
			,@fullTime_0
			,@fullTime_1
			,@fullTime_2
			,@fullTime_3
			,@fullTime_4
			,@fullTime_5
			,@fullTime_6
			,@fullTime_7
			,@fullTime_8
			,@fullTime_9
			,@fullTime_10
			,@fullTime_11
			,@fullTime_12
			,@total_0
			,@total_1
			,@total_2
			,@total_3
			,@total_4
			,@total_5
			,@total_6
			,@total_7
			,@total_8
			,@total_9
			,@total_10
			,@total_11
			,@total_12
			,@group_0
			,@group_1
			,@group_2
			,@group_3
			,@group_4
			,@group_5
			,@group_6
			,@group_7
			,@group_8
			,@group_9
			,@group_10
			,@group_11
			,@group_12
			,@S4980H_0
			,@S4980H_1
			,@S4980H_2
			,@S4980H_3
			,@S4980H_4
			,@S4980H_5
			,@S4980H_6
			,@S4980H_7
			,@S4980H_8
			,@S4980H_9
			,@S4980H_10
			,@S4980H_11
			,@S4980H_12
			,@disableChanges
	END
	ELSE
	SELECT 'Employer TaxID: '+ cast (@EmployerTaxID as varchar) + ' already exists. Please enter a unique Employer Tax ID.' 
return



GO
/****** Object:  StoredProcedure [dbo].[usp_EmployerDelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_EmployerDelete]
(@taxid [varchar](10)
)
AS
/*
EXEC [usp_EmployerDelete] @taxid =90559780
*/
SET NOCOUNT ON;
DELETE FROM [dbo].[Employer] WHERE [taxid]=@taxid AND isCompany=0
RETURN
GO
/****** Object:  StoredProcedure [dbo].[usp_EmployerModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_EmployerModify]
(
@CompanyTaxID [varchar](10)
,@EmployerTaxID [varchar](10)
,@name [varchar](70)=null
,@isForeignAddress [smallint]=0
,@address [varchar](150)=null
,@address2 [varchar](150)=NULL
,@city [varchar](100)=NULL
,@state [varchar](50)=NULL
,@zip [varchar](50) =NULL
,@country [varchar](100)= NULL
,@phoneNumber [varchar](50)= NULL
,@contactName [varchar](100)= NULL
,@signTitle [varchar](100)= NULL
,@signDate [date]= NULL
,@originCode [varchar](1)= NULL
,@SHOPIdentifier [varchar](50)= NULL
,@totalNumberEE [int] =0
,@totalNumberForms [int] =0
,@eligibility_A [int] =0
,@eligibility_B [int]= 0
,@eligibility_C [int]= 0
,@eligibility_D [int]= 0
,@lockEmployer [smallint]=0
,@formType [varchar](50)= NULL
,@isCompany [smallint]=0
,@status [varchar](50)= NULL
,@teamId [int] =null
,@lockCompany [smallint]=0
,@lastEdit [date] = null
,@filingYear [int] =NULL
,@isCorrected [smallint]=0
,@isAuthoritative [smallint]=0
,@lastUploadDate [date] =null
,@minimum_0 [int] =NULL
,@minimum_1 [int] =NULL
,@minimum_2 [int] =NULL
,@minimum_3 [int] =NULL
,@minimum_4 [int] =NULL
,@minimum_5 [int] =NULL
,@minimum_6 [int] =NULL
,@minimum_7 [int] =NULL
,@minimum_8 [int] =NULL
,@minimum_9 [int] =NULL
,@minimum_10 [int] =NULL
,@minimum_11 [int] =NULL
,@minimum_12 [int] =NULL
,@fullTime_0 [int] =NULL
,@fullTime_1 [int] =NULL
,@fullTime_2 [int] =NULL
,@fullTime_3 [int] =NULL
,@fullTime_4 [int] =NULL
,@fullTime_5 [int] =NULL
,@fullTime_6 [int] =NULL
,@fullTime_7 [int] =NULL
,@fullTime_8 [int] =NULL
,@fullTime_9 [int] =NULL
,@fullTime_10 [int] =NULL
,@fullTime_11 [int] =NULL
,@fullTime_12 [int] =NULL
,@total_0 [int] =NULL
,@total_1 [int] =NULL
,@total_2 [int] =NULL
,@total_3 [int] =NULL
,@total_4 [int] =NULL
,@total_5 [int] =NULL
,@total_6 [int] =NULL
,@total_7 [int] =NULL
,@total_8 [int] =NULL
,@total_9 [int] =NULL
,@total_10 [int] =NULL
,@total_11 [int] =NULL
,@total_12 [int] =NULL
,@group_0 [int] =NULL
,@group_1 [int] =NULL
,@group_2 [int] =NULL
,@group_3 [int] =NULL
,@group_4 [int] =NULL
,@group_5 [int] =NULL
,@group_6 [int] =NULL
,@group_7 [int] =NULL
,@group_8 [int] =NULL
,@group_9 [int] =NULL
,@group_10 [int] =NULL
,@group_11 [int] =NULL
,@group_12 [int] =NULL
,@S4980H_0 [varchar](1) =NULL
,@S4980H_1 [varchar](1) =NULL
,@S4980H_2 [varchar](1) =NULL
,@S4980H_3 [varchar](1) =NULL
,@S4980H_4 [varchar](1) =NULL
,@S4980H_5 [varchar](1) =NULL
,@S4980H_6 [varchar](1) =NULL
,@S4980H_7 [varchar](1) =NULL
,@S4980H_8 [varchar](1) =NULL
,@S4980H_9 [varchar](1) =NULL
,@S4980H_10 [varchar](1) =NULL
,@S4980H_11 [varchar](1) =NULL
,@S4980H_12 [varchar](1) =NULL
,@disableChanges [smallint] =0
)
as
/*
EXEC [usp_EmployeeModify]
@CompanyTaxID ='90559780'
,@EmployerTaxID='905597801'
,@name ='Bobby Inc suuuun,'
,@isForeignAddress =0
,@address=null
,@address2 =NULL
,@city =NULL
,@state =NULL
,@zip  =NULL
,@country = NULL
,@phoneNumber = NULL
,@contactName = NULL
,@signTitle = NULL
,@signDate = NULL
,@originCode = NULL
,@SHOPIdentifier = NULL
,@totalNumberEE  =NULL
,@totalNumberForms=NULL
,@eligibility_A =NULL
,@eligibility_B = NULL
,@eligibility_C = NULL
,@eligibility_D = NULL
,@lockEmployer =0
,@formType = NULL
,@isCompany =0
,@status = NULL
,@teamId  =null
,@lockCompany =0
,@lastEdit  = null
,@filingYear  =NULL
,@lastUploadDate  =null
*/
SET NOCOUNT ON;
DECLARE @CompanyId varchar(10)
EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxID
IF @CompanyId is NULL
	RETURN

IF NOT EXISTS (SELECT 1 from [dbo].[Employer] where [taxid]=@EmployerTaxID)
	BEGIN
		INSERT INTO [dbo].[Employer]
			([taxid]
			,[name]
			,[isForeignAddress]
			,[address]
			,[address2]
			,[city]
			,[state]
			,[zip]
			,[country]
			,[phoneNumber]
			,[contactName]
			,[signTitle]
			,[signDate]
			,[originCode]
			,[SHOPIdentifier]
			,[totalNumberEE]
			,[totalNumberForms]
			,[eligibility_A]
			,[eligibility_B]
			,[eligibility_C]
			,[eligibility_D]
			,[lockEmployer]
			,[formType]
			,[isCompany]
			,[status]
			,[CompanyId]
			,[teamId]
			,[lockCompany]
			,[lastEdit]
			,[filingYear]
			,[isCorrected]
			,[isAuthoritative]
			,[lastUploadDate]
			,[minimum_0]
			,[minimum_1]
			,[minimum_2]
			,[minimum_3]
			,[minimum_4]
			,[minimum_5]
			,[minimum_6]
			,[minimum_7]
			,[minimum_8]
			,[minimum_9]
			,[minimum_10]
			,[minimum_11]
			,[minimum_12]
			,[fullTime_0]
			,[fullTime_1]
			,[fullTime_2]
			,[fullTime_3]
			,[fullTime_4]
			,[fullTime_5]
			,[fullTime_6]
			,[fullTime_7]
			,[fullTime_8]
			,[fullTime_9]
			,[fullTime_10]
			,[fullTime_11]
			,[fullTime_12]
			,[total_0]
			,[total_1]
			,[total_2]
			,[total_3]
			,[total_4]
			,[total_5]
			,[total_6]
			,[total_7]
			,[total_8]
			,[total_9]
			,[total_10]
			,[total_11]
			,[total_12]
			,[group_0]
			,[group_1]
			,[group_2]
			,[group_3]
			,[group_4]
			,[group_5]
			,[group_6]
			,[group_7]
			,[group_8]
			,[group_9]
			,[group_10]
			,[group_11]
			,[group_12]
			,[S4980H_0]
			,[S4980H_1]
			,[S4980H_2]
			,[S4980H_3]
			,[S4980H_4]
			,[S4980H_5]
			,[S4980H_6]
			,[S4980H_7]
			,[S4980H_8]
			,[S4980H_9]
			,[S4980H_10]
			,[S4980H_11]
			,[S4980H_12]
			,[disableChanges])
	SELECT      
			@EmployerTaxID
			,@name
			,@isForeignAddress
			,@address
			,@address2
			,@city
			,@state
			,@zip
			,@country
			,@phoneNumber
			,@contactName
			,@signTitle
			,@signDate
			,@originCode
			,@SHOPIdentifier
			,@totalNumberEE
			,@totalNumberForms
			,@eligibility_A
			,@eligibility_B
			,@eligibility_C
			,@eligibility_D
			,@lockEmployer
			,@formType
			,@isCompany
			,@status
			,@CompanyId
			,@teamId
			,@lockCompany 
			,getdate() as lastEdit
			,@filingYear
			,@isCorrected
			,@isAuthoritative
			,getdate() as lastUploadDate
			,@minimum_0
			,@minimum_1
			,@minimum_2
			,@minimum_3
			,@minimum_4
			,@minimum_5
			,@minimum_6
			,@minimum_7
			,@minimum_8
			,@minimum_9
			,@minimum_10
			,@minimum_11
			,@minimum_12
			,@fullTime_0
			,@fullTime_1
			,@fullTime_2
			,@fullTime_3
			,@fullTime_4
			,@fullTime_5
			,@fullTime_6
			,@fullTime_7
			,@fullTime_8
			,@fullTime_9
			,@fullTime_10
			,@fullTime_11
			,@fullTime_12
			,@total_0
			,@total_1
			,@total_2
			,@total_3
			,@total_4
			,@total_5
			,@total_6
			,@total_7
			,@total_8
			,@total_9
			,@total_10
			,@total_11
			,@total_12
			,@group_0
			,@group_1
			,@group_2
			,@group_3
			,@group_4
			,@group_5
			,@group_6
			,@group_7
			,@group_8
			,@group_9
			,@group_10
			,@group_11
			,@group_12
			,@S4980H_0
			,@S4980H_1
			,@S4980H_2
			,@S4980H_3
			,@S4980H_4
			,@S4980H_5
			,@S4980H_6
			,@S4980H_7
			,@S4980H_8
			,@S4980H_9
			,@S4980H_10
			,@S4980H_11
			,@S4980H_12
			,@disableChanges
	END
 ELSE
	UPDATE [dbo].[Employer] SET 
			name=@name
			,isForeignAddress=@isForeignAddress
			,[address]=@address
			,address2=@address2
			,city=@city
			,[state]=@state
			,zip=@zip
			,country=@country
			,phoneNumber=@phoneNumber
			,contactName=@contactName
			,signTitle=@signTitle
			,signDate=@signDate
			,originCode=@originCode
			,SHOPIdentifier=@SHOPIdentifier
			,totalNumberEE=@totalNumberEE
			,totalNumberForms=@totalNumberForms
			,eligibility_A=@eligibility_A
			,eligibility_B=@eligibility_B
			,eligibility_C=@eligibility_C
			,eligibility_D=@eligibility_D
			,lockEmployer=@lockEmployer
			,formType=@formType
			,isCompany=@isCompany
			,[status]=@status
			,CompanyId=@CompanyId
			,teamId=@teamId
			,lockCompany=@lockCompany 
			,lastEdit=getdate()
			,filingYear=@filingYear
			,isCorrected=@isCorrected
			,isAuthoritative=@isAuthoritative
			,lastUploadDate=getdate()
			,minimum_0 = @minimum_0
			,minimum_1 = @minimum_1
			,minimum_2 = @minimum_2
			,minimum_3 = @minimum_3
			,minimum_4 = @minimum_4
			,minimum_5 = @minimum_5
			,minimum_6 = @minimum_6
			,minimum_7 = @minimum_7
			,minimum_8 = @minimum_8
			,minimum_9 = @minimum_9
			,minimum_10 = @minimum_10
			,minimum_11 = @minimum_11
			,minimum_12 = @minimum_12
			,fullTime_0 = @fullTime_0
			,fullTime_1 = @fullTime_1
			,fullTime_2 = @fullTime_2
			,fullTime_3 = @fullTime_3
			,fullTime_4 = @fullTime_4
			,fullTime_5 = @fullTime_5
			,fullTime_6 = @fullTime_6
			,fullTime_7 = @fullTime_7
			,fullTime_8 = @fullTime_8
			,fullTime_9 = @fullTime_9
			,fullTime_10 = @fullTime_10
			,fullTime_11 = @fullTime_11
			,fullTime_12 = @fullTime_12
			,total_0 = @total_0
			,total_1 = @total_1
			,total_2 = @total_2
			,total_3 = @total_3
			,total_4 = @total_4
			,total_5 = @total_5
			,total_6 = @total_6
			,total_7 = @total_7
			,total_8 = @total_8
			,total_9 = @total_9
			,total_10 = @total_10
			,total_11 = @total_11
			,total_12 = @total_12
			,group_0 = @group_0
			,group_1 = @group_1
			,group_2 = @group_2
			,group_3 = @group_3
			,group_4 = @group_4
			,group_5 = @group_5
			,group_6 = @group_6
			,group_7 = @group_7
			,group_8 = @group_8
			,group_9 = @group_9
			,group_10 = @group_10
			,group_11 = @group_11
			,group_12 = @group_12
			,S4980H_0 = @S4980H_0
			,S4980H_1 = @S4980H_1
			,S4980H_2 = @S4980H_2
			,S4980H_3 = @S4980H_3
			,S4980H_4 = @S4980H_4
			,S4980H_5 = @S4980H_5
			,S4980H_6 = @S4980H_6
			,S4980H_7 = @S4980H_7
			,S4980H_8 = @S4980H_8
			,S4980H_9 = @S4980H_9
			,S4980H_10 = @S4980H_10
			,S4980H_11 = @S4980H_11
			,S4980H_12 = @S4980H_12
			,disableChanges = @disableChanges
	WHERE [taxid]=@EmployerTaxID
return

GO
/****** Object:  StoredProcedure [dbo].[usp_EmployerMSelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_EmployerMSelect](
@CompanyTaxID varchar(10) = NULL
,@EmployerTaxID varchar(10) = NULL
)
AS
BEGIN
	--EXEC [usp_EmployerSelect] 905597801
	SET NOCOUNT ON;

	SELECT 
	CompanyTaxID
	,EmployerTaxID
	,CompanyId
	,ID
	,[name]
	,[isForeignAddress]
	,[address]
	,[address2]
	,[city]
	,[state]
	,[zip]
	,[country]
	,[phoneNumber]
	,[contactName]
	,[signTitle]
	,[signDate]
	,[originCode]
	,[SHOPIdentifier]
	,[totalNumberEE]
	,[totalNumberForms]
	,[eligibility_A]
	,[eligibility_B]
	,[eligibility_C]
	,[eligibility_D]
	,[lockEmployer]
	,[formType]
	,[isCompany]
	,[status]
	,[teamId]
	,[lockCompany]
	,[lastEdit]
	,[filingYear]
	,[isCorrected]
    ,[isAuthoritative]
	,[lastUploadDate]
	,[minimum_0]
    ,[minimum_1]
    ,[minimum_2]
    ,[minimum_3]
    ,[minimum_4]
    ,[minimum_5]
    ,[minimum_6]
    ,[minimum_7]
    ,[minimum_8]
    ,[minimum_9]
    ,[minimum_10]
    ,[minimum_11]
    ,[minimum_12]
    ,[fullTime_0]
    ,[fullTime_1]
    ,[fullTime_2]
    ,[fullTime_3]
    ,[fullTime_4]
    ,[fullTime_5]
    ,[fullTime_6]
    ,[fullTime_7]
    ,[fullTime_8]
    ,[fullTime_9]
    ,[fullTime_10]
    ,[fullTime_11]
    ,[fullTime_12]
    ,[total_0]
    ,[total_1]
    ,[total_2]
    ,[total_3]
    ,[total_4]
    ,[total_5]
    ,[total_6]
    ,[total_7]
    ,[total_8]
    ,[total_9]
    ,[total_10]
    ,[total_11]
    ,[total_12]
    ,[group_0]
    ,[group_1]
    ,[group_2]
    ,[group_3]
    ,[group_4]
    ,[group_5]
    ,[group_6]
    ,[group_7]
    ,[group_8]
    ,[group_9]
    ,[group_10]
    ,[group_11]
    ,[group_12]
    ,[S4980H_0]
    ,[S4980H_1]
    ,[S4980H_2]
    ,[S4980H_3]
    ,[S4980H_4]
    ,[S4980H_5]
    ,[S4980H_6]
    ,[S4980H_7]
    ,[S4980H_8]
    ,[S4980H_9]
    ,[S4980H_10]
    ,[S4980H_11]
    ,[S4980H_12]
    ,[disableChanges]
	from (
		SELECT ee.[taxid] as CompanyTaxID
		,ee.[taxid] as EmployerTaxID
		,ee.[CompanyId] as CompanyId
		,ee.[id] as ID
		,ee.[name]
		,ee.[isForeignAddress]
		,ee.[address]
		,ee.[address2]
		,ee.[city]
		,ee.[state]
		,ee.[zip]
		,ee.[country]
		,ee.[phoneNumber]
		,ee.[contactName]
		,ee.[signTitle]
		,ee.[signDate]
		,ee.[originCode]
		,ee.[SHOPIdentifier]
		,ee.[totalNumberEE]
		,ee.[totalNumberForms]
		,ee.[eligibility_A]
		,ee.[eligibility_B]
		,ee.[eligibility_C]
		,ee.[eligibility_D]
		,ee.[lockEmployer]
		,ee.[formType]
		,ee.[isCompany]
		,ee.[status]
		,ee.[teamId]
		--,ee.[CompanyId]
		,ee.[lockCompany]
		,ee.[lastEdit]
		,ee.[filingYear]
		,ee.[isCorrected]
		,ee.[isAuthoritative]
		,ee.[lastUploadDate]
		,ee.[minimum_0]
		,ee.[minimum_1]
		,ee.[minimum_2]
		,ee.[minimum_3]
		,ee.[minimum_4]
		,ee.[minimum_5]
		,ee.[minimum_6]
		,ee.[minimum_7]
		,ee.[minimum_8]
		,ee.[minimum_9]
		,ee.[minimum_10]
		,ee.[minimum_11]
		,ee.[minimum_12]
		,ee.[fullTime_0]
		,ee.[fullTime_1]
		,ee.[fullTime_2]
		,ee.[fullTime_3]
		,ee.[fullTime_4]
		,ee.[fullTime_5]
		,ee.[fullTime_6]
		,ee.[fullTime_7]
		,ee.[fullTime_8]
		,ee.[fullTime_9]
		,ee.[fullTime_10]
		,ee.[fullTime_11]
		,ee.[fullTime_12]
		,ee.[total_0]
		,ee.[total_1]
		,ee.[total_2]
		,ee.[total_3]
		,ee.[total_4]
		,ee.[total_5]
		,ee.[total_6]
		,ee.[total_7]
		,ee.[total_8]
		,ee.[total_9]
		,ee.[total_10]
		,ee.[total_11]
		,ee.[total_12]
		,ee.[group_0]
		,ee.[group_1]
		,ee.[group_2]
		,ee.[group_3]
		,ee.[group_4]
		,ee.[group_5]
		,ee.[group_6]
		,ee.[group_7]
		,ee.[group_8]
		,ee.[group_9]
		,ee.[group_10]
		,ee.[group_11]
		,ee.[group_12]
		,ee.[S4980H_0]
		,ee.[S4980H_1]
		,ee.[S4980H_2]
		,ee.[S4980H_3]
		,ee.[S4980H_4]
		,ee.[S4980H_5]
		,ee.[S4980H_6]
		,ee.[S4980H_7]
		,ee.[S4980H_8]
		,ee.[S4980H_9]
		,ee.[S4980H_10]
		,ee.[S4980H_11]
		,ee.[S4980H_12]
		,ee.[disableChanges]
		FROM [dbo].[Employer] ee
		WHERE (1=1) 
		AND ee.isCompany = 1
		AND (@CompanyTaxID is NULL or ee.[taxid]=@CompanyTaxID)
		AND (@EmployerTaxID is NULL or ee.[taxid]=@EmployerTaxID)
		UNION 
		SELECT ee.[taxid] as CompanyTaxID
		,af.[taxid] as EmployerTaxID
		,af.[CompanyId] as CompanyId
		,af.[id] as ID
		,af.[name]
		,af.[isForeignAddress]
		,af.[address]
		,af.[address2]
		,af.[city]
		,af.[state]
		,af.[zip]
		,af.[country]
		,af.[phoneNumber]
		,af.[contactName]
		,af.[signTitle]
		,af.[signDate]
		,af.[originCode]
		,af.[SHOPIdentifier]
		,af.[totalNumberEE]
		,af.[totalNumberForms]
		,af.[eligibility_A]
		,af.[eligibility_B]
		,af.[eligibility_C]
		,af.[eligibility_D]
		,af.[lockEmployer]
		,af.[formType]
		,af.[isCompany]
		,af.[status]
		--,af.[employerId]
		,af.[teamId]
		,af.[lockCompany]
		,af.[lastEdit]
		,af.[filingYear]
		,af.[isCorrected]
		,af.[isAuthoritative]
		,af.[lastUploadDate]
		,af.[minimum_0]
		,af.[minimum_1]
		,af.[minimum_2]
		,af.[minimum_3]
		,af.[minimum_4]
		,af.[minimum_5]
		,af.[minimum_6]
		,af.[minimum_7]
		,af.[minimum_8]
		,af.[minimum_9]
		,af.[minimum_10]
		,af.[minimum_11]
		,af.[minimum_12]
		,af.[fullTime_0]
		,af.[fullTime_1]
		,af.[fullTime_2]
		,af.[fullTime_3]
		,af.[fullTime_4]
		,af.[fullTime_5]
		,af.[fullTime_6]
		,af.[fullTime_7]
		,af.[fullTime_8]
		,af.[fullTime_9]
		,af.[fullTime_10]
		,af.[fullTime_11]
		,af.[fullTime_12]
		,af.[total_0]
		,af.[total_1]
		,af.[total_2]
		,af.[total_3]
		,af.[total_4]
		,af.[total_5]
		,af.[total_6]
		,af.[total_7]
		,af.[total_8]
		,af.[total_9]
		,af.[total_10]
		,af.[total_11]
		,af.[total_12]
		,af.[group_0]
		,af.[group_1]
		,af.[group_2]
		,af.[group_3]
		,af.[group_4]
		,af.[group_5]
		,af.[group_6]
		,af.[group_7]
		,af.[group_8]
		,af.[group_9]
		,af.[group_10]
		,af.[group_11]
		,af.[group_12]
		,af.[S4980H_0]
		,af.[S4980H_1]
		,af.[S4980H_2]
		,af.[S4980H_3]
		,af.[S4980H_4]
		,af.[S4980H_5]
		,af.[S4980H_6]
		,af.[S4980H_7]
		,af.[S4980H_8]
		,af.[S4980H_9]
		,af.[S4980H_10]
		,af.[S4980H_11]
		,af.[S4980H_12]
		,af.[disableChanges]
		FROM [dbo].[Employer] ee
		Join [dbo].[Employer] af on (af.[CompanyId]=ee.id)
		WHERE (1=1) 
		AND (@CompanyTaxID is NULL or ee.[taxid]=@CompanyTaxID)
		AND (@EmployerTaxID is NULL or af.[taxid]=@EmployerTaxID)
		) EmployersList
	WHERE (1=1)
	order by CompanyTaxID
	,CompanyId
	,ID
	,EmployerTaxID
END
Return

GO
/****** Object:  StoredProcedure [dbo].[usp_EmployerPlanAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE proc [dbo].[usp_EmployerPlanAdd](
   @CompanyTaxId VARCHAR(10)
  ,@name varchar(70) = NULL
  ,@medicalPlan int = NULL
  ,@bandingType varchar(50) = NULL
  ,@offeredSpouse smallint = NULL
  ,@offeredDependents smallint = NULL
  ,@waitingDays int = NULL
  ,@eligibile1stOfMonth smallint = NULL
  ,@fundingType varchar(50) = NULL
  ,@planRenewal int = NULL
  ,@planTermTermination smallint = NULL
  ,@minimumValue smallint = NULL
  ,@code1A smallint = NULL
  ,@code1B smallint = NULL
  ,@code1C smallint = NULL
  ,@code1D smallint = NULL
  ,@code1E smallint = NULL
  ,@code1F smallint = NULL
  ,@code1G smallint = NULL
  ,@code1H smallint = NULL
  ,@code1I smallint = NULL
  ,@code2A smallint = NULL
  ,@code2B smallint = NULL
  ,@code2C smallint = NULL
  ,@code2D smallint = NULL
  ,@code2E smallint = NULL
  ,@code2F smallint = NULL
  ,@code2G smallint = NULL
  ,@code2H smallint = NULL
  ,@code2I smallint = NULL
  )
  AS
  BEGIN
  SET NOCOUNT ON;
  DECLARE @CompanyId VARCHAR(10)
  EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId
  IF @CompanyId IS NULL
	  RETURN

  IF NOT EXISTS (SELECT 1 from [dbo].[EmployerPlan] where [employerId]=@CompanyId AND [name]=@name)
	BEGIN
		INSERT INTO [dbo].[EmployerPlan]
			  ([employerId]
			  ,[name]
			  ,[medicalPlan]
			  ,[bandingType]
			  ,[offeredSpouse]
			  ,[offeredDependents]
			  ,[waitingDays]
			  ,[eligibile1stOfMonth]
			  ,[fundingType]
			  ,[planRenewal]
			  ,[planTermTermination]
			  ,[minimumValue]
			  ,[code1A]
			  ,[code1B]
			  ,[code1C]
			  ,[code1D]
			  ,[code1E]
			  ,[code1F]
			  ,[code1G]
			  ,[code1H]
			  ,[code1I]
			  ,[code2A]
			  ,[code2B]
			  ,[code2C]
			  ,[code2D]
			  ,[code2E]
			  ,[code2F]
			  ,[code2G]
			  ,[code2H]
			  ,[code2I]
			  )
		SELECT      
			  @CompanyId
			  ,@name
			  ,@medicalPlan
			  ,@bandingType
			  ,@offeredSpouse
			  ,@offeredDependents
			  ,@waitingDays
			  ,@eligibile1stOfMonth
			  ,@fundingType
			  ,@planRenewal
			  ,@planTermTermination
			  ,@minimumValue
			  ,@code1A
			  ,@code1B
			  ,@code1C
			  ,@code1D
			  ,@code1E
			  ,@code1F
			  ,@code1G
			  ,@code1H
			  ,@code1I
			  ,@code2A
			  ,@code2B
			  ,@code2C
			  ,@code2D
			  ,@code2E
			  ,@code2F
			  ,@code2G
			  ,@code2H
			  ,@code2I
	END
	ELSE
	SELECT 'Employer Plan: '+ @name + ' already exists.' 
RETURN
END


GO
/****** Object:  StoredProcedure [dbo].[usp_EmployerPlanDelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_EmployerPlanDelete](
@CompanyTaxId VARCHAR(10)
,@name VARCHAR(70) = NULL
)
AS

SET NOCOUNT ON;
DECLARE @CompanyId VARCHAR(10)
EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId
IF @CompanyId IS NULL
	RETURN

DELETE FROM [dbo].[EmployerPlan] 
WHERE [employerId]=@CompanyId 
AND (@name IS NULL OR  [name] = @name)

RETURN

GO
/****** Object:  StoredProcedure [dbo].[usp_EmployerPlanModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE proc [dbo].[usp_EmployerPlanModify](
   @CompanyTaxId VARCHAR(10)
  ,@name varchar(70) = NULL
  ,@medicalPlan int = NULL
  ,@bandingType varchar(50) = NULL
  ,@offeredSpouse smallint = NULL
  ,@offeredDependents smallint = NULL
  ,@waitingDays int = NULL
  ,@eligibile1stOfMonth smallint = NULL
  ,@fundingType varchar(50) = NULL
  ,@planRenewal int = NULL
  ,@planTermTermination smallint = NULL
  ,@minimumValue smallint = NULL
  ,@code1A smallint = NULL
  ,@code1B smallint = NULL
  ,@code1C smallint = NULL
  ,@code1D smallint = NULL
  ,@code1E smallint = NULL
  ,@code1F smallint = NULL
  ,@code1G smallint = NULL
  ,@code1H smallint = NULL
  ,@code1I smallint = NULL
  ,@code2A smallint = NULL
  ,@code2B smallint = NULL
  ,@code2C smallint = NULL
  ,@code2D smallint = NULL
  ,@code2E smallint = NULL
  ,@code2F smallint = NULL
  ,@code2G smallint = NULL
  ,@code2H smallint = NULL
  ,@code2I smallint = NULL
  )
  AS
  BEGIN

  SET NOCOUNT ON;
  DECLARE @CompanyId VARCHAR(10)
  EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId
  IF @CompanyId IS NULL
	  RETURN

  IF NOT EXISTS (SELECT 1 from [dbo].[EmployerPlan] where [employerId]=@CompanyId AND [name]=@name)
	BEGIN
		INSERT INTO [dbo].[EmployerPlan]
			  ([employerId]
			  ,[name]
			  ,[medicalPlan]
			  ,[bandingType]
			  ,[offeredSpouse]
			  ,[offeredDependents]
			  ,[waitingDays]
			  ,[eligibile1stOfMonth]
			  ,[fundingType]
			  ,[planRenewal]
			  ,[planTermTermination]
			  ,[minimumValue]
			  ,[code1A]
			  ,[code1B]
			  ,[code1C]
			  ,[code1D]
			  ,[code1E]
			  ,[code1F]
			  ,[code1G]
			  ,[code1H]
			  ,[code1I]
			  ,[code2A]
			  ,[code2B]
			  ,[code2C]
			  ,[code2D]
			  ,[code2E]
			  ,[code2F]
			  ,[code2G]
			  ,[code2H]
			  ,[code2I]
			  )
		SELECT      
			   @CompanyId
			  ,@name
			  ,@medicalPlan
			  ,@bandingType
			  ,@offeredSpouse
			  ,@offeredDependents
			  ,@waitingDays
			  ,@eligibile1stOfMonth
			  ,@fundingType
			  ,@planRenewal
			  ,@planTermTermination
			  ,@minimumValue
			  ,@code1A
			  ,@code1B
			  ,@code1C
			  ,@code1D
			  ,@code1E
			  ,@code1F
			  ,@code1G
			  ,@code1H
			  ,@code1I
			  ,@code2A
			  ,@code2B
			  ,@code2C
			  ,@code2D
			  ,@code2E
			  ,@code2F
			  ,@code2G
			  ,@code2H
			  ,@code2I
	END
  ELSE
	UPDATE [dbo].[EmployerPlan] SET 
		medicalPlan = @medicalPlan
		,bandingType = @bandingType
		,offeredSpouse = @offeredSpouse
		,offeredDependents = @offeredDependents
		,waitingDays = @waitingDays
		,eligibile1stOfMonth = @eligibile1stOfMonth
		,fundingType = @fundingType
		,planRenewal = @planRenewal
		,planTermTermination = @planTermTermination
		,minimumValue = @minimumValue
		,code1A = @code1A
		,code1B = @code1B
		,code1C = @code1C
		,code1D = @code1D
		,code1E = @code1E
		,code1F = @code1F
		,code1G = @code1G
		,code1H = @code1H
		,code1I = @code1I
		,code2A = @code2A
		,code2B = @code2B
		,code2C = @code2C
		,code2D = @code2D
		,code2E = @code2E
		,code2F = @code2F
		,code2G = @code2G
		,code2H = @code2H
		,code2I = @code2I
	WHERE [employerId]=@CompanyId AND [name] = @name
RETURN 
END

GO
/****** Object:  StoredProcedure [dbo].[usp_EmployerPlanSelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  CREATE proc [dbo].[usp_EmployerPlanSelect](
  @CompanyTaxId VARCHAR(10) = NULL
  ,@name VARCHAR(70) = NULL
  )
  AS
  BEGIN 
	SET NOCOUNT ON;
	DECLARE @CompanyId INT
	EXEC @CompanyId = [dbo].[usp_GetCompanyId] @CompanyTaxId

	SELECT [id]
      ,[employerId]
      ,[name]
      ,[medicalPlan]
      ,[bandingType]
      ,[offeredSpouse]
      ,[offeredDependents]
      ,[waitingDays]
      ,[eligibile1stOfMonth]
      ,[fundingType]
      ,[planRenewal]
      ,[planTermTermination]
      ,[minimumValue]
      ,[code1A]
      ,[code1B]
      ,[code1C]
      ,[code1D]
      ,[code1E]
      ,[code1F]
      ,[code1G]
      ,[code1H]
      ,[code1I]
      ,[code2A]
      ,[code2B]
      ,[code2C]
      ,[code2D]
      ,[code2E]
      ,[code2F]
      ,[code2G]
      ,[code2H]
      ,[code2I]
	FROM [dbo].[EmployerPlan]
	WHERE (@name IS NULL OR  [name] = @name)
	AND (@CompanyId = 0 OR  [employerId] = @CompanyId)
  END

GO
/****** Object:  StoredProcedure [dbo].[usp_Get_Form1094_B_Data]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Get_Form1094_B_Data](
@CompanyTaxID varchar(10) = NULL
,@EmployerTaxID varchar(10) = NULL
)
as
set nocount on;

EXEC [dbo].[usp_EmployerSelect] @EmployerTaxID

return

GO
/****** Object:  StoredProcedure [dbo].[usp_Get_Form1094_C_Data]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Get_Form1094_C_Data](
@CompanyTaxID varchar(10) = NULL
,@EmployerTaxID varchar(10) = NULL
)
as
set nocount on;

EXEC [dbo].[usp_EmployerSelect] @CompanyTaxID
return

GO
/****** Object:  StoredProcedure [dbo].[usp_Get_Form1095_B_Data]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Get_Form1095_B_Data](
@EmpTaxID varchar(10) = NULL
)
as
set nocount on;

/* 
	get all employee codes that are tied to a specific employer 
*/
EXEC [dbo].[usp_EmployeeCodeSelect]
@EmployerTaxId = @EmpTaxID

/*
	Get all covered individuals for the specified employer
*/
EXEC [dbo].[usp_CoveredIndividualSelect]
@EmployerTaxId = @EmpTaxID

/*
	Get all employees that have employee codes for the specified employer
*/
EXEC [dbo].[usp_EmployeeSelect]
@EmployerTaxId = @EmpTaxID

/* 
	Get all employers with a specific tax id
*/
EXEC [dbo].[usp_EmployerSelect]
@EmployerTaxID = @EmpTaxID

return

GO
/****** Object:  StoredProcedure [dbo].[usp_Get_Form1095_C_Data]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Get_Form1095_C_Data](
@EmpTaxID varchar(10)

)
as
set nocount on;

/* 
	get all employee codes that are tied to a specific employer 
*/
EXEC [dbo].[usp_EmployeeCodeSelect]
@EmployerTaxId = @EmpTaxID

/*
	Get all covered individuals for the specified employer
*/
EXEC [dbo].[usp_CoveredIndividualSelect]
@EmployerTaxId = @EmpTaxID

/*
	Get all employees that have employee codes for the specified employer
*/
EXEC [dbo].[usp_EmployeeSelect]
@EmployerTaxId = @EmpTaxID

/* 
	Get all employers with a specific tax id
*/
EXEC [dbo].[usp_EmployerSelect]
@EmployerTaxID = @EmpTaxID

return

GO
/****** Object:  StoredProcedure [dbo].[usp_GetCompanyId]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetCompanyId](@CompanyTaxId varchar(50))
AS
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
SELECT @EmployerId=id FROM [dbo].[Employer] WHERE taxid=@CompanyTaxId AND isCompany = 1 
RETURN @EmployerId
GO
/****** Object:  StoredProcedure [dbo].[usp_GetEmployeeCodeId]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetEmployeeCodeId](@EmployerTaxId varchar(50), @ssn varchar(50))
AS
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId=[usp_getEmployerId] @EmployerTaxId

DECLARE @EmployeeId INT = NULL
EXEC @EmployeeId=[usp_getEmployeeId] @ssn

DECLARE @employeeCodeId int = NULL 
SELECT @employeeCodeId=id FROM [dbo].[EmployeeCode] WHERE employerId=@EmployerId AND employeeId=@EmployeeId 

RETURN @employeeCodeId
GO
/****** Object:  StoredProcedure [dbo].[usp_GetEmployeeId]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetEmployeeId](@ssn varchar(50))
AS
SET NOCOUNT ON;
DECLARE @EmployeeId INT = NULL
SELECT @EmployeeId=id FROM [dbo].[Employee] WHERE ssn=@ssn
RETURN @EmployeeId
GO
/****** Object:  StoredProcedure [dbo].[usp_GetEmployerId]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetEmployerId](@EmployerTaxId varchar(50))
AS
SET NOCOUNT ON;

DECLARE @EmployerId INT = NULL
SELECT @EmployerId=id FROM [dbo].[Employer] WHERE taxid=@EmployerTaxId

RETURN @EmployerId
GO
/****** Object:  StoredProcedure [dbo].[usp_GetPlanId]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetPlanId](@EmployerTaxId varchar(50), @planName varchar(70))
AS
SET NOCOUNT ON;
DECLARE @EmployerId INT = NULL
EXEC @EmployerId=[usp_GetEmployerId] @EmployerTaxId

DECLARE @planId int = NULL
SELECT @planId=id FROM [dbo].[EmployerPlan] WHERE employerId=@EmployerId AND name=@planName 
RETURN @planId
GO
/****** Object:  StoredProcedure [dbo].[usp_PremiumAdd]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_PremiumAdd](
  @CompanyTaxId VARCHAR(10) = NULL
  ,@name VARCHAR(70) = NULL
  ,@bandingName VARCHAR(20) = NULL
  ,@bandingValueStart DECIMAL(6, 2) = NULL
  ,@bandingValueEnd DECIMAL(6, 2) = NULL
  ,@amount DECIMAL(6, 2) = NULL
  )
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PlanId INT
	EXEC @PlanId = [dbo].[usp_GetPlanId] @CompanyTaxId, @name
	IF @PlanId IS NULL
	  RETURN

	BEGIN
		INSERT INTO [dbo].[Premium]
				([EmployerPlanId]
				,[bandingName]
				,[bandingValueStart]
				,[bandingValueEnd]
				,[amount]
				)
		SELECT      
				@PlanId
				,@bandingName
				,@bandingValueStart
				,@bandingValueEnd
				,@amount
	END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_PremiumDelete]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_PremiumDelete](
	@CompanyTaxId VARCHAR(10) = NULL
   ,@name VARCHAR(70) = NULL
   ,@bandingName VARCHAR(20) = NULL
   )
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PlanId INT
	EXEC @PlanId = [dbo].[usp_GetPlanId] @CompanyTaxId, @name
	IF @PlanId IS NULL
	  RETURN

	DELETE FROM [dbo].[Premium] 
	WHERE [EmployerPlanId]=@PlanId 
	AND (@bandingName IS NULL OR  [bandingName] = @bandingName)

END

GO
/****** Object:  StoredProcedure [dbo].[usp_PremiumModify]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_PremiumModify](
   @CompanyTaxId VARCHAR(10) = NULL
   ,@name VARCHAR(70) = NULL
   ,@bandingName VARCHAR(20) = NULL
   ,@bandingValueStart DECIMAL(6, 2) = NULL
   ,@bandingValueEnd DECIMAL(6, 2) = NULL
   ,@amount DECIMAL(6, 2) = NULL
   )
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PlanId INT
	EXEC @PlanId = [dbo].[usp_GetPlanId] @CompanyTaxId, @name
	IF @PlanId IS NULL
	  RETURN
	
	IF NOT EXISTS (SELECT 1 FROM [dbo].[Premium] WHERE [EmployerPlanId] = @PlanId AND [bandingName] = @bandingName)
		BEGIN
			INSERT INTO [dbo].[Premium]
				  ([EmployerPlanId]
				  ,[bandingName]
				  ,[bandingValueStart]
				  ,[bandingValueEnd]
				  ,[amount]
				  )
			SELECT      
				   @PlanId
				  ,@bandingName
				  ,@bandingValueStart
				  ,@bandingValueEnd
				  ,@amount
		END
	ELSE
		UPDATE [dbo].[Premium] SET 
			bandingValueStart = @bandingValueStart
			,bandingValueEnd = @bandingValueEnd
			,amount = @amount
		WHERE [EmployerPlanId] = @PlanId AND [bandingName] = @bandingName
	RETURN 
END

GO
/****** Object:  StoredProcedure [dbo].[usp_PremiumSelect]    Script Date: 7/11/2016 12:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_PremiumSelect](
  @CompanyTaxId VARCHAR(10) = NULL
  ,@name VARCHAR(70) = NULL
  ,@bandingName VARCHAR(20) = NULL
  )
  AS
  BEGIN
	SET NOCOUNT ON;
	DECLARE @PlanId INT
	EXEC @PlanId = [dbo].[usp_GetPlanId] @CompanyTaxId, @name

	SELECT [id]
	  ,[bandingName]
      ,[EmployerPlanId]
      ,[bandingValueStart]
      ,[bandingValueEnd]
      ,[amount]
    FROM [dbo].[Premium]
	WHERE (@PlanId = 0 OR  [EmployerPlanId] = @PlanId)
	AND (@bandingName IS NULL OR [bandingName] = @bandingName)

  END

GO
USE [master]
GO
ALTER DATABASE [ACA2016] SET  READ_WRITE 
GO
