INSERT INTO SV (masv, hodem, ten, ns, lop, sdt)
VALUES ('225480106062', N'Nguyễn Văn', N'Thứ', '2004-06-16', 'K58KTP', '0346825690');

-- Hàm tìm thông tin của em thông qua trường hodem & ten
SELECT * FROM SV WHERE ten = N'Thứ' AND hodem = N'Nguyễn Văn';

-- Hàm tìm sinh viên có trùng ngày tháng năm sinh với em
SELECT * 
FROM SV 
WHERE ns = '2004-06-16' 
	AND masv <> 'K225480106062';  -- thay bằng masv của bạn

-- Hàm tìm sinh viên chỉ trùng ngày & tháng sinh không trùng năm sinh với em
SELECT * 
FROM SV 
WHERE DAY(ns) = 16 AND MONTH(ns) = 6;

-- Hàm tìm sinh viên trùng tháng & năm sinh với em
SELECT * 
FROM SV 
WHERE MONTH(ns) = 6 AND YEAR(ns) = 2004;

-- Hàm tìm xem có những sinh viên nào trùng tên với em
SELECT * 
FROM SV 
WHERE ten = N'Thứ';

-- Hàm tìm những sinh viên trùng họ & tên đệm với em
SELECT * 
FROM SV 
WHERE hodem = N'Nguyễn Văn';

SELECT COUNT(*) AS SoLuongTrungHoDem
FROM SV 
WHERE hodem = N'Nguyễn Văn';

-- Hàm để tìm những sinh viên nào có sđt sai khác chỉ 1 số so với sđt của em.
SELECT *
FROM SV
WHERE 
    LEN(sdt) = 10 AND
    (
        CASE WHEN SUBSTRING(sdt,1,1) COLLATE Latin1_General_BIN <> '0' THEN 1 ELSE 0 END +
        CASE WHEN SUBSTRING(sdt,2,1) COLLATE Latin1_General_BIN <> '3' THEN 1 ELSE 0 END +
        CASE WHEN SUBSTRING(sdt,3,1) COLLATE Latin1_General_BIN <> '4' THEN 1 ELSE 0 END +
        CASE WHEN SUBSTRING(sdt,4,1) COLLATE Latin1_General_BIN <> '6' THEN 1 ELSE 0 END +
        CASE WHEN SUBSTRING(sdt,5,1) COLLATE Latin1_General_BIN <> '8' THEN 1 ELSE 0 END +
        CASE WHEN SUBSTRING(sdt,6,1) COLLATE Latin1_General_BIN <> '2' THEN 1 ELSE 0 END +
        CASE WHEN SUBSTRING(sdt,7,1) COLLATE Latin1_General_BIN <> '5' THEN 1 ELSE 0 END +
        CASE WHEN SUBSTRING(sdt,8,1) COLLATE Latin1_General_BIN <> '6' THEN 1 ELSE 0 END +
        CASE WHEN SUBSTRING(sdt,9,1) COLLATE Latin1_General_BIN <> '9' THEN 1 ELSE 0 END +
        CASE WHEN SUBSTRING(sdt,10,1) COLLATE Latin1_General_BIN <> '0' THEN 1 ELSE 0 END
    ) = 1;

-- Hàm liệt kê tất cả sinh viên ngành KMT, sắp xếp theo tên và họ đệm, kiểu tiếng việt, giải thích
SELECT *
FROM SV
WHERE lop LIKE '%KMT%' OR lop LIKE '%KTP%'
ORDER BY 
    ten COLLATE Vietnamese_CI_AS ASC,
    hodem COLLATE Vietnamese_CI_AS ASC;

-- Hàm liệt kê toàn bộ sinh viên nữ trong ngành KMT