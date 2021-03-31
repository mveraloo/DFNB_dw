/*****************************************************************************************************************
NAME:    dbo.usp_LoadCustomerDim
PURPOSE: Load the Load Customer Dimension

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

DROP PROCEDURE [dbo].[usp_LoadCustomerDim]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_LoadCustomerDim]
AS

BEGIN

TRUNCATE TABLE dbo.tblCustomerDim;

INSERT INTO dbo.tblCustomerDim
SELECT DISTINCT 
       s.cust_id2 AS cust_id
     , s.last_name
     , s.first_name
     , s.gender
     , s.birth_date
     , s.cust_since_date
     , s.pri_branch_id
     , s.cust_pri_branch_dist
     , s.cust_add_id
     , s.cust_lat
     , s.cust_lon
     , s.cust_rel_id
  FROM dbo.stg_p1 AS s
 ORDER BY 1;


 END;