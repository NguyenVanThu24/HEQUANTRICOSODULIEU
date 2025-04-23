-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nguyen Van Thu
-- Create date: 23/04/2025
-- Description:	Cap nhat tong thanh toan.
-- =============================================
CREATE TRIGGER trg_tongthanhtoan
ON dbo.HoaDon
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra nếu có dòng nào sotiengiam < 0 => báo lỗi, rollback
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE sotiengiamgia < 0
    )
    BEGIN
        RAISERROR(N'So tien giam khong duoc < 0', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Cập nhật trường tongthanhtoan = sotiengiam
    UPDATE H
    SET tongthanhtoan = I.sotiengiamgia
    FROM dbo.HoaDon H
    INNER JOIN inserted I ON H.idhoadon = I.idhoadon;
END;
GO

