USE [SchoolManagement_DB]
GO
ALTER TABLE [dbo].[STUD_Students_Master] DROP CONSTRAINT [FK_STUD_Students_Master_STUD_StudentAcademic_Details]
GO
ALTER TABLE [dbo].[STUD_Students_Master] DROP CONSTRAINT [FK_STUD_Students_Master_GEN_StudentCategory_Lookup]
GO
ALTER TABLE [dbo].[STUD_Students_Master] DROP CONSTRAINT [FK_STUD_Students_Master_GEN_Standards_Lookup]
GO
ALTER TABLE [dbo].[STUD_Students_Master] DROP CONSTRAINT [FK_STUD_Students_Master_GEN_Religions_Lookup]
GO
ALTER TABLE [dbo].[STUD_StudentAcademic_Details] DROP CONSTRAINT [FK_STUD_StudentAcademic_Details_STUD_Students_Master]
GO
ALTER TABLE [dbo].[STUD_StudentAcademic_Details] DROP CONSTRAINT [FK_STUD_StudentAcademic_Details_GEN_Sections_Lookup]
GO
ALTER TABLE [dbo].[CHQ_ChequeCancellations_Details] DROP CONSTRAINT [FK_CHQ_ChequeCancellations_Details_CHQ_Cheques_Master]
GO
ALTER TABLE [dbo].[STUD_Students_Master] DROP CONSTRAINT [DF_Students_IsActive]
GO
ALTER TABLE [dbo].[STUD_StudentAcademic_Details] DROP CONSTRAINT [DF_StudentAcademicDetails_IsActive]
GO
ALTER TABLE [dbo].[GEN_StudentCategory_Lookup] DROP CONSTRAINT [DF__GEN_Stude__IsAct__25869641]
GO
ALTER TABLE [dbo].[GEN_Religions_Lookup] DROP CONSTRAINT [DF__GEN_Relig__IsAct__1ED998B2]
GO
ALTER TABLE [dbo].[GEN_Languages_Lookup] DROP CONSTRAINT [DF__GEN_Langu__IsAct__1BFD2C07]
GO
ALTER TABLE [dbo].[CHQ_ChequeCancellations_Details] DROP CONSTRAINT [DF_ChequeCancellations_IsActive]
GO
/****** Object:  Table [dbo].[STUD_Students_Master]    Script Date: 4/24/2017 10:49:22 PM ******/
DROP TABLE [dbo].[STUD_Students_Master]
GO
/****** Object:  Table [dbo].[STUD_StudentAcademic_Details]    Script Date: 4/24/2017 10:49:22 PM ******/
DROP TABLE [dbo].[STUD_StudentAcademic_Details]
GO
/****** Object:  Table [dbo].[GEN_StudentCategory_Lookup]    Script Date: 4/24/2017 10:49:22 PM ******/
DROP TABLE [dbo].[GEN_StudentCategory_Lookup]
GO
/****** Object:  Table [dbo].[GEN_Standards_Lookup]    Script Date: 4/24/2017 10:49:22 PM ******/
DROP TABLE [dbo].[GEN_Standards_Lookup]
GO
/****** Object:  Table [dbo].[GEN_Religions_Lookup]    Script Date: 4/24/2017 10:49:22 PM ******/
DROP TABLE [dbo].[GEN_Religions_Lookup]
GO
/****** Object:  Table [dbo].[GEN_Languages_Lookup]    Script Date: 4/24/2017 10:49:22 PM ******/
DROP TABLE [dbo].[GEN_Languages_Lookup]
GO
/****** Object:  Table [dbo].[CHQ_ChequeCancellations_Details]    Script Date: 4/24/2017 10:49:22 PM ******/
DROP TABLE [dbo].[CHQ_ChequeCancellations_Details]
GO
/****** Object:  Table [dbo].[CHQ_ChequeCancellations_Details]    Script Date: 4/24/2017 10:49:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHQ_ChequeCancellations_Details](
	[ChqCancel_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Cheque_ID] [numeric](18, 0) NULL,
	[EnteredOn] [datetimeoffset](0) NULL,
	[EnteredBy_ID] [numeric](18, 0) NULL,
	[Login_ID] [numeric](18, 0) NULL,
	[CancelledDate] [date] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CHQ_ChequeCancellations_Details] PRIMARY KEY CLUSTERED 
(
	[ChqCancel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_Languages_Lookup]    Script Date: 4/24/2017 10:49:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_Languages_Lookup](
	[Language_Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_GEN_Languages_Lookup] PRIMARY KEY CLUSTERED 
(
	[Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_Religions_Lookup]    Script Date: 4/24/2017 10:49:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_Religions_Lookup](
	[Religion_Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_GEN_Religions_Lookup] PRIMARY KEY CLUSTERED 
(
	[Religion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_Standards_Lookup]    Script Date: 4/24/2017 10:49:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_Standards_Lookup](
	[Standard_Id] [tinyint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Section_Id] [tinyint] NULL,
 CONSTRAINT [PK_GEN_Standards_Lookup] PRIMARY KEY CLUSTERED 
(
	[Standard_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_StudentCategory_Lookup]    Script Date: 4/24/2017 10:49:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_StudentCategory_Lookup](
	[Category_Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_GEN_StudentCategory_Lookup] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUD_StudentAcademic_Details]    Script Date: 4/24/2017 10:49:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUD_StudentAcademic_Details](
	[AcademicDet_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[RegNo] [varchar](100) NOT NULL,
	[Student_ID] [numeric](18, 0) NOT NULL,
	[Section_ID] [tinyint] NOT NULL,
	[Standard_ID] [smallint] NULL,
	[Division] [smallint] NULL,
	[AcademicYearStart] [int] NULL,
	[AcademicYearEnd] [int] NULL,
	[Remarks] [varchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_StudentAcademicDetails] PRIMARY KEY CLUSTERED 
(
	[AcademicDet_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUD_Students_Master]    Script Date: 4/24/2017 10:49:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUD_Students_Master](
	[Student_ID] [numeric](18, 0) NOT NULL,
	[RegNo] [varchar](100) NULL,
	[Gender] [char](1) NULL,
	[Name] [nvarchar](100) NULL,
	[Surname] [nvarchar](100) NULL,
	[FatherName] [nvarchar](100) NULL,
	[MotherName] [nvarchar](100) NULL,
	[MotherTongue] [nvarchar](100) NULL,
	[Religion] [nvarchar](100) NULL,
	[Caste] [nvarchar](100) NULL,
	[Religion_ID] [tinyint] NULL,
	[Language_ID] [int] NULL,
	[Category_ID] [tinyint] NULL,
	[DOB] [date] NULL,
	[CurrentAcaDetail_ID] [numeric](18, 0) NULL,
	[CurrentStd_ID] [tinyint] NULL,
	[CurrentDiv] [varchar](5) NULL,
	[Address] [varchar](500) NULL,
	[Mobile1] [varchar](15) NULL,
	[Mobile2] [varchar](15) NULL,
	[Mobile3] [varchar](15) NULL,
	[HomePh] [varchar](15) NULL,
	[WorkPh] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[RFIDTag] [varchar](max) NULL,
	[AadharNo] [varchar](100) NULL,
	[PrimaryContact] [varchar](100) NULL,
	[StudPhoto] [varbinary](max) NULL,
	[Remarks] [varchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[EnteredBy_ID] [numeric](18, 0) NOT NULL,
	[EnteredOn] [datetimeoffset](0) NULL,
	[LastModifiedBy_ID] [numeric](18, 0) NOT NULL,
	[LastModifiedOn] [datetimeoffset](0) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GEN_Languages_Lookup] ON 
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (1, N'Hindi', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (2, N'Marathi', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (3, N'Malayalam', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (4, N'English', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (5, N'Assamese', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (6, N'Bengali', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (7, N'Gujarathi', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (8, N'Kannada', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (9, N'Kashmiri', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (10, N'Konkani', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (11, N'Manipuri', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (12, N'Nepali', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (13, N'Odia', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (14, N'Punjabi', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (15, N'Sindhi', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (16, N'Tamil', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (17, N'Telungu', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (18, N'Tulu', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (19, N'Urudu', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (20, N'NA', 1)
GO
INSERT [dbo].[GEN_Languages_Lookup] ([Language_Id], [Name], [IsActive]) VALUES (21, N'Marwadi', 1)
GO
SET IDENTITY_INSERT [dbo].[GEN_Languages_Lookup] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_Religions_Lookup] ON 
GO
INSERT [dbo].[GEN_Religions_Lookup] ([Religion_Id], [Name], [IsActive]) VALUES (1, N'Budhist', 1)
GO
INSERT [dbo].[GEN_Religions_Lookup] ([Religion_Id], [Name], [IsActive]) VALUES (2, N'Christian', 1)
GO
INSERT [dbo].[GEN_Religions_Lookup] ([Religion_Id], [Name], [IsActive]) VALUES (3, N'Hindu', 1)
GO
INSERT [dbo].[GEN_Religions_Lookup] ([Religion_Id], [Name], [IsActive]) VALUES (4, N'Islam', 1)
GO
INSERT [dbo].[GEN_Religions_Lookup] ([Religion_Id], [Name], [IsActive]) VALUES (5, N'Jain', 1)
GO
INSERT [dbo].[GEN_Religions_Lookup] ([Religion_Id], [Name], [IsActive]) VALUES (6, N'Parsi', 1)
GO
INSERT [dbo].[GEN_Religions_Lookup] ([Religion_Id], [Name], [IsActive]) VALUES (7, N'Sikh', 1)
GO
INSERT [dbo].[GEN_Religions_Lookup] ([Religion_Id], [Name], [IsActive]) VALUES (8, N'Zoroastrian', 1)
GO
INSERT [dbo].[GEN_Religions_Lookup] ([Religion_Id], [Name], [IsActive]) VALUES (9, N'NA', 1)
GO
SET IDENTITY_INSERT [dbo].[GEN_Religions_Lookup] OFF
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (1, N'1', 1, 1)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (2, N'2', 1, 1)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (3, N'3', 1, 1)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (4, N'4', 1, 1)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (5, N'5', 1, 1)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (6, N'6', 1, 1)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (7, N'7', 1, 1)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (8, N'8', 1, 2)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (9, N'9', 1, 2)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (10, N'10', 1, 2)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (11, N'11', 1, 3)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (12, N'12', 1, 3)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (100, N'Nursery', 1, 0)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (101, N'Junior KG', 1, 0)
GO
INSERT [dbo].[GEN_Standards_Lookup] ([Standard_Id], [Name], [IsActive], [Section_Id]) VALUES (102, N'Senior KG', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[GEN_StudentCategory_Lookup] ON 
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (1, N'Open', 1)
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (2, N'SC', 1)
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (3, N'SBC', 1)
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (4, N'ST', 1)
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (5, N'NT', 1)
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (6, N'NT-C', 1)
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (7, N'NT-D', 1)
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (8, N'OBC', 1)
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (9, N'VJ-A', 1)
GO
INSERT [dbo].[GEN_StudentCategory_Lookup] ([Category_Id], [Name], [IsActive]) VALUES (10, N'NA', 1)
GO
SET IDENTITY_INSERT [dbo].[GEN_StudentCategory_Lookup] OFF
GO
ALTER TABLE [dbo].[CHQ_ChequeCancellations_Details] ADD  CONSTRAINT [DF_ChequeCancellations_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_Languages_Lookup] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_Religions_Lookup] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_StudentCategory_Lookup] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[STUD_StudentAcademic_Details] ADD  CONSTRAINT [DF_StudentAcademicDetails_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[STUD_Students_Master] ADD  CONSTRAINT [DF_Students_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CHQ_ChequeCancellations_Details]  WITH CHECK ADD  CONSTRAINT [FK_CHQ_ChequeCancellations_Details_CHQ_Cheques_Master] FOREIGN KEY([Cheque_ID])
REFERENCES [dbo].[CHQ_Cheques_Master] ([Cheque_ID])
GO
ALTER TABLE [dbo].[CHQ_ChequeCancellations_Details] CHECK CONSTRAINT [FK_CHQ_ChequeCancellations_Details_CHQ_Cheques_Master]
GO
ALTER TABLE [dbo].[STUD_StudentAcademic_Details]  WITH CHECK ADD  CONSTRAINT [FK_STUD_StudentAcademic_Details_GEN_Sections_Lookup] FOREIGN KEY([Section_ID])
REFERENCES [dbo].[GEN_Sections_Lookup] ([Section_Id])
GO
ALTER TABLE [dbo].[STUD_StudentAcademic_Details] CHECK CONSTRAINT [FK_STUD_StudentAcademic_Details_GEN_Sections_Lookup]
GO
ALTER TABLE [dbo].[STUD_StudentAcademic_Details]  WITH CHECK ADD  CONSTRAINT [FK_STUD_StudentAcademic_Details_STUD_Students_Master] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[STUD_Students_Master] ([Student_ID])
GO
ALTER TABLE [dbo].[STUD_StudentAcademic_Details] CHECK CONSTRAINT [FK_STUD_StudentAcademic_Details_STUD_Students_Master]
GO
ALTER TABLE [dbo].[STUD_Students_Master]  WITH CHECK ADD  CONSTRAINT [FK_STUD_Students_Master_GEN_Religions_Lookup] FOREIGN KEY([Religion_ID])
REFERENCES [dbo].[GEN_Religions_Lookup] ([Religion_Id])
GO
ALTER TABLE [dbo].[STUD_Students_Master] CHECK CONSTRAINT [FK_STUD_Students_Master_GEN_Religions_Lookup]
GO
ALTER TABLE [dbo].[STUD_Students_Master]  WITH CHECK ADD  CONSTRAINT [FK_STUD_Students_Master_GEN_Standards_Lookup] FOREIGN KEY([CurrentStd_ID])
REFERENCES [dbo].[GEN_Standards_Lookup] ([Standard_Id])
GO
ALTER TABLE [dbo].[STUD_Students_Master] CHECK CONSTRAINT [FK_STUD_Students_Master_GEN_Standards_Lookup]
GO
ALTER TABLE [dbo].[STUD_Students_Master]  WITH CHECK ADD  CONSTRAINT [FK_STUD_Students_Master_GEN_StudentCategory_Lookup] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[GEN_StudentCategory_Lookup] ([Category_Id])
GO
ALTER TABLE [dbo].[STUD_Students_Master] CHECK CONSTRAINT [FK_STUD_Students_Master_GEN_StudentCategory_Lookup]
GO
ALTER TABLE [dbo].[STUD_Students_Master]  WITH CHECK ADD  CONSTRAINT [FK_STUD_Students_Master_STUD_StudentAcademic_Details] FOREIGN KEY([CurrentAcaDetail_ID])
REFERENCES [dbo].[STUD_StudentAcademic_Details] ([AcademicDet_ID])
GO
ALTER TABLE [dbo].[STUD_Students_Master] CHECK CONSTRAINT [FK_STUD_Students_Master_STUD_StudentAcademic_Details]
GO
