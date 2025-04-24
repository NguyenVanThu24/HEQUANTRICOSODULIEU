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
Hình dưới đây là bảng dữ liệu mà được import từ file sv_tnut.sql trên.
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

7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.

8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.

9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.

10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

# <p align="center">***THE END***</p>
