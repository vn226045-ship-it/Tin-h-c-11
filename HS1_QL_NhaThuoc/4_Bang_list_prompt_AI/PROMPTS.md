# Bảng list prompt AI (Thành viên 3: Hồ Hữu Nguyên Anh phụ trách)

| STT | Mục đích | Prompt gửi AI | Người dùng | Kết quả / ghi chú |
|---|---|---|---|---|
| 1 | Thiết kế sơ đồ | "Vẽ sơ đồ CSDL QL_NhaThuoc gồm các bảng Thuốc, Lô thuốc, Nhà cung cấp, Khách hàng, Nhân viên, Hóa đơn, Phiếu nhập; mỗi bảng có PK, FK, kiểu dữ liệu. Tên trường không dấu." | Hùng | Sơ đồ trong `1_Ban_thiet_ke` |
| 2 | Tạo database | "Viết SQL MySQL tạo database QL_NhaThuoc theo sơ đồ, có khóa chính, khóa ngoại, CHECK số lượng không âm." | Hùng | `2_Database/01_tao_bang.sql` |
| 3 | Dữ liệu mẫu | "Tạo dữ liệu mẫu giả lập (không dùng dữ liệu thật) cho mỗi bảng, gồm ít nhất 1 lô sắp hết hạn." | Nguyên Anh | `02_du_lieu_mau.sql` |
| 4 | Yêu cầu SQL | "Viết câu SQL: thêm/sửa/xóa thuốc; tìm theo tên và theo ngày; sắp xếp theo tên và ngày; báo cáo doanh thu theo ngày và tồn kho." | Thi | `03_yeu_cau_SQL.sql` |
| 5 | Website | "Tạo website quản lý nhà thuốc kết nối MySQL QL_NhaThuoc: trang Thuốc, Lô thuốc, Hóa đơn, có thêm/sửa/xóa, tìm kiếm, sắp xếp, báo cáo." | Thi | Thư mục `3_Website` |
| 6 | Kiểm thử | "Cho tôi danh sách ca kiểm thử cho các chức năng thêm/sửa/xóa/tìm/sắp xếp/báo cáo." | Nguyên Anh | Bảng kiểm thử |

Lưu ý: không đưa dữ liệu cá nhân thật (số CCCD, điện thoại thật) vào prompt.
