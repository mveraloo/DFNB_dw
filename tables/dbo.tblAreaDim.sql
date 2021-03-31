USE [DFNB3]
GO

/****** Object:  Table [dbo].[tblAreaDim]    Script Date: 3/30/2021 8:13:27 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAreaDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblAreaDim]
GO

/****** Object:  Table [dbo].[tblAreaDim]    Script Date: 3/30/2021 8:13:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAreaDim](
	[area_id] [smallint] NOT NULL,
	[area_desc] [varchar](50) NULL
) ON [PRIMARY]
GO


