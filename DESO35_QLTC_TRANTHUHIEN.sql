CREATE DATABASE S35_TranThuHien;
GO
USE S35_TranThuHien;
GO

-- Bảng lưu thông tin sinh viên
CREATE TABLE SinhVien (
    MaSV char(10) PRIMARY KEY,
    HoTen NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    DienThoai NVARCHAR(20),
    DiaChi NVARCHAR(255)
);
go
-- Bảng lưu thông tin loại chi tiêu
CREATE TABLE LoaiChiTieu (
    MaLoaiChiTieu char(10) PRIMARY KEY,
    TenLoai NVARCHAR(255) NOT NULL
);
go
-- Bảng lưu thông tin chi tiêu
CREATE TABLE ChiTieu (
    MaChiTieu char(10) PRIMARY KEY,
    MaSV char(10),
    MaLoaiChiTieu char(10),
    SoTien DECIMAL(10, 2) NOT NULL,
    MoTa NVARCHAR(1000),
    NgayChiTieu DATE,
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaLoaiChiTieu) REFERENCES LoaiChiTieu(MaLoaiChiTieu)
);
go
-- Bảng lưu thông tin thu chi
CREATE TABLE ThuChi (
    MaThuChi char(10) PRIMARY KEY,
    MaSV char(10),
    SoTien DECIMAL(10, 2) NOT NULL,
    MoTa NVARCHAR(1000),
    NgayThuChi DATE,
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
go
-- Bảng lưu thông tin thẻ ngân hàng
CREATE TABLE TheNganHang (
    MaThe char(10) PRIMARY KEY,
    MaSV char(10),
    SoTaiKhoan NVARCHAR(20) NOT NULL,
    SoDu DECIMAL(10, 2),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
go
-- Chèn dữ liệu cho bảng SinhVien
INSERT INTO SinhVien (MaSV, HoTen, Email, DienThoai, DiaChi) 
VALUES
('SV01', N'Nguyễn Văn Hiếu', 'nguyenvana@gmail. com', '0123456789', N'Hà Nội'),
('SV02', N'Trần Thị Bình', 'tranthib@gmail.com', '0987654321', N'Hồ Chí Minh'),
('SV03', N'Phạm Văn Cương', 'phamvanc@gmail.com', '0123456789', N'Đà Nẵng'),
('SV04', N'Lê Thị Duyên', 'lethid@gmail.com', '0987654321', N'Hải Phòng'),
('SV05', N'Huỳnh Văn Dương', 'huynhvanh@gmail.com', '0123456789', N'Cần Thơ'),
('SV06', N'Võ Thị Sáu', 'vothif@gmail.com', '0987654321', N'Hà Tĩnh'),
('SV07', N'Đặng Văn Giang', 'dangvang@gmail.com', '0123456789', N'Nghệ An'),
('SV08', N'Mai Thị Huệ', 'maithih@gmail.com', '0987654321', N'Bắc Ninh'),
('SV09', N'Phan Văn Đồng', 'phanvani@gmail.com', '0123456789', N'Thái Bình'),
('SV010', N'Lý Thị Kính', 'lythik@gmail.com', '0987654321', N'Hà Nam');
go
-- Chèn dữ liệu cho bảng LoaiChiTieu
INSERT INTO LoaiChiTieu (MaLoaiChiTieu, TenLoai) 
VALUES
('LCT01', N'Ăn uống'),
('LCT02', N'Giáo trình và sách vở'),
('LCT03', N'Điện thoại di động'),
('LCT04', N'Quần áo'),
('LCT05', N'Giải trí'),
('LCT06', N'Học phí'),
('LCT07', N'Xăng xe'),
('LCT08', N'Internet và truyền hình cáp'),
('LCT09', N'Sức khỏe'),
('LCT010', N'Gia vị và thực phẩm nhẹ');
go
-- Chèn dữ liệu cho bảng ChiTieu
INSERT INTO ChiTieu (MaChiTieu, MaSV, MaLoaiChiTieu, SoTien, MoTa, NgayChiTieu) 
VALUES
('MCT01', 'SV01', 'LCT01', 500000, N'Mua sách mới', '2023-01-10'),
('MCT02', 'SV02', 'LCT02', 150000, N'Ăn trưa', '2023-01-12'),
('MCT03', 'SV03', 'LCT03', 300000, N'Xem phim', '2023-01-15'),
('MCT04', 'SV04', 'LCT04', 200000, N'Nạp tiền điện thoại', '2023-01-18'),
('MCT05', 'SV05', 'LCT05', 700000, N'Mua áo mới', '2023-01-20'),
('MCT06', 'SV06', 'LCT06', 400000, N'Nạp xăng', '2023-01-22'),
('MCT07', 'SV07', 'LCT07', 120000, N'Thanh toán Internet', '2023-01-25'),
('MCT08', 'SV08', 'LCT08', 2500000, N'Học phí học kỳ mới', '2023-01-28'),
('MCT09', 'SV09', 'LCT09', 80000, N'Mua thuốc', '2023-01-30'),
('MCT010', 'SV010', 'LCT010', 100000, N'Mua gia vị', '2023-02-01');
go
-- Chèn dữ liệu cho bảng ThuChi
INSERT INTO ThuChi (MaThuChi, MaSV, SoTien, MoTa, NgayThuChi)
VALUES
('MTC01', 'SV01', 1000000, N'Thu nhập thêm từ công việc part-time', '2023-01-05'),
('MTC02', 'SV02', 800000, N'Thu nhập thêm từ làm thêm', '2023-01-08'),
('MTC03', 'SV03', 1200000, N'Thu nhập thêm từ kinh doanh online', '2023-01-12'),
('MTC04', 'SV04', 600000, N'Thu nhập thêm từ làm thêm', '2023-01-15'),
('MTC05', 'SV05', 1500000, N'Thu nhập thêm từ bán đồ handmade', '2023-01-20'),
('MTC06', 'SV06', 500000, N'Thu nhập thêm từ dạy học gia sư', '2023-01-25'),
('MTC07', 'SV07', 900000, N'Thu nhập thêm từ làm thêm', '2023-01-28'),
('MTC08', 'SV08', 2000000, N'Thu nhập thêm từ làm dự án freelance', '2023-02-02'),
('MTC09', 'SV09', 700000, N'Thu nhập thêm từ bán hàng online', '2023-02-05'),
('MTC010', 'SV010', 300000, N'Thu nhập thêm từ giảng dạy ngoại ngữ', '2023-02-10');
go
-- Chèn dữ liệu cho bảng TheNganHang
INSERT INTO TheNganHang (MaThe, MaSV, SoTaiKhoan, SoDu) 
VALUES
('MT01', 'SV01', '1234567890', 5000000),
('MT02', 'SV02', '0987654321', 3000000),
('MT03', 'SV03', '1111222233', 8000000),
('MT04', 'SV04', '9876543210', 1500000),
('MT05', 'SV05', '5555666677', 6000000),
('MT06', 'SV06', '9876543210', 2000000),
('MT07', 'SV07', '3333444455', 4500000),
('MT08', 'SV08', '9876543210', 7000000),
('MT09', 'SV09', '6666777788', 9000000),
('MT010', 'SV010', '9876543210', 4000000);
go
SELECT*FROM SinhVien
SELECT*FROM ChiTieu
SELECT*FROM LoaiChiTieu
SELECT*FROM TheNganHang
SELECT*FROM ThuChi

--PHẦN 2
--Quản Lý Người Dùng
--tạo các login 
Exec sp_addlogin sv1,'123'
exec sp_addlogin sv2,'123'
exec sp_addlogin sv3,'123'
exec sp_addlogin sv4,'123'
exec sp_addlogin sv5,'123'

--tạo user vào login
exec sp_adduser sv1,tranthuhien1
exec sp_adduser sv2,tranthuhien2
exec sp_adduser sv3,tranthuhien3
exec sp_adduser sv4,tranthuhien4
exec sp_adduser sv5,tranthuhien5

--tạo nhóm ( role ) người dùng
exec sp_addrole nhom1
exec sp_addrole nhom2

--thêm user vào nhóm ( role )
exec sp_addrolemember nhom1,tranthuhien1
exec sp_addrolemember nhom1,tranthuhien3
exec sp_addrolemember nhom1,tranthuhien5
exec sp_addrolemember nhom2,tranthuhien2
exec sp_addrolemember nhom2,tranthuhien4

--đăng nhập sa vào rồi cấp quyền
--cấp quyền select , insert , update của bảng sinhvien cho người dùng tranthuhien1
grant select , insert , update on SinhVien to tranthuhien1

--cấp quyền tạo bảng ( create table ) , tạo view ( create view ) , tạo procedure cho nhóm người dùng 1
grant create table , create view , create procedure to nhom1

-- thu hồi quyền của người dùng tranthuhien1
revoke select , insert , update on SinhVien from tranthuhien1
--thu hồi quyền của nhóm người dùng 1
revoke create table , create view , create procedure from nhom1
---------------------------------------------------------------- HIỆN RA CHỖ XANH XANH T ẤN RỒI THÌ ẤN VÀO NEW QUERY
--PHẦN 3
--tạo chỉ mục 
--Chỉ mục đơn:
--Chỉ mục đơn cho cột NgayChiTieu trong bảng ChiTieu.
CREATE INDEX IX_NgayChiTieu ON ChiTieu(NgayChiTieu);
exec sp_helpindex'ChiTieu';
SELECT*FROM ChiTieu Where NgayChiTieu = '2023-01-10';
--Chỉ mục đơn có hệ số điền đầy cho cột SoTien trong bảng ThuChi.

CREATE INDEX IX_SoTien_ThuChi ON ThuChi(SoTien) WITH FILLFACTOR = 80;
select * from ThuChi where SoTien > 10000
--Chỉ mục phức hợp:
--Chỉ mục phức hợp cho cột MaSV và NgayThuChi trong bảng ThuChi.

CREATE INDEX IX_MaSV_NgayThuChi ON ThuChi(MaSV, NgayThuChi);
--Chỉ mục phức hợp cho cột MaSV và NgayChiTieu trong bảng ChiTieu.
select * from ThuChi 
where MaSV = 'SV05' or NgayThuChi = '2023-01-05'

CREATE INDEX IX_STK_SD ON TheNganHang(SoTaiKhoan, SoDu);
select * from TheNganHang
where SoTaiKhoan is not null or SoDu > 1000000

--chỉ mục toàn văn
CREATE FULLTEXT CATALOG nhom_chi_muc_toan_van_mac_dinh
WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT;
go
create fulltext index on SinhVien(HoTen) key index [PK__SinhVien__2725081A242E4D92] on nhom_chi_muc_toan_van_mac_dinh
select * from SinhVien
where contains(HoTen, '"Nguyễn" or "Huệ" or "Văn"')
--DROP FULLTEXT CATALOG nhom_chi_muc_toan_van_mac_dinh
--DROP FULLTEXT INDEX ON SinhVien
go
----------------------------------------------------------------
--PHẦN 4.view
-- View 1: Danh sách sinh viên
CREATE VIEW DanhSachSinhVien 
AS
	SELECT * from SinhVien
go
SELECT*FROM DanhSachSinhVien 
-- Insert vào view 
INSERT INTO DanhSachSinhVien(MaSV, HoTen, Email, DienThoai, DiaChi) 
VALUES('SV011', N'Nguyễn Văn Hiếu', 'nguyenvana@gmail. com', '0123456789', N'Hà Nội')
-- delete view
DELETE FROM DanhSachSinhVien WHERE MaSV = 'SV011'
-- update view
UPDATE DanhSachSinhVien
SET HoTen = N'Trần Thu Hiền'
WHERE MaSV = 'SV011'
go
-- View 2: Danh Sách Chi Tiêu
CREATE VIEW DanhSachChiTieu AS
SELECT 
    MaChiTieu, MaSV, SoTien
FROM ChiTieu 
go
SELECT*FROM DanhSachChiTieu
-- Insert vào view 
INSERT INTO DanhSachChiTieu (MaChiTieu, MaSV, SoTien)
VALUES ('MCT011', 'SV01', 500000)
-- update view
UPDATE DanhSachChiTieu
SET SoTien = 1000000
WHERE MaChiTieu = 'MCT011'
-- delete view
DELETE FROM DanhSachChiTieu WHERE MaChiTieu = 'MCT011'
go
-- View 3: Danh sách thu chi của sinh viên
CREATE VIEW ThuChiSinhVien AS
SELECT 
    tc.MaThuChi,
    s.HoTen AS TenSinhVien,
    tc.SoTien,
    tc.MoTa,
    tc.NgayThuChi
FROM ThuChi tc
JOIN SinhVien s ON tc.MaSV = s.MaSV
go
SELECT*FROM ThuChiSinhVien
-- Thêm thu chi cho sinh viên
INSERT INTO SinhVien (MaSV, HoTen, Email, DienThoai, DiaChi) 
VALUES('SV011', N'Nguyễn Văn Hiếu', 'nguyenvana@gmail. com', '0123456789', N'Hà Nội')
go
INSERT INTO ThuChi (MaThuChi, MaSV, SoTien, MoTa, NgayThuChi)
VALUES('MTC011', 'SV011', 1000000, N'Thu nhập thêm từ công việc part-time', '2023-01-05')
-- Xóa thu chi của sinh viên
DELETE FROM ThuChi WHERE MaThuChi = 'MTC011'
go
delete from SinhVien where MaSV = 'SV011'
-- Cập nhật thông tin thu chi của sinh viên
UPDATE ThuChiSinhVien
SET SoTien = 1800000
WHERE MaThuChi = 'MTC011'
go
-- View 4: Tổng thu chi của sinh viên
CREATE VIEW TongThuChiSinhVien AS
SELECT 
	s.MaSV,
    s.HoTen AS TenSinhVien,
    SUM(tc.SoTien) AS TongThuChi
FROM ThuChi tc
JOIN SinhVien s ON tc.MaSV = s.MaSV
GROUP BY s.MaSV, s.HoTen
go
 SELECT*FROM TongThuChiSinhVien
-- Thêm thu chi mới và cập nhật tổng thu chi của sinh viên
INSERT INTO SinhVien (MaSV, HoTen, Email, DienThoai, DiaChi) 
VALUES('SV011', N'Nguyễn Văn Hiếu', 'nguyenvana@gmail. com', '0123456789', N'Hà Nội')
go
INSERT INTO ThuChi (MaThuChi, MaSV, SoTien, MoTa, NgayThuChi)
VALUES('MTC011', 'SV011', 1000000, N'Thu nhập thêm từ công việc part-time', '2023-01-05')
-- Xóa thu chi và cập nhật tổng thu chi của sinh viên
DELETE FROM ThuChi WHERE MaThuChi = 'MTC011'
delete from SinhVien where MaSV = 'SV011'
go
delete from SinhVien where MaSV = 'SV011'
-- Cập nhật tổng thu chi của sinh viên
UPDATE SinhVien
SET HoTen = N'Trần Thu Hiền'
WHERE MaSV = 'SV011'
update ThuChi
set SoTien = 1000000
where MaThuChi = 'MTC011'
go
-- View 5: Thông tin tài khoản ngân hàng của sinh viên
CREATE VIEW ThongTinTaiKhoanVaThuChiCuaSinhVien AS
SELECT 
    tn.MaThe,
    s.HoTen AS TenSinhVien,
    tn.SoTaiKhoan,
    tn.SoDu,
	tc.MaThuChi,
	tc.SoTien as SoTienThuChi,
	NgayThuChi
FROM TheNganHang tn
JOIN SinhVien s ON tn.MaSV = s.MaSV
join ThuChi tc on s.MaSV=tc.MaSV
go
SELECT*FROM ThongTinTaiKhoanVaThuChiCuaSinhVien
-- Thêm thông tin tài khoản ngân hàng mới cho sinh viên
INSERT INTO SinhVien (MaSV, HoTen, Email, DienThoai, DiaChi) 
VALUES('SV011', N'Nguyễn Văn Hiếu', 'nguyenvana@gmail. com', '0123456789', N'Hà Nội')
go
INSERT INTO ThuChi (MaThuChi, MaSV, SoTien, MoTa, NgayThuChi)
VALUES('MTC011', 'SV011', 1000000, N'Thu nhập thêm từ công việc part-time', '2023-01-05')
go
INSERT INTO TheNganHang (MaThe, MaSV, SoTaiKhoan, SoDu) 
VALUES('MT011', 'SV011', '1234567890', 5000000)
-- Cập nhật thông tin tài khoản ngân hàng của sinh viên
UPDATE ThongTinTaiKhoanVaThuChiCuaSinhVien
SET SoDu = SoDu + 5000000
WHERE TenSinhVien = N'Phạm Văn Cương'
-- Xóa thông tin trên view
DELETE FROM ThuChi WHERE MaThuChi = 'MTC011'
go
delete from TheNganHang where MaThe = 'MT011'
go
delete from SinhVien where MaSV = 'SV011'
go
------------------------------------------------------------------------------
--PHẦN 5
--1.Truy vấn sử dụng WHERE:
--lấy tất cả các bản ghi từ bảng ChiTieu có MaSV = 'SV01'
SELECT * FROM ChiTieu 
WHERE MaSV = 'SV01'
--2. Truy vấn sử dụng JOIN:
--sử dụng JOIN để kết nối các bảng ChiTieu, SinhVien và LoaiChiTieu
SELECT c.MaChiTieu, s.HoTen AS TenSinhVien, lc.TenLoai AS LoaiChiTieu, c.SoTien, c.MoTa, c.NgayChiTieu
FROM ChiTieu c
JOIN SinhVien s ON c.MaSV = s.MaSV
JOIN LoaiChiTieu lc ON c.MaLoaiChiTieu = lc.MaLoaiChiTieu
--3. Truy vấn sử dụng GROUP BY và SUM:
--sử dụng GROUP BY và SUM để tính tổng chi tiêu theo từng loại. Kết quả trả về bao gồm LoaiChiTieu và TongChiTieu.
SELECT top(1) with ties lc.TenLoai AS LoaiChiTieu, SUM(c.SoTien) AS TongChiTieu
FROM ChiTieu c
JOIN LoaiChiTieu lc ON c.MaLoaiChiTieu = lc.MaLoaiChiTieu
GROUP BY lc.TenLoai
order by SUM(c.SoTien)
--4. Truy vấn sử dụng CASE:
--sử dụng CASE để phân loại mức độ chi tiêu của mỗi sinh viên dựa trên tổng số tiền chi tiêu của họ. Kết quả trả về bao gồm HoTen và MucDoChiTieu.
SELECT HoTen, 
    CASE 
        WHEN TongChiTieu <= 500000 THEN N'Ít'
        WHEN TongChiTieu <= 1000000 THEN N'Trung bình'
        ELSE N'Nhiều'
    END AS MucDoChiTieu
FROM (
    SELECT s.HoTen, SUM(c.SoTien) AS TongChiTieu
    FROM ChiTieu c
    JOIN SinhVien s ON c.MaSV = s.MaSV
    GROUP BY s.HoTen
) AS TongChiTieuSinhVien
--5. Truy vấn sử dụng UNION:
--sử dụng UNION để kết hợp các bản ghi từ bảng ChiTieu và bảng ThuChi có MaSV = 'SV01'. Kết quả trả về bao gồm MaChiTieu, Loai, SoTien, MoTa và NgayChiTieu, được sắp xếp theo NgayChiTieu theo thứ tự giảm dần.
SELECT MaChiTieu, 'ChiTieu' AS Loai, SoTien, MoTa, NgayChiTieu FROM ChiTieu WHERE MaSV = 'SV01'
UNION
SELECT MaThuChi, 'ThuChi' AS Loai, SoTien, MoTa, NgayThuChi FROM ThuChi WHERE MaSV = 'SV01'
ORDER BY NgayChiTieu DESC
--6. Truy vấn sử dụng HAVING:
--sử dụng HAVING để lọc các loại chi tiêu có tổng số tiền chi tiêu lớn hơn 500,000. Kết quả trả về bao gồm LoaiChiTieu và TongChiTieu.
SELECT lc.TenLoai AS LoaiChiTieu, SUM(c.SoTien) AS TongChiTieu
FROM ChiTieu c
JOIN LoaiChiTieu lc ON c.MaLoaiChiTieu = lc.MaLoaiChiTieu
GROUP BY lc.TenLoai
HAVING SUM(c.SoTien) > 500000
--7. Truy vấn sử dụng PIVOT:
--sử dụng PIVOT để chuyển đổi dữ liệu từ dạng dọc sang dạng ngang. Kết quả trả về bao gồm các cột HoTen, và các loại chi tiêu (Ăn uống, Giáo trình và sách vở, Điện thoại di động, Quần áo...) với số tiền tương ứng.
SELECT *
FROM (
    SELECT s.HoTen, lc.TenLoai, c.SoTien
    FROM ChiTieu c
    JOIN LoaiChiTieu lc ON c.MaLoaiChiTieu = lc.MaLoaiChiTieu
    JOIN SinhVien s ON c.MaSV = s.MaSV
) AS ChiTieuSinhVien
PIVOT (
    SUM(SoTien)
    FOR TenLoai IN ([Ăn uống], [Giáo trình và sách vở], [Điện thoại di động], [Quần áo], [Giải trí], [Học phí], [Xăng xe], [Internet và truyền hình cáp], [Sức khỏe], [Gia vị và thực phẩm nhẹ])
) AS PivotTable
--8. Truy vấn sử dụng EXISTS:
--sử dụng EXISTS để lấy tên các sinh viên có ít nhất một bản ghi trong bảng ChiTieu và không có bản ghi nào trong bảng ThuChi.
SELECT s.HoTen
FROM SinhVien s
WHERE EXISTS (
    SELECT *
    FROM ChiTieu c
    WHERE c.MaSV = s.MaSV
)
AND NOT EXISTS (
    SELECT *
    FROM ThuChi tc
    WHERE tc.MaSV = s.MaSV
)
--9. Truy vấn sử dụng PERCENT :
--sử dụng PERCENT để lấy ra 20% bản ghi ở bảng SinhVien
SELECT top(1) with ties --PERCENT * 
FROM SinhVien
order by MaSV
--10. Truy vấn sử dụng IN:
--sử dụng IN để lấy tất cả các bản ghi từ bảng ChiTieu có trong bảng SinhVien, được sắp xếp theo NgayChiTieu theo thứ tự giảm dần.
SELECT * FROM ChiTieu 
WHERE MaSV IN (select MaSV from SinhVien) 
ORDER BY NgayChiTieu DESC
--11. Truy vấn sử dụng LIKE:
--sử dụng LIKE để lấy tất cả các bản ghi từ bảng ChiTieu có MoTa chứa từ "mua", được sắp xếp theo NgayChiTieu theo thứ tự giảm dần.
SELECT * FROM ChiTieu 
WHERE MoTa LIKE '%mua%' 
ORDER BY NgayChiTieu DESC;
--12. Truy vấn sử dụng CASE:
--sử dụng CASE để phân loại mức độ chi tiêu và thu nhập của mỗi sinh viên dựa trên tổng số tiền chi tiêu và thu chi. Kết quả trả về bao gồm HoTen, MucDoChiTieu và MucDoThuNhap.
SELECT HoTen, 
    CASE 
        WHEN TongChiTieu <= 500000 THEN N'Ít'
        WHEN TongChiTieu <= 1000000 THEN N'Trung bình'
        ELSE N'Nhiều'
    END AS MucDoChiTieu,
    CASE 
        WHEN TongThuChi <= 2000000 THEN N'Thấp'
        WHEN TongThuChi <= 5000000 THEN N'Trung bình'
        ELSE N'Cao'
    END AS MucDoThuNhap
FROM (
    SELECT s.HoTen, SUM(c.SoTien) AS TongChiTieu, SUM(tc.SoTien) AS TongThuChi
    FROM ChiTieu c
    JOIN SinhVien s ON c.MaSV = s.MaSV
    LEFT JOIN ThuChi tc ON c.MaSV = tc.MaSV
    GROUP BY s.HoTen
) AS TongThuChiSinhVien
--13. Truy vấn sử dụng UNION ALL:
--sử dụng UNION ALL để kết hợp các bản ghi từ bảng ChiTieu và bảng ThuChi có MaSV tồn tại. Kết quả trả về là tất cả các bản ghi từ cả hai bảng, với cột "Loai" chỉ ra nguồn gốc của bản ghi (ChiTieu hoặc ThuChi). Kết quả được sắp xếp theo cột NgayChiTieu theo thứ tự giảm dần.
SELECT MaChiTieu, 'ChiTieu' AS Loai, SoTien, MoTa, NgayChiTieu FROM ChiTieu WHERE MaSV is not null
UNION ALL
SELECT MaThuChi, 'ThuChi' AS Loai, SoTien, MoTa, NgayThuChi FROM ThuChi WHERE MaSV is not null
ORDER BY NgayChiTieu DESC
--14. Truy vấn sử dụng SUM và GROUP BY:
--Tính Tổng chi tiêu và Tổng thu chi của mỗi sinh viên
SELECT s.HoTen, SUM(c.SoTien) AS TongChiTieu, SUM(tc.SoTien) AS TongThuChi
FROM ChiTieu c
RIGHT JOIN SinhVien s ON c.MaSV = s.MaSV
LEFT JOIN ThuChi tc ON c.MaSV = tc.MaSV
GROUP BY s.HoTen;
--15. Truy vấn sử dụng CTE:
--sử dụng CTE để tạo một bảng tạm gọi là TopSpenders, chứa thông tin về tổng số tiền chi tiêu của mỗi sinh viên. Sau đó, truy vấn chọn tất cả các bản ghi từ TopSpenders có tổng số tiền chi tiêu (TongChiTieu) bằng giá trị lớn nhất trong bảng TopSpenders. Kết quả trả về là bản ghi của sinh viên có tổng số tiền chi tiêu cao nhất.
WITH TopSpenders AS (
    SELECT s.HoTen, SUM(c.SoTien) AS TongChiTieu
    FROM ChiTieu c
    JOIN SinhVien s ON c.MaSV = s.MaSV
    GROUP BY s.HoTen
)
SELECT * FROM TopSpenders WHERE TongChiTieu = (SELECT MAX(TongChiTieu) FROM TopSpenders)
go
----------------------------------------------------
--PHẦN 6. Thủ tục cập nhật thông tin sinh viên
create PROCEDURE CapNhatSinhVien
    @MaSV char(10),
    @HoTen NVARCHAR(255),
    @Email NVARCHAR(255),
    @DienThoai CHAR(20),
    @DiaChi NVARCHAR(255)
AS
BEGIN
    UPDATE SinhVien
    SET HoTen = @HoTen,
        Email = @Email,
        DienThoai = @DienThoai,
        DiaChi = @DiaChi
    WHERE MaSV = @MaSV
END
go
EXEC CapNhatSinhVien 'SV01', N'Nguyễn Văn Hiếu', N'nguyenvanhieu@gmail.com', '0123456789', N'Hà Nội'
select*from SinhVien
go
-- Thủ tục xóa thông tin chi tiêu
CREATE PROCEDURE XoaChiTieu
    @MaChiTieu char(10)
AS
BEGIN
    DELETE FROM ChiTieu
    WHERE MaChiTieu = @MaChiTieu
END
go
exec XoaChiTieu 'MCT010'
select*from ChiTieu
go
-- Thủ tục chèn thông tin chi tiêu
create PROCEDURE ChenChiTieu
	@MaChiTieu char(10),
    @MaSV char(10),
    @MaLoaiChiTieu char(10),
    @SoTien DECIMAL(10, 2),
    @MoTa NVARCHAR(1000),
    @NgayChiTieu DATE
AS
BEGIN
    INSERT INTO ChiTieu (MaChiTieu, MaSV, MaLoaiChiTieu, SoTien, MoTa, NgayChiTieu)
    VALUES (@MaChitieu, @MaSV, @MaLoaiChiTieu, @SoTien, @MoTa, @NgayChiTieu)
END
go
EXEC ChenChiTieu 'MCT011', 'SV01', 'LCT01', 500000.0, N'Mua sách mới', '2023-01-10'
go
select*from ChiTieu
go
-- Thủ tục tìm kiếm sinh viên theo tên
CREATE PROCEDURE TimKiemSinhVien
    @Ten NVARCHAR(255)
AS
BEGIN
    SELECT *
    FROM SinhVien
    WHERE HoTen LIKE N'%' + @Ten + '%'
END
go
EXEC TimKiemSinhVien N'Nguyễn'
go
-- Thủ tục tìm kiếm chi tiêu theo ngày
CREATE PROCEDURE TimKiemChiTieuTheoNgay
    @NgayChiTieu DATE
AS
BEGIN
    SELECT *
    FROM ChiTieu
    WHERE NgayChiTieu = @NgayChiTieu
END
go
EXEC TimKiemChiTieuTheoNgay '2023-01-15'
go
-- Thủ tục thống kê số tiền chi tiêu của mỗi loại chi tiêu
CREATE PROCEDURE ThongKeTongTienChiTieu
AS
BEGIN
    SELECT TenLoai, SUM(SoTien) AS TongTien
    FROM ChiTieu
    JOIN LoaiChiTieu ON ChiTieu.MaLoaiChiTieu = LoaiChiTieu.MaLoaiChiTieu
    GROUP BY TenLoai
END
go
EXEC ThongKeTongTienChiTieu
go
-- Thủ tục tính toán tổng số tiền còn lại trong thẻ ngân hàng của một sinh viên
CREATE PROCEDURE TinhTongSoDu
    @MaSV char(10)
AS
BEGIN
    DECLARE @TongThu DECIMAL(10, 2)
    DECLARE @TongChi DECIMAL(10, 2)
    SELECT @TongThu = SUM(SoTien) FROM ThuChi WHERE MaSV = @MaSV
    SELECT @TongChi = SUM(SoTien) FROM ChiTieu WHERE MaSV = @MaSV
    SELECT @TongThu - @TongChi AS SoDu
END
go
EXEC TinhTongSoDu 'SV01'
go
-- Tạo hàm trả về kiểu nvarchar(30) 
CREATE FUNCTION HoTenCuaSinhVien(@MaSV char(10))
RETURNS nvarchar(30)
AS
begin
	RETURN(
		SELECT HoTen FROM SinhVien
		WHERE MaSV = @MaSV
	)
end
go
SELECT dbo.HoTenCuaSinhVien('SV01')
go
-- Hàm trả về kiểu bảng - Danh sách SinhVien
CREATE FUNCTION GetSinhVienList()
RETURNS TABLE 
AS
	RETURN(
		SELECT * FROM SinhVien
	)
go
SELECT * FROM GetSinhVienList()
go
-- Hàm trả biến bảng về thông tin sinh viên theo mã
create FUNCTION TimSinhVienTheoMa(@maSV char(10))
RETURNS @SinhVien TABLE(
    MaSV char(10),
    HoTen NVARCHAR(255),
    Email NVARCHAR(255),
    DienThoai NVARCHAR(20),
    DiaChi NVARCHAR(255)
)
AS
BEGIN
    INSERT INTO @SinhVien
		SELECT * FROM SinhVien
		WHERE MaSV = @maSV
    RETURN
END
go
SELECT * FROM TimSinhVienTheoMa('SV05')
go
----------------------------------------------------
--PHẦN 7
-- Trigger after(for) insert
CREATE TRIGGER InsertSinhVienKhongNull ON SinhVien
AFTER INSERT
AS
BEGIN
    IF EXISTS (select * from inserted where MaSV is null
	or HoTen is null or Email is null or DiaChi is null
	or DienThoai is null)
    BEGIN
        PRINT N'Insert sai.'
		rollback tran
    END
	else
		print N'Insert đúng.'
END
go
INSERT INTO SinhVien (MaSV, HoTen, Email, DienThoai, DiaChi) 
VALUES('SV012', N'Nguyễn Văn Hậu', N'nguyenvanhau@gmail. com', '0123456789', N'Hưng yên')
select * from SinhVien
go
-- Trigger after(for) update
create TRIGGER UpdateTheNganHang ON TheNganHang
AFTER UPDATE AS
BEGIN
    if exists(select * from inserted 
	where MaThe in (select MaThe from TheNganHang)
	and SoDu in (select SoDu from TheNganHang))
		print N'Update đúng.'
	else
	begin
		print N'Thẻ không tồn tại'
		rollback tran
	end
END
go
update TheNganHang
set SoDu = 3000000.00
where MaThe = 'MT010'
select * from TheNganHang
go
--Trigger after(for) delete
CREATE TRIGGER DeleteLoaiChiTieu ON LoaiChiTieu
AFTER delete
AS
BEGIN
    select * from deleted
	print N'Đã xóa.'
END
go
delete from LoaiChiTieu where MaLoaiChiTieu = 'LCT011'
select * from LoaiChiTieu
go
--4. Trigger INSTEAD OF UPDATE
create TRIGGER CapNhatThuChi ON ThuChi
INSTEAD OF UPDATE
AS
BEGIN
	if exists(select * from ThuChi where MaThuChi in (select MaThuChi from deleted))
	begin
		print N'Mã Thu Chi tồn tại.'
		update ThuChi
		set SoTien = (select SoTien from deleted)
		where MaThuChi = (select MaThuChi from deleted)	
		select * from inserted
		select * from deleted
	end
	else
	begin
		PRINT N'Mã Thu Chi không tồn tại.'
		rollback tran
	end   
END
go
UPDATE ThuChi SET SoTien = 200000 WHERE MaThuChi = 'MTC01'
select * from ThuChi
go
--5. Trigger INSTEAD OF INSERT 
create TRIGGER KhongChoThemThuNhapTuKinhDoanh ON ThuChi
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE MoTa LIKE N'%kinh doanh online%')
    BEGIN
        PRINT N'Không được phép thêm thu nhập từ kinh doanh online.'
		rollback tran
    END
    ELSE
    BEGIN
        INSERT INTO ThuChi
        SELECT * FROM inserted
		print N'Insert thành công.'
    END
END
go
INSERT INTO ThuChi (MaThuChi, MaSV, SoTien, MoTa, NgayThuChi)
VALUES('MTC011', 'SV01', 1000000, N'kinh doanh online', '2023-01-05')
select * from ThuChi
go
--6.Trigger instead of delete
CREATE TRIGGER XoaTheNganhang ON TheNganHang
instead of DELETE
AS
BEGIN
	if exists(select MaThe from TheNganHang where MaThe in (select MaThe from deleted))
	begin
		delete from TheNganHang where MaThe in (select MaThe from deleted)
		print N'Xóa thẻ ngân hàng thành công.'
	end
    else
		print N'Xóa thẻ thất bại.'
END
go
delete from TheNganHang where MaThe = 'MT012'
SELECT * FROM TheNganHang
go
--7. Trigger dây truyền
create trigger XoaSinhVienThiXoaTheNganHang on SinhVien
instead of delete as
begin
	if exists(select MaSV from SinhVien where MaSV in(select MaSV from deleted))
	begin
		delete from TheNganHang where MaSV in(select MaSV from deleted)
		delete from SinhVien where MaSV in(select MaSV from deleted)
		print N'Xóa sinh viên thành công.'
	end
	else
		print N'Sinh viên không tồn tại.'
end
delete from SinhVien where MaSV = 'SV010'
go
-- 8. Trigger tự động cập nhật
create TRIGGER TongTienChiTieuCuaSinhVien on ChiTieu
after INSERT, UPDATE
AS
BEGIN
	select * from inserted
    select sv.HoTen, sum(SoTien) TongChiTieu from ChiTieu ct join SinhVien sv 
	on ct.MaSV=sv.MaSV
	group by ct.MaSV, sv.HoTen
END
go
INSERT INTO ChiTieu (MaChiTieu, MaSV, MaLoaiChiTieu, SoTien, MoTa, NgayChiTieu) 
VALUES('MCT013', 'SV01', 'LCT01', 500000, N'Mua sách mới', '2023-01-10')
go
select*from ChiTieu
select * from SinhVien
