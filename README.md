# ***BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.***
# ***Nguyễn Văn Thứ_K225480106062_K58KTP.***
# ***SUBJECT: Trigger on mssql***
# ***Đề tài phân tích và thiết kế hệ thống quản lí nhà hàng Quán cay Đức Huệ***

# A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
# B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

# HƯỚNG DẪN CÁCH LÀM:

# Hướng dẫn làm phần A: 
 - Chỉ cần nêu ra y/c của đồ án.
 - Không cần chụp quá trình làm ra db, tables.
 - Chỉ cần đưa ra db gồm các bảng nào,
   mỗi bảng có các trường nào, kiểu dữ liệu nào,
   và pk, fk, ck của các bảng.

# Hướng dẫn làm phần B:
1. Sv tạo repo mới trên github, cho phép truy cập public.
2. Tạo file Readme.md, đầu file để thông tin cá nhân sv.
3. Tiếp theo đưa phần A vào file Reame.md .
3. Các thao tác làm trên csdl bằng phần mềm ssms.
4. Chụp ảnh màn hình quá trình làm.
5. Paste ngay vào Readme.md, 
   rồi gõ mô tả ảnh này làm gì, nhập gì, hay đạt được điều gì...
6. Có thể thêm những nhận xét hoặc kết luận
   cho việc bản thân đã hiểu rõ thêm về 1 vấn đề gì đó.
7. Lặp lại các step 4 5 6 cho đến khi hoàn thành yêu cầu của phần B.
8. Xuất các file sql chứa cấu trúc và data, up lên cùng repo.
9. Link đến repo cần mở được trực tiếp nội dung, 
   Paste link này vào file excel online ghim trên nhóm.
   Thầy sẽ dùng tool để check các link này.

# ***DEADLINE: 23H59:59 NGÀY 23/04/2025***

p/s:
 - Sv được phép tham khảo mọi nguồn, nhưng phải tự làm lại.  
 - Đọc thêm nội quy học tập để biết các chế tài.
 - Đã đến lúc khẳng định bản thân và toả sáng!
 - Chỗ nào vướng mắc cứ share lên nhóm để cùng tháo gỡ.

# BÀI LÀM
## 1. Cơ sở dữ liệu của Đồ án PT&TKHT
Xây dựng database với các bảng dữ liệu cần thiết (3nf), Các bảng này đã có PK, FK, CK cần thiết.
Tên database: QUANLYNHAHANG. Bao gồm các bảng như bên dưới đây:
+ KhacHang (#makh, tenkh, sdt, diachi, gioitinh, hangmuckh)
+ HoaDon (#idhoadon, @iddonhang, @idnhanvien, thoigianthanhtoan, phuongthucthanhtoan, sotiengiamgia)
+ NhanVien (#idnhanvien, tennhanvien, ngaysinh, gioitinh, diachi, ngayvaolam, macalamviec, tienluong)
+ ThucDon (#idmonan, tenmon, dongia)
+ DonHang (#iddonhang, @makh, @idmonan, soluong, thoigiandatdon, masoban) 

Cac bảng dữ lieu được tạo có kết quả như hình.
![Ảnh chụp màn hình 2025-04-23 204833](https://github.com/user-attachments/assets/9d60669c-0743-4b06-a694-ad5edca2e971)
Dữ liệu demo cho bảng KhachHang
![Ảnh chụp màn hình 2025-04-23 214550](https://github.com/user-attachments/assets/f6037023-aed8-4fdc-a957-493ad336f759)
dữ liệu demo cho bảng HoaDon: Thiết lập khóa FK tới bảng DonHang qua khóa (#iddonhang) và tới bảng NhanVien qua khóa (#idnhanvien) như hình. 
![Ảnh chụp màn hình 2025-04-23 204122](https://github.com/user-attachments/assets/82593b2d-b52a-4ebe-890f-4e1f068871d0)
![Ảnh chụp màn hình 2025-04-23 214558](https://github.com/user-attachments/assets/4a8c7a91-243f-4f8f-bea9-28af7a57d0bb)
dữ liệu demo cho bảng NhanVien
![Ảnh chụp màn hình 2025-04-23 214604](https://github.com/user-attachments/assets/b0b7ca8a-69e6-471f-a3ed-5f3db7d29b64)
Dữ liệu demo cho bảng ThucDon
![Ảnh chụp màn hình 2025-04-23 214616](https://github.com/user-attachments/assets/efb74f90-e96e-4f70-bcb3-c00027bbe045)
Dữ liệu demo cho bảng DonHang: Thiết lập khóa FK tới bảng Khachhang qua khóa (#makh) và tới bảng ThucDon qua khóa (#idmonan) như hình. 
![Ảnh chụp màn hình 2025-04-23 203524](https://github.com/user-attachments/assets/bd1f91a4-e849-48e3-b177-9ed798a6d5e0)
![Ảnh chụp màn hình 2025-04-23 214633](https://github.com/user-attachments/assets/67b2b983-8104-47e5-8f4d-8ef697d32308)
Diagram cho database QUANLYNHAHANG.
![Ảnh chụp màn hình 2025-04-23 210515](https://github.com/user-attachments/assets/7e36e2cb-f135-4afe-9a42-d27d14db6f97)

## 2. Yêu cầu bài tập 05
Viết thêm Trigger cho các bảng để đạt được yêu cầu bài toán:
Ở đây em sẽ thêm trường tổng thanh toán vào bảng HoaDon như hình.
![Ảnh chụp màn hình 2025-04-23 220345](https://github.com/user-attachments/assets/9403f001-b23d-4ea6-8a89-4deea6a5fb43)

