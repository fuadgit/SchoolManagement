USE [master]
GO
/****** Object:  Database [SchoolManage]    Script Date: 09/06/2013 ******/
CREATE DATABASE [SchoolManage] 
GO
ALTER DATABASE [SchoolManage] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchoolManage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchoolManage] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SchoolManage] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SchoolManage] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SchoolManage] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SchoolManage] SET ARITHABORT OFF
GO
ALTER DATABASE [SchoolManage] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SchoolManage] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SchoolManage] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SchoolManage] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SchoolManage] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SchoolManage] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SchoolManage] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SchoolManage] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SchoolManage] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SchoolManage] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SchoolManage] SET  DISABLE_BROKER
GO
ALTER DATABASE [SchoolManage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SchoolManage] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SchoolManage] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SchoolManage] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SchoolManage] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SchoolManage] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SchoolManage] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SchoolManage] SET  READ_WRITE
GO
ALTER DATABASE [SchoolManage] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SchoolManage] SET  MULTI_USER
GO
ALTER DATABASE [SchoolManage] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SchoolManage] SET DB_CHAINING OFF
GO
USE [SchoolManage]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Section](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[Section] [varchar](50) NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Section] ON
INSERT [dbo].[Section] ([SectionID], [Section]) VALUES (1, N'A')
INSERT [dbo].[Section] ([SectionID], [Section]) VALUES (2, N'B')
INSERT [dbo].[Section] ([SectionID], [Section]) VALUES (3, N'C')
SET IDENTITY_INSERT [dbo].[Section] OFF
/****** Object:  Table [dbo].[Address]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Line1] [varchar](100) NOT NULL,
	[Line2] [varchar](100) NULL,
	[Thana] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON
INSERT [dbo].[Address] ([AddressID], [Line1], [Line2], [Thana], [City], [PostalCode]) VALUES (1, N'213, Patshala Goli', N'Rayer Bazar', N'Mohammad Pur', N'Dhaka', N'1207')
INSERT [dbo].[Address] ([AddressID], [Line1], [Line2], [Thana], [City], [PostalCode]) VALUES (2, N'250, Godi Ghar', N'Rayer Bazar', N'Mohammad Pur', N'Dhaka', N'1207')
INSERT [dbo].[Address] ([AddressID], [Line1], [Line2], [Thana], [City], [PostalCode]) VALUES (3, N'121, Beside Heart Foundation', N'Mirpur-2', N'Mirpur', N'Dhaka', N'1204')
INSERT [dbo].[Address] ([AddressID], [Line1], [Line2], [Thana], [City], [PostalCode]) VALUES (4, N'Road-7/A, House-41', NULL, N'Dhanmondi', N'Dhaka', N'1209')
SET IDENTITY_INSERT [dbo].[Address] OFF
/****** Object:  Table [dbo].[ExamType]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[ExamName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ExamType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ExamType] ON
INSERT [dbo].[ExamType] ([TypeID], [ExamName]) VALUES (1, N'Class Test')
INSERT [dbo].[ExamType] ([TypeID], [ExamName]) VALUES (2, N'Surprise Test')
INSERT [dbo].[ExamType] ([TypeID], [ExamName]) VALUES (3, N'Monthly Test')
SET IDENTITY_INSERT [dbo].[ExamType] OFF
/****** Object:  Table [dbo].[Contact]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Email], [Phone]) VALUES (1, N'Hizbullah', N'Fuad', NULL, N'01671079475')
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Email], [Phone]) VALUES (2, N'Masud', N'Parves', NULL, N'01618020202')
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Email], [Phone]) VALUES (3, N'Ecrum Bin', N'Islam', NULL, N'01552378761')
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Email], [Phone]) VALUES (4, N'Murshidah', N'Begum', NULL, N'01680278883')
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Email], [Phone]) VALUES (5, N'Abdul', N'Hakim', NULL, N'01712924952')
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Email], [Phone]) VALUES (6, N'Mrs', N'XYZ', NULL, N'01894545266')
INSERT [dbo].[Contact] ([ContactID], [FirstName], [LastName], [Email], [Phone]) VALUES (7, N'Habibul', N'Haq', NULL, N'01555555555')
SET IDENTITY_INSERT [dbo].[Contact] OFF
/****** Object:  Table [dbo].[Class]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[SectionID] [int] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON
INSERT [dbo].[Class] ([ClassID], [Name], [SectionID]) VALUES (1, N'One', 1)
INSERT [dbo].[Class] ([ClassID], [Name], [SectionID]) VALUES (2, N'One', 2)
INSERT [dbo].[Class] ([ClassID], [Name], [SectionID]) VALUES (3, N'One', 3)
INSERT [dbo].[Class] ([ClassID], [Name], [SectionID]) VALUES (4, N'Two', 1)
INSERT [dbo].[Class] ([ClassID], [Name], [SectionID]) VALUES (5, N'Two', 2)
INSERT [dbo].[Class] ([ClassID], [Name], [SectionID]) VALUES (6, N'Two', 3)
INSERT [dbo].[Class] ([ClassID], [Name], [SectionID]) VALUES (7, N'Ten', 1)
INSERT [dbo].[Class] ([ClassID], [Name], [SectionID]) VALUES (8, N'Ten', 2)
INSERT [dbo].[Class] ([ClassID], [Name], [SectionID]) VALUES (9, N'Ten', 3)
SET IDENTITY_INSERT [dbo].[Class] OFF
/****** Object:  Table [dbo].[Parent]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[ParentID] [int] IDENTITY(1,1) NOT NULL,
	[ContactID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_Parent] PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Parent] ON
INSERT [dbo].[Parent] ([ParentID], [ContactID], [AddressID]) VALUES (1, 4, 1)
INSERT [dbo].[Parent] ([ParentID], [ContactID], [AddressID]) VALUES (2, 5, 2)
INSERT [dbo].[Parent] ([ParentID], [ContactID], [AddressID]) VALUES (3, 6, 3)
SET IDENTITY_INSERT [dbo].[Parent] OFF
/****** Object:  Table [dbo].[Teacher]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [int] IDENTITY(1,1) NOT NULL,
	[ContactID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[JoinDate] [date] NOT NULL,
	[Designation] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON
INSERT [dbo].[Teacher] ([TeacherID], [ContactID], [AddressID], [JoinDate], [Designation], [Department]) VALUES (1, 7, 4, CAST(0x25160B00 AS Date), N'Senior Lecturer', N'Programming')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
/****** Object:  Table [dbo].[Subject]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ClassID] [int] NOT NULL,
	[TeacherID] [int] NOT NULL,
	[StartTime] [time](0) NOT NULL,
	[EndTime] [time](0) NOT NULL,
	[Day] [tinyint] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON
INSERT [dbo].[Subject] ([SubjectID], [Name], [ClassID], [TeacherID], [StartTime], [EndTime], [Day]) VALUES (2, N'C Sharp', 1, 1, CAST(0x00A08C0000000000 AS Time), CAST(0x00D0B60000000000 AS Time), 1)
SET IDENTITY_INSERT [dbo].[Subject] OFF
/****** Object:  Table [dbo].[Student]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[BrithDay] [date] NOT NULL,
	[AdmissionDate] [date] NOT NULL,
	[ClassID] [int] NOT NULL,
	[ParentID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON
INSERT [dbo].[Student] ([StudentID], [BrithDay], [AdmissionDate], [ClassID], [ParentID], [ContactID]) VALUES (1, CAST(0xE00E0B00 AS Date), CAST(0x30170B00 AS Date), 1, 1, 1)
INSERT [dbo].[Student] ([StudentID], [BrithDay], [AdmissionDate], [ClassID], [ParentID], [ContactID]) VALUES (2, CAST(0xAE0F0B00 AS Date), CAST(0x30170B00 AS Date), 1, 2, 2)
INSERT [dbo].[Student] ([StudentID], [BrithDay], [AdmissionDate], [ClassID], [ParentID], [ContactID]) VALUES (3, CAST(0x130F0B00 AS Date), CAST(0x30170B00 AS Date), 1, 3, 3)
SET IDENTITY_INSERT [dbo].[Student] OFF
/****** Object:  Table [dbo].[Exam]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[TypeID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[FullMark] [decimal](18, 2) NOT NULL,
	[PassMark] [decimal](18, 2) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Exam] ON
INSERT [dbo].[Exam] ([ExamID], [TypeID], [SubjectID], [FullMark], [PassMark], [Date]) VALUES (1, 1, 2, CAST(100.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), CAST(0x0000A1B500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Exam] OFF
/****** Object:  Table [dbo].[Result]    Script Date: 09/06/2013 22:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[ExamID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[MarksObtained] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Result] ([ExamID], [StudentID], [MarksObtained]) VALUES (1, 1, CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[Result] ([ExamID], [StudentID], [MarksObtained]) VALUES (1, 2, CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[Result] ([ExamID], [StudentID], [MarksObtained]) VALUES (1, 3, CAST(85.00 AS Decimal(18, 2)))
/****** Object:  ForeignKey [FK_Class_Section]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Section] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Section] ([SectionID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Section]
GO
/****** Object:  ForeignKey [FK_Parent_Address]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Parent] CHECK CONSTRAINT [FK_Parent_Address]
GO
/****** Object:  ForeignKey [FK_Parent_Contact]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Parent] CHECK CONSTRAINT [FK_Parent_Contact]
GO
/****** Object:  ForeignKey [FK_Teacher_Address]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Address]
GO
/****** Object:  ForeignKey [FK_Teacher_Contact]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Contact]
GO
/****** Object:  ForeignKey [FK_Subject_Class]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Class]
GO
/****** Object:  ForeignKey [FK_Subject_Teacher]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Teacher]
GO
/****** Object:  ForeignKey [FK_Student_Contact]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ContactID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Contact]
GO
/****** Object:  ForeignKey [FK_Student_Parent]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Parent] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Parent] ([ParentID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Parent]
GO
/****** Object:  ForeignKey [FK_Exam_ExamType]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_ExamType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ExamType] ([TypeID])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_ExamType]
GO
/****** Object:  ForeignKey [FK_Exam_Subject]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Subject]
GO
/****** Object:  ForeignKey [FK_Result_Exam]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Exam] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ExamID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Exam]
GO
/****** Object:  ForeignKey [FK_Result_Student]    Script Date: 09/06/2013 22:17:59 ******/
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Student]
GO
