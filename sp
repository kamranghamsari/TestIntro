USE [TestForIntroDB]
GO
/****** Object:  StoredProcedure [dbo].[Masterinsert]    Script Date: 2021-05-31 2:05:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Masterinsert]			 (                                          @FirstName    nvarchar(MAX),  
                                          @LastName     nvarchar(MAX),  
                                          @username        nvarchar(MAX),  
                                          @PasswordHash          varbinary(MAX),  
                                          @PasswordSalt varbinary(MAX))  
AS  
  BEGIN  
        BEGIN  
            INSERT INTO Users
                        (
                         FirstName,  
                         LastName,  
                         Username,  
                         PasswordHash,  
                         PasswordSalt)  
            VALUES     (                          @FirstName,  
                         @LastName,  
                         @username,  
                         @PasswordHash,  
                         @PasswordSalt)  
        END          
	END  
