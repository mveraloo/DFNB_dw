/*****************************************************************************************************************
NAME:    stg.NAICS_CODE_2017
PURPOSE: Create and stg.NAICS_CODE_2017 table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     03/06/2021   Mireya       1. Built this table for the assignment W7.3



RUNTIME: 
Approx. 1 sec


NOTES:
NAICS COE 2017


 
******************************************************************************************************************/



USE [DFNB3]
GO

DROP TABLE [stg].[NAICS_CODES_2017]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [stg].[NAICS_CODES_2017](
	[Seq_No][float] NULL,
    [2017_NAICS_US_Code] [float] NULL,
    [2017_NAICS_US_Title] [nvarchar](500) NULL
) ON [PRIMARY]
GO