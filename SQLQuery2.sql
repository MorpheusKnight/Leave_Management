USE [LeaveM]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddEmployeeDetails]    Script Date: 7/21/2018 3:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[sp_AddEmployeeDetails]
(  
	@UserName varchar(64),
	@Pass varchar(16),
	@FirstName varchar(16),
	@LastName varchar(16),
	@Gender char(1),
	@Designation char(1),
	@Role_ID char(1)
)  
as  
Begin
if(@Gender='M')
begin
insert into login(UserName,Pass,FirstName,LastName,Designation,Gender,EL, CL, SL, ML, HL,PL,Role_ID) 
values(@Username,@Pass,@FirstName,@LastName,@Designation,@Gender,50,50,50,0,50,50,@Role_ID)
 end
 else
 begin
 insert into login(UserName,Pass,FirstName,LastName,Designation,Gender,EL, CL, SL, ML, HL,PL,Role_ID) 
values(@Username,@Pass,@FirstName,@LastName,@Designation,@Gender,50,50,50,50,50,0,@Role_ID)
 end
End

select * from login