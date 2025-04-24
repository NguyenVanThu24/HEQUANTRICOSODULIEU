# <p align="center">***Bài tập 6: Hệ quản trị CSDL***</p>
# <p align="center">***Nguyễn Văn Thứ_K225480106062***</p>
# <p align="center">***Chủ đề: Câu lệnh Select***</p>
# <p align="center">***Yêu cầu bài tập:***</p>
## Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

## Ghi chú: Giải thích tại sao lại có SQL như vậy.
# <p align="center">***DEADLINE: 23H59:59 NGÀY 25/4/2025***</p>
# <p align="center">***Bài làm***</p>

1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em.
+ Để import dữ liệu trong sv_tnut.sql vào: Đầu tiên em sẽ thực hiện dowload file sv_tnut.sql về vị trí lưu trữ, khởi động SQl Server và thao tác tạo 1 database mang tên SV_TNUT lên. Và mở file sv_tnut.sql vừa dowload -> Execute toàn bộ file sv_tnut.sql vừa mở lên. Và em đã đạt được kết quả như 2 hình bên dưới.
![Ảnh chụp màn hình 2025-04-24 205834](https://github.com/user-attachments/assets/96c7acbf-4a8c-4b29-afbc-9b8266b44120)
Hình dưới đây là bảng dữ liệu db.SV mà được import từ file sv_tnut.sql trên.
![Ảnh chụp màn hình 2025-04-24 210600](https://github.com/user-attachments/assets/c6742ffb-ae9b-46b7-b28b-4a93f9844024)

2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này).
Đây là việc em tự dùng câu lệnh insert chèn thêm thông tin cá nhân của mình vào bảng SV và cho ra kết quả trong hình.
![Ảnh chụp màn hình 2025-04-24 211909](https://github.com/user-attachments/assets/98574d97-2045-40ec-ada3-92bf67ab9418)
Tiếp theo em sử dụng câu lệnh select để tìm và kiểm tra thông tin liên quan về mình thông qua trường "hodem" và "ten" và kết quả in ra đạt được như hình.
![Ảnh chụp màn hình 2025-04-24 211944](https://github.com/user-attachments/assets/7a5da38c-da71-4c99-afdf-453bb3e571d4)

3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
Sử dụng câu lệnh select dùng trường thông tin "ns" để tìm những sinh viên trùng hoàn toàn ngày/tháng/năm với em.
![Ảnh chụp màn hình 2025-04-24 213115](https://github.com/user-attachments/assets/53a08faa-2fc8-4370-88de-6f26e1944676)
Em sử dụng thêm lệnh điều kiện để loại bỏ chính mình và kết quả đã được như mong muốn.
![Ảnh chụp màn hình 2025-04-24 213131](https://github.com/user-attachments/assets/bcc4093d-797c-4117-bbb7-9ec8115378e3)

4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
Để tìm những sinh viên có cùng ngày và tháng sinh với em (nhưng không cần cùng năm), em đã sử dụng hàm DAY() và MONTH() trong SQL để truy vấn ra kết quả như mong muốn.
![Ảnh chụp màn hình 2025-04-24 214411](https://github.com/user-attachments/assets/ff1c53db-a470-44c2-a896-462098df53ed)

5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
Để tìm các sinh viên trùng tháng và năm sinh với em (tháng 6 năm 2004), em đã sử dụng hàm MONTH() và YEAR() trong SQL để truy vấn.
![Ảnh chụp màn hình 2025-04-24 214711](https://github.com/user-attachments/assets/e00b4863-a864-4e62-bb29-513294383fb1)

6. nhập sql để tìm xem có những sv nào trùng tên với em?
Để tìm các sinh viên trùng tên với em (tên là "Thứ"), em đã sử dụng lệnh truy vấn theo cột "ten" trong bảng SV.
![Ảnh chụp màn hình 2025-04-24 215210](https://github.com/user-attachments/assets/a7bf2cfc-f00d-4c21-a5ae-2a049ad2aa1d)

7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
Để tìm các sinh viên trùng họ và tên đệm với em (tức là hodem = 'Nguyễn Văn'), em truy vấn theo cột "hodem" trong bảng SV.
![Ảnh chụp màn hình 2025-04-24 215527](https://github.com/user-attachments/assets/22cd51e4-ee1e-484f-920a-7e349fd7f7af)

8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
Để tìm ra những sinh viên có sdt sai khác chỉ 1 số so với sdt của em thì đầu tiên vần đảm bảo điều kiện LEN(sdt) = 10 đảm bảo số điện thoại có độ dài chuẩn 10 số để so sánh.
+ Em sử dụng CASE WHEN ... THEN 1 ELSE 0 END: biến TRUE/FALSE thành số 1 hoặc 0 để cộng tổng.
+ Và COLLATE Latin1_General_BIN: dùng để so sánh từng ký tự một cách chính xác (case-sensitive & binary) = 1: nghĩa là chỉ khác đúng 1 số trong toàn bộ 10 số.
-> Và kết quả trả về không có sinh viên nào thỏa mãn yên cầu.
![Ảnh chụp màn hình 2025-04-24 215936](https://github.com/user-attachments/assets/b86cf9b6-df54-487a-aa5e-88a88756e8f5)

9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
***Giải thích để liệt kê tất cả sinh viên ngành KMT, sắp xếp theo tên và họ đệm, kiểu tiếng việt***
WHERE lop LIKE '%KMT%':
+ Lọc ra các sinh viên thuộc ngành Kỹ thuật Máy Tính (KMT)
+ Giả sử lop có chứa mã ngành trong tên lớp (ví dụ: K58KTP, K57KMT, K59KMT, K60KMT,...)
ORDER BY ten, hodem COLLATE Vietnamese_CI_AS:
+ ORDER BY ten: sắp xếp theo tên riêng trước (ví dụ: An, Bình, Đức,...).
+ Sau đó ORDER BY hodem: sắp xếp theo họ và đệm nếu tên trùng
+ COLLATE Vietnamese_CI_AS: đảm bảo sắp xếp theo bảng chữ cái tiếng Việt, ví dụ: A < Á < Â < B < C ... < Đ < E ... < Z. Dung sẽ đứng trước Đạt nếu dùng kiểu sắp xếp tiếng Việt.
![Ảnh chụp màn hình 2025-04-24 221309](https://github.com/user-attachments/assets/3d4ee006-2e11-4385-87ec-769732961c20)

10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)
Em đang tiếp tục tìm hiểu và chưa thể có hướng giải quyết tại thời điểm này.
# <p align="center">***THE END***</p>
