USE [ToDo]
GO
/****** Object:  Table [dbo].[todo]    Script Date: 12-05-2021 21:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[todo](
	[id] [uniqueidentifier] NOT NULL PRIMARY KEY,
	[activity] [nvarchar](max) NULL,
	[assigned_to] [nvarchar](50) NULL,
	[created] [datetime] NULL,
	[due_date] [datetime] NULL,
);
GO
ALTER TABLE [dbo].[todo] ADD  CONSTRAINT [DF_todo_created]  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[todo] ADD  CONSTRAINT [DF_todo_duo_date]  DEFAULT (dateadd(day,(10),getdate())) FOR [due_date]
GO
ALTER TABLE [dbo].[todo] ADD  CONSTRAINT [DF_todo_id]  DEFAULT (newid()) FOR [id]
GO
INSERT [dbo].[todo] ([title], [activity], [assigned_to]) VALUES (N'Clean the Kitchen', N'Mr Muscel')
GO
INSERT [dbo].[todo] ([title], [activity], [assigned_to]) VALUES (N'Save the whole world', N'Superman')
GO
INSERT [dbo].[todo] ([title], [activity], [assigned_to]) VALUES (N'Grap a drink - Your deserve it ', N'you')
GO
INSERT [dbo].[todo] ([title], [activity], [assigned_to]) VALUES (N'Buy milk ', N'me')
GO
