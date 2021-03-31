/*****************************************************************************************************************
NAME:    dbo.usp_LoadProductDim
PURPOSE: Load the Load Product Dimension

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     03/29/2021   Mireya       1. Built this table for the assignment W11.2



RUNTIME: 
Approx. 1 sec

LICENSE: 
This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
 
******************************************************************************************************************/


USE [DFNB3]
GO

DROP PROCEDURE [dbo].[usp_LoadProductDim]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_LoadProductDim]
AS

BEGIN

TRUNCATE TABLE dbo.tblProductDim;

INSERT INTO dbo.tblProductDim
SELECT DISTINCT 
       s.prod_id
     , 'Unknown' AS prod_desc
  FROM dbo.stg_p1 AS s
 ORDER BY 1;


 END;