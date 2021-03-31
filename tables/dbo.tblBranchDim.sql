USE [DFNB3]
GO

ALTER TABLE [dbo].[tblBranchDim] DROP CONSTRAINT [FK_tblBranchDim_region_id_tblRegionDim_region_id]
GO

ALTER TABLE [dbo].[tblBranchDim] DROP CONSTRAINT [FK_tblBranchDim_branch_add_id_tblAddressDim_add_id]
GO

/****** Object:  Table [dbo].[tblBranchDim]    Script Date: 3/30/2021 8:16:23 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblBranchDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblBranchDim]
GO

/****** Object:  Table [dbo].[tblBranchDim]    Script Date: 3/30/2021 8:16:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBranchDim](
	[branch_id] [smallint] NOT NULL,
	[branch_code] [varchar](5) NOT NULL,
	[branch_desc] [varchar](100) NOT NULL,
	[branch_add_id] [int] NOT NULL,
	[region_id] [int] NOT NULL,
	[area_id] [smallint] NOT NULL,
 CONSTRAINT [PK_tblBranchDim] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblBranchDim]  WITH CHECK ADD  CONSTRAINT [FK_tblBranchDim_branch_add_id_tblAddressDim_add_id] FOREIGN KEY([branch_add_id])
REFERENCES [dbo].[tblAddressDim] ([add_id])
GO

ALTER TABLE [dbo].[tblBranchDim] CHECK CONSTRAINT [FK_tblBranchDim_branch_add_id_tblAddressDim_add_id]
GO

ALTER TABLE [dbo].[tblBranchDim]  WITH CHECK ADD  CONSTRAINT [FK_tblBranchDim_region_id_tblRegionDim_region_id] FOREIGN KEY([region_id])
REFERENCES [dbo].[tblRegionDim] ([region_id])
GO

ALTER TABLE [dbo].[tblBranchDim] CHECK CONSTRAINT [FK_tblBranchDim_region_id_tblRegionDim_region_id]
GO


