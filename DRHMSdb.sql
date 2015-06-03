USE [master]
GO
/****** Object:  Database [DRHMSdb]    Script Date: 4/6/2015 12:56:55 AM ******/
CREATE DATABASE [DRHMSdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DRHMSdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DRHMSdb.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DRHMSdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DRHMSdb_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DRHMSdb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DRHMSdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DRHMSdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DRHMSdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DRHMSdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DRHMSdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DRHMSdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [DRHMSdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DRHMSdb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DRHMSdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DRHMSdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DRHMSdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DRHMSdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DRHMSdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DRHMSdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DRHMSdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DRHMSdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DRHMSdb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DRHMSdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DRHMSdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DRHMSdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DRHMSdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DRHMSdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DRHMSdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DRHMSdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DRHMSdb] SET RECOVERY FULL 
GO
ALTER DATABASE [DRHMSdb] SET  MULTI_USER 
GO
ALTER DATABASE [DRHMSdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DRHMSdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DRHMSdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DRHMSdb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DRHMSdb]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 4/6/2015 12:56:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[bookingid] [int] IDENTITY(10000000,1) NOT NULL,
	[roomtype] [varchar](50) NULL,
	[noofdays] [int] NULL,
	[noofroom] [int] NULL,
	[noofadults] [int] NULL,
	[noofchildren] [int] NULL,
	[checkindate] [varchar](50) NULL,
	[checkoutdate] [varchar](50) NULL,
	[totalamount] [decimal](7, 2) NULL,
	[creditcardtype] [varchar](50) NULL,
	[creditcardno] [char](16) NULL,
	[cvc] [char](3) NULL,
	[cardexpirydate] [date] NULL,
	[remarks] [varchar](100) NULL,
	[customerid] [int] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[bookingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/6/2015 12:56:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[customerid] [int] IDENTITY(111111111,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[passportno] [varchar](9) NULL,
	[gender] [varchar](6) NULL,
	[dob] [date] NULL,
	[address] [varchar](100) NULL,
	[email] [varchar](50) NULL,
	[contactno] [varchar](30) NULL,
	[nationality] [varchar](50) NULL,
	[country] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_Booking]    Script Date: 4/6/2015 12:56:55 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Booking] ON [dbo].[Booking]
(
	[bookingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Customer] FOREIGN KEY([customerid])
REFERENCES [dbo].[Customer] ([customerid])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Customer]
GO
USE [master]
GO
ALTER DATABASE [DRHMSdb] SET  READ_WRITE 
GO
