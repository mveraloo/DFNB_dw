/*****************************************************************************************************************
NAME:    dbo.usp_LoadNAICSCodeHier
PURPOSE: Load the NAICS Code Hierarchy

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     03/07/2021   Mireya       1. Built this table for the assignment W7.3



RUNTIME: 
Approx. 1 sec


 
******************************************************************************************************************/


USE [DFNB3]
GO

DROP PROCEDURE [dbo].[usp_LoadNAICSCodeHier]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_LoadNAICSCodeHier]
AS

BEGIN

	TRUNCATE TABLE dbo.tblNAICSCodeHier;

	INSERT INTO dbo.tblNAICSCodeHier
	SELECT v.*
  	  FROM etl.v_naics_code_hier_load as v
END;