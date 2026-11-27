USE QL_NhaThuoc;
-- 1) Them / sua / xoa  (Thanh vien 1)
INSERT INTO Thuoc VALUES ('T04','Ibuprofen 400mg','Ibuprofen','Vien',2500,'N01','Cong ty D');
UPDATE Thuoc SET GiaBan = 2800 WHERE MaThuoc = 'T04';
DELETE FROM Thuoc WHERE MaThuoc = 'T04';

-- 2) Tim kiem theo ten / theo ngay  (Thanh vien 2)
SELECT * FROM Thuoc WHERE TenThuoc LIKE '%para%';
SELECT * FROM HoaDon WHERE NgayBan BETWEEN '2026-11-01' AND '2026-11-30';
SELECT * FROM LoThuoc WHERE HanDung <= DATE_ADD(CURDATE(), INTERVAL 90 DAY);  -- sap het han

-- 3) Sap xep theo ten / theo ngay  (Thanh vien 2)
SELECT * FROM Thuoc ORDER BY TenThuoc ASC;
SELECT * FROM HoaDon ORDER BY NgayBan DESC;

-- 4) Bao cao: tinh toan va thong ke  (Thanh vien 1)
SELECT h.MaHD, SUM(c.SoLuong * c.DonGia) AS TongTienTinhDuoc
FROM HoaDon h JOIN CT_HoaDon c ON c.MaHD = h.MaHD GROUP BY h.MaHD;
SELECT NgayBan, SUM(TongTien) AS DoanhThu FROM HoaDon GROUP BY NgayBan;
SELECT t.TenThuoc, SUM(l.SoLuongTon) AS TonKho
FROM Thuoc t JOIN LoThuoc l ON l.MaThuoc = t.MaThuoc GROUP BY t.TenThuoc;
