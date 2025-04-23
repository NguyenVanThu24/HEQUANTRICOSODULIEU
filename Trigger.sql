CREATE TRIGGER trg_tongthanhtoan
ON dbo.HoaDon
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra điều kiện để tránh lỗi logic (như số tiền giảm < 0)
    IF EXISTS (
        SELECT 1 FROM inserted WHERE sotiengiamgia < 0
    )
    BEGIN
        RAISERROR('So tien giam khong duoc < 0', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Cập nhật tongthanhtoan cho các bản ghi mới
    UPDATE H
    SET H.tongthanhtoan = I.sotiengiamgia
    FROM dbo.HoaDon H
    INNER JOIN inserted I ON H.idhoadon = I.idhoadon;
END

-- Thêm dữ liệu test (batch mới)
INSERT INTO dbo.HoaDon (
    idhoadon,
    iddonhang,
    idnhanvien,
    thoigianthanhtoan,
    phuongthucthanhtoan,
    sotiengiamgia
)
VALUES (
    'h08',
    'd01',
    'n01',
    GETDATE(),
    'maQR',
    50000
);
GO

INSERT INTO dbo.HoaDon (
    idhoadon,
    iddonhang,
    idnhanvien,
    thoigianthanhtoan,
    phuongthucthanhtoan,
    sotiengiamgia
)
VALUES (
    'h10',         -- đổi ID để không trùng
    'd01',
    'n01',
    GETDATE(),
    'maQR',
    50000
);

SELECT * FROM dbo.HoaDon WHERE idhoadon = 'h';
-- hoặc 'h08' nếu bạn dùng lại ID cũ
