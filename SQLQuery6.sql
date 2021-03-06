USE [LeaveM]
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete]    Script Date: 21-Jul-18 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Delete] 
(
@EID int
)
AS
BEGIN
delete from leave where EID=@EID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_hr]    Script Date: 21-Jul-18 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_hr]
(
@UserName varchar(64),
@Password varchar(16)
)

As
Begin
Select * from leave 
End
GO
/****** Object:  StoredProcedure [dbo].[sp_SanctionLeave]    Script Date: 21-Jul-18 6:00:23 PM ******/

/****** Object:  StoredProcedure [dbo].[updateleave]    Script Date: 21-Jul-18 6:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updateleave]
(
@UserName nvarchar(64),
@EL varchar(365),
@CL varchar(365),
@SL varchar(365),
@ML varchar(365),
@HL varchar(365),
@PL varchar(365),
@Gender varchar(1)
)
as 
BEGIN
if(@Gender='M')
begin
update login set El=@EL, Cl=@Cl,SL=@SL,ML=0,HL=@HL,PL=@PL where UserName=@UserName
end
else
begin
update login set El=@EL, Cl=@Cl,SL=@SL,ML=@ML,HL=@HL,PL=@PL where UserName=@UserName
end
END
GO

/****** Object:  StoredProcedure [dbo].[deletem]    Script Date: 21-Jul-18 6:02:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deletem]
(   
	@ID  NVARCHAR(16)
)  
as  
Begin
Update leave set status = 'R' where ID = @ID
End
GO
