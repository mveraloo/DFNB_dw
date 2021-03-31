/*****************************************************************************************************************
NAME:    dbo.usp_LoadTransactionTypeDim
PURPOSE: Load the Load Transaction Type Dimension

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

DROP PROCEDURE [dbo].[usp_LoadTransactionTypeDim]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_LoadTransactionTypeDim]
AS

BEGIN

TRUNCATE TABLE dbo.tblTransactionTypeDim;

INSERT INTO dbo.tblTransactionTypeDim
SELECT DISTINCT 
       s.tran_type_id
     , s.tran_type_code
     , s.tran_type_desc
     , s.tran_fee_prct
     , s.cur_cust_req_ind
  FROM dbo.stg_p2 AS s
 ORDER BY 1
        , 2;


 END;