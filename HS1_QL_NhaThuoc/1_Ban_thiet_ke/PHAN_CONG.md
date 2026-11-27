# Phân công nhóm — QL_NhaThuoc (Quản lý nhà thuốc)

| Thành viên | Họ tên | Bảng phụ trách | Yêu cầu SQL | Sản phẩm |
|---|---|---|---|---|
| 1 | Nguyễn Việt Hùng | NhomThuoc, Thuoc, LoThuoc | 1) Thêm / sửa / xóa · 4) Báo cáo (thống kê) | Thiết kế CSDL, file SQL, tổng hợp tài liệu |
| 2 | Nhữ Đình Thi | NhaCungCap, PhieuNhap, CT_PhieuNhap | 2) Tìm kiếm (tên, ngày) · 3) Sắp xếp (tên, ngày) | Website (giao diện + kết nối) |
| 3 | Hồ Hữu Nguyên Anh | KhachHang, NhanVien, HoaDon, CT_HoaDon | Kiểm thử các yêu cầu 1–4 trên dữ liệu mẫu | Bảng list prompt AI, kiểm thử, báo cáo |

Ghi chú: 10 bảng chia 3 / 3 / 4; bù lại thành viên 1 và 2 nhận thêm yêu cầu SQL và sản phẩm chính.

## Ghi chú từ bảng phấn
- Quy tắc đặt tên trường: không dấu, không khoảng trắng, ví dụ `TenSach`/`TenThuoc` (không viết `Tên Thuốc`). Tên bảng/trường viết nhất quán một kiểu.
- `Var` = biến (kiểu thay đổi); `Char` = ký tự. `VARCHAR(n)` chứa chuỗi tối đa n ký tự; `CHAR(n)` chứa đúng n ký tự (dùng cho CCCD 12 số).
- Cấu trúc số CCCD 12 số (ví dụ `079 1 08 xxxxxx`): 3 số đầu là mã tỉnh/thành (079 = TP.HCM), 1 số là giới tính + thế kỷ sinh, 2 số là năm sinh, 6 số còn lại là số ngẫu nhiên. Có thể dùng để kiểm tra dữ liệu nhập vào.
- Note cuối buổi: **Tính được** (tính toán, ví dụ thành tiền, tổng tiền hóa đơn) và **Thống kê** (doanh thu theo ngày, tồn kho, thuốc sắp hết hạn).
