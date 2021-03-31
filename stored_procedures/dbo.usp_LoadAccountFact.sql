/*****************************************************************************************************************
NAME:    dbo.usp_LoadAccountFact
PURPOSE: Load the Load Account Fact Dimension

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

DROP PROCEDURE [dbo].[usp_LoadAccountFact]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_LoadAccountFact]
AS

BEGIN

TRUNCATE TABLE dbo.tblAccountFact;

INSERT INTO dbo.tblAccountFact
SELECT DISTINCT 
       s.as_of_date
     , s.acct_id3 AS acct_id
     , s.cur_bal
  FROM dbo.stg_p1 AS s
 WHERE s.acct_cust_role_id = 1;


 END;