/*****************************************************************************************************************
NAME:    dbo.usp_LoadTransactionFact
PURPOSE: Load the Load Transaction Fact Dimension

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

DROP PROCEDURE [dbo].[usp_LoadTransactionFact]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_LoadTransactionFact]
AS

BEGIN

TRUNCATE TABLE dbo.tblTransactionFact;

INSERT INTO dbo.tblTransactionFact
SELECT s.tran_date
     , s.tran_time
     , s.branch_id
     , s.acct_id
	 , s.tran_type_id
     , s.tran_amt
     , s.tran_fee_amt
  FROM dbo.stg_p2 AS s
 ORDER BY 1
        , 2
		, 3
		, 4;


 END;