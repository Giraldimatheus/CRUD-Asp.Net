USE [master]
GO
/****** Object:  Database [Projetovini]    Script Date: 18/01/2023 21:27:47 ******/
CREATE DATABASE [Projetovini]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projetovini', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Projetovini.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projetovini_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Projetovini_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Projetovini] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projetovini].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Projetovini] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Projetovini] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Projetovini] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Projetovini] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Projetovini] SET ARITHABORT OFF 
GO
ALTER DATABASE [Projetovini] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Projetovini] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Projetovini] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Projetovini] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Projetovini] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Projetovini] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Projetovini] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Projetovini] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Projetovini] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Projetovini] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Projetovini] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Projetovini] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Projetovini] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Projetovini] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Projetovini] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Projetovini] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Projetovini] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Projetovini] SET RECOVERY FULL 
GO
ALTER DATABASE [Projetovini] SET  MULTI_USER 
GO
ALTER DATABASE [Projetovini] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Projetovini] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Projetovini] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Projetovini] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Projetovini] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Projetovini] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Projetovini', N'ON'
GO
ALTER DATABASE [Projetovini] SET QUERY_STORE = ON
GO
ALTER DATABASE [Projetovini] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Projetovini]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 18/01/2023 21:27:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](max) NULL,
	[Telefone] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cliente_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Projetovini] SET  READ_WRITE 
GO
