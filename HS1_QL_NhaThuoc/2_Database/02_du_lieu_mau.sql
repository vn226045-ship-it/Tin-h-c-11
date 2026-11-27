-- Du lieu mau (gia lap, khong phai du lieu that)
USE QL_NhaThuoc;
INSERT INTO NhomThuoc VALUES ('N01','Giam dau - ha sot','Thuoc giam dau, ha sot'),('N02','Khang sinh','Thuoc ke don'),('N03','Vitamin','Thuc pham chuc nang');
INSERT INTO Thuoc VALUES
('T01','Paracetamol 500mg','Paracetamol','Vien',1500,'N01','Cong ty A'),
('T02','Amoxicillin 500mg','Amoxicillin','Vien',3000,'N02','Cong ty B'),
('T03','Vitamin C 1000mg','Acid ascorbic','Vien',2000,'N03','Cong ty C');
INSERT INTO LoThuoc VALUES
('L01','T01','LO2501','2025-01-10','2027-01-10',500),
('L02','T02','LO2502','2025-03-01','2026-12-15',200),
('L03','T03','LO2503','2025-05-20','2026-06-30',300);
INSERT INTO KhachHang VALUES ('K01','Nguyen Van A','0900000001','Quan 1, TP.HCM'),('K02','Tran Thi B','0900000002','Quan 3, TP.HCM');
INSERT INTO NhanVien VALUES ('NV01','Le Van C','079108123456','2008-05-01','Nam','Duoc si'),('NV02','Pham Thi D','079308654321','2008-09-09','Nu','Thu ngan');
INSERT INTO NhaCungCap VALUES ('C01','Cong ty Duoc A','0281111111','TP.HCM',0),('C02','Cong ty Duoc B','0282222222','Ha Noi',1000000);
INSERT INTO PhieuNhap VALUES ('PN01','2026-11-01','C01','NV01',750000),('PN02','2026-11-10','C02','NV01',600000);
INSERT INTO CT_PhieuNhap VALUES ('PN01','L01',500,1000),('PN01','L03',250,1000),('PN02','L02',200,3000);
INSERT INTO HoaDon VALUES ('HD01','2026-11-20','K01','NV02',7500),('HD02','2026-11-21','K02','NV02',6000);
INSERT INTO CT_HoaDon VALUES ('HD01','L01',5,1500),('HD02','L02',2,3000);
