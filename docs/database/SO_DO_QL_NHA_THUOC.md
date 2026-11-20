# Sơ đồ thiết kế — QL_NhaThuoc (Quản lý nhà thuốc)

Vẽ theo mẫu bảng đen buổi 25/11: **CSDL → các Table → các cột (field); mỗi dòng dữ liệu là 1 Record.**

## 1. Sơ đồ tổng quát (CSDL → Table → Field)

```mermaid
flowchart TD
    DB["QL_NhaThuoc"]

    DB --> T1["Thuốc"]
    DB --> T2["Nhóm thuốc"]
    DB --> T3["Lô thuốc"]
    DB --> T4["Nhà cung cấp"]
    DB --> T5["Khách hàng"]
    DB --> T6["Nhân viên"]
    DB --> T7["Hóa đơn bán"]
    DB --> T8["Phiếu nhập"]

    T1 --- F1["- Mã thuốc<br/>- Tên thuốc<br/>- Hoạt chất<br/>- Đơn vị tính<br/>- Giá bán<br/>- Mã nhóm<br/>- Nhà sản xuất"]
    T2 --- F2["- Mã nhóm<br/>- Tên nhóm<br/>- Mô tả"]
    T3 --- F3["- Mã lô<br/>- Mã thuốc<br/>- Số lô<br/>- Ngày sản xuất<br/>- Hạn dùng<br/>- Số lượng tồn"]
    T4 --- F4["- Mã NCC<br/>- Tên NCC<br/>- Điện thoại<br/>- Địa chỉ<br/>- Công nợ"]
    T5 --- F5["- Mã KH<br/>- Họ tên<br/>- Điện thoại<br/>- Địa chỉ"]
    T6 --- F6["- Mã NV<br/>- Họ tên<br/>- Chức vụ<br/>- Điện thoại"]
    T7 --- F7["- Mã HĐ<br/>- Ngày bán<br/>- Mã KH<br/>- Mã NV<br/>- Tổng tiền"]
    T8 --- F8["- Mã phiếu nhập<br/>- Ngày nhập<br/>- Mã NCC<br/>- Mã NV<br/>- Tổng tiền"]
```

## 2. Quan hệ giữa các Table

```mermaid
erDiagram
    NHOM_THUOC ||--o{ THUOC : "gồm"
    THUOC ||--o{ LO_THUOC : "có nhiều lô"
    NHA_CUNG_CAP ||--o{ PHIEU_NHAP : "cung cấp"
    PHIEU_NHAP ||--o{ CT_PHIEU_NHAP : "gồm"
    LO_THUOC ||--o{ CT_PHIEU_NHAP : "nhập vào"
    KHACH_HANG ||--o{ HOA_DON : "mua"
    NHAN_VIEN ||--o{ HOA_DON : "lập"
    NHAN_VIEN ||--o{ PHIEU_NHAP : "lập"
    HOA_DON ||--o{ CT_HOA_DON : "gồm"
    LO_THUOC ||--o{ CT_HOA_DON : "xuất bán (FEFO)"
```

## 3. Bảng chi tiết (Table / Field)

| Table | Khóa chính | Field chính | Khóa ngoại |
|---|---|---|---|
| Nhóm thuốc | Mã nhóm | Tên nhóm, Mô tả | — |
| Thuốc | Mã thuốc | Tên, Hoạt chất, Đơn vị, Giá bán, Nhà sản xuất | Mã nhóm |
| Lô thuốc | Mã lô | Số lô, NSX, Hạn dùng, Số lượng tồn | Mã thuốc |
| Nhà cung cấp | Mã NCC | Tên, SĐT, Địa chỉ, Công nợ | — |
| Khách hàng | Mã KH | Họ tên, SĐT, Địa chỉ | — |
| Nhân viên | Mã NV | Họ tên, Chức vụ, SĐT | — |
| Phiếu nhập | Mã phiếu | Ngày nhập, Tổng tiền | Mã NCC, Mã NV |
| CT phiếu nhập | (Mã phiếu, Mã lô) | Số lượng, Giá nhập | Mã phiếu, Mã lô |
| Hóa đơn bán | Mã HĐ | Ngày bán, Tổng tiền | Mã KH, Mã NV |
| CT hóa đơn | (Mã HĐ, Mã lô) | Số lượng, Đơn giá | Mã HĐ, Mã lô |

## 4. Yêu cầu SQL (theo cột giữa bảng đen)

1. Thêm / sửa / xóa: thuốc, lô, khách hàng, nhà cung cấp…
2. Tìm kiếm: theo tên thuốc, theo ngày (hết hạn / bán).
3. Sắp xếp: theo tên, theo ngày.
4. Báo cáo: tồn kho, thuốc sắp hết hạn, doanh thu theo ngày.

> Đây là bản sơ đồ mức khái niệm cho môn học. Sơ đồ đầy đủ của PHARMACY OS (đa chi nhánh, đa tổ chức) sẽ làm ở Phase 1–2.
