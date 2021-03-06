USE [master]
GO
/****** Object:  Database [YoraDB]    Script Date: 01-07-2018 12:42:28 ******/
CREATE DATABASE [YoraDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YoraDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\YoraDB.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YoraDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\YoraDB_log.ldf' , SIZE = 10240KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [YoraDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YoraDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YoraDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YoraDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YoraDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YoraDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YoraDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [YoraDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YoraDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YoraDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YoraDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YoraDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YoraDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YoraDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YoraDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YoraDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YoraDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YoraDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YoraDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YoraDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YoraDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YoraDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YoraDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YoraDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YoraDB] SET RECOVERY FULL 
GO
ALTER DATABASE [YoraDB] SET  MULTI_USER 
GO
ALTER DATABASE [YoraDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YoraDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YoraDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YoraDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [YoraDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'YoraDB', N'ON'
GO
ALTER DATABASE [YoraDB] SET QUERY_STORE = OFF
GO
USE [YoraDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [YoraDB]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 01-07-2018 12:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NULL,
	[RoleDescription] [varchar](200) NULL,
	[Active] [bit] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDate] [date] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Active] [bit] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoleMaster] ON 

INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (1, N'kittu', N'aaaaa', 0, 101, CAST(N'2018-07-01' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (2, N'mani', N'bbb', 0, 102, CAST(N'2018-07-02' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (3, N'nani', N'ccc', 0, 103, CAST(N'2018-07-03' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (4, N'teja', N'ddd', 1, 104, CAST(N'2018-07-04' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (5, N'pradeep', N'eee', 0, 105, CAST(N'2018-07-05' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (6, N'mouni', N'fff', 1, 106, CAST(N'2018-07-06' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (7, N'karti', N'ggg', 1, 107, CAST(N'2018-07-07' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (8, N'resh', N'hhh', 1, 108, CAST(N'2018-07-08' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (9, N'seet', N'iii', 1, 109, CAST(N'2018-07-09' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (10, N'ann', N'jjj', 0, 110, CAST(N'2018-07-10' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (11, N'dev', N'kkk', 0, 111, CAST(N'2018-07-11' AS Date))
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [Active], [LastUpdatedBy], [LastUpdatedDate]) VALUES (12, N'manvi', N'lll', 0, 112, CAST(N'2018-12-07' AS Date))
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (1, N'anji', N'anji@gmail.com', N'dfg', 0, 1, CAST(N'2018-06-25T00:00:00.000' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (2, N'pesi', N'pesi@gmail.com', NULL, 0, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (3, N'yora', N'yora@gmail.com', N'yora', 1, 12, CAST(N'2018-06-18T00:00:00.000' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (4, NULL, N'anna@gmail.com', N'anna1', 1, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (5, NULL, N'anna@gmail.com', N'anna1', 1, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (6, N'jain', N'jain@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (7, N'qwerty', N'qwerty@gmail.com', NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (8, N'hari', N'hari@gmail.com', N'hjjk', 1, 2, CAST(N'2018-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (9, N'nari', N'nari@gmail.com', NULL, 1, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (10, N'manesha', N'mani@gmail.com', NULL, 1, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (11, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (12, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (13, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[UserMaster] ([UserId], [Fullname], [EmailId], [password], [Active], [UpdatedBy], [UpdatedDate]) VALUES (14, NULL, NULL, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
/****** Object:  StoredProcedure [dbo].[CreateRoleMaster]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CreateRoleMaster](
@RoleId int,
@RoleName varchar(50),
@RoleDescription varchar(200),
@Active bit,
@LastUpdatedBy int,
@LastUpdatedDate date
)
as
begin
if NOT EXISTS(select 1 from RoleMaster where RoleId=@RoleId)
begin
 insert into RoleMaster(       
		 RoleName,
		 RoleDescription,
		 Active,
		 LastUpdatedBy,
		 LastUpdatedDate
        )
		values(
		@RoleName,
		@RoleDescription,
		1,
		@LastUpdatedBy,
		@LastUpdatedDate
		)
		select @@IDENTITY RoleId
		end
		else
		begin
		update RoleMaster
		set  RoleName=@RoleName,
			 RoleDescription=@RoleDescription,
			 Active=@Active,
			 LastUpdatedBy=@LastUpdatedBy,
			 LastUpdatedDate=@LastUpdatedDate
		end

end
GO
/****** Object:  StoredProcedure [dbo].[createUserMaster]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[createUserMaster](
@UserId int,
@Fullname varchar(50),
@EmailId varchar(50),
@password varchar(50),
@Active bit,
@UpdatedBy int,
@UpdatedDate datetime)

As
Begin
if NOT EXISTS(select 1 from UserMaster where UserId=@UserId)
	Begin 
	insert into UserMaster(
		Fullname,
		EmailId,
		password,
		Active,
		UpdatedBy,
		UpdatedDate)
		values(
		@Fullname,
		@EmailId,
		@password,
		1,
		@UpdatedBy,
		@UpdatedDate)

		select @@IDENTITY UserId
	End
	else
	Begin
	update UserMaster
	set	Fullname=@Fullname,
		EmailId=@EmailId,
		password=@password,
		UpdatedBy=@UpdatedBy,
		UpdatedDate=@UpdatedDate
		where UserId=@UserId 
	end
End
GO
/****** Object:  StoredProcedure [dbo].[deleteRole]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteRole](
@RoleId int
)
as
begin
update RoleMaster set Active=0 where RoleId=@RoleId
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteRoleMaster]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DeleteRoleMaster](
@RoleId int
)
as
begin
update RoleMaster set Active=0 where RoleId=@RoleId
end
GO
/****** Object:  StoredProcedure [dbo].[deleteUserMaster]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteUserMaster](
@UserId int
)
as
begin
update UserMaster set Active= 0 where UserId=@UserId
end
GO
/****** Object:  StoredProcedure [dbo].[GetRoleMaster]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetRoleMaster]
as
begin
select * from RoleMaster where active = 1
end
GO
/****** Object:  StoredProcedure [dbo].[GetUsermaster]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetUsermaster]
as
begin
select * from UserMaster where Active=1
end
GO
/****** Object:  StoredProcedure [dbo].[updateRoleMaster]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updateRoleMaster](
@RoleId int,
@RoleName varchar(50),
@RoleDescription varchar(200)
)

As
Begin
	update RoleMaster
	set	RoleName=@RoleName,
		RoleDescription=@RoleDescription
				
		where RoleId=@RoleId
End
GO
/****** Object:  StoredProcedure [dbo].[updateUserMaster]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updateUserMaster](
@UserId int,
@Fullname varchar(50),
@EmailId varchar(50),
@password varchar(50),
@UpdatedBy int,
@UpdatedDate datetime)

As
Begin
	update UserMaster
	set	Fullname=@Fullname,
		EmailId=@EmailId,
		password=@password,
		UpdatedBy=@UpdatedBy,
		UpdatedDate=@UpdatedDate
		where UserId=@UserId 
End
GO
/****** Object:  StoredProcedure [dbo].[ValidateUser]    Script Date: 01-07-2018 12:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ValidateUser](
@EmailId varchar(50),
@password varchar(50)
)
as
begin
select * from UserMaster where EmailId = @EmailId and password = @password and Active = 1
end

GO
USE [master]
GO
ALTER DATABASE [YoraDB] SET  READ_WRITE 
GO
