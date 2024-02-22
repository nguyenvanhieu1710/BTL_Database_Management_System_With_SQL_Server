CREATE DATABASE T49_BUITHIQUYNH_BTL
go
USE T49_BUITHIQUYNH_BTL
GO
-- Tạo bảng Khoa
CREATE TABLE Khoa (
    MaKhoa INT PRIMARY KEY,
    TenKhoa NVARCHAR(255)
);
go
-- Tạo bảng SinhVien
CREATE TABLE SinhVien (
    MaSV INT PRIMARY KEY,
    HoTen VARCHAR(255),
    NgaySinh DATE,
    GioiTinh NVARCHAR(10),
    DiaChiLienLac NVARCHAR(255),
    MaKhoa INT,
    FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);
go
-- Tạo bảng MonHoc
CREATE TABLE MonHoc (
    MaMon INT PRIMARY KEY,
    TenMon NVARCHAR(255),
    SoTinChi INT
);
go
-- Tạo bảng KhoaHoc
CREATE TABLE KhoaHoc (
    MaKhoaHoc INT PRIMARY KEY,
    TenKhoaHoc NVARCHAR(255)
);
go
-- Tạo bảng LopHoc
CREATE TABLE LopHoc (
    MaLop INT PRIMARY KEY,
    TenLop NVARCHAR(255),
    MaKhoa INT,
    MaKhoaHoc INT,
    FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa),
    FOREIGN KEY (MaKhoaHoc) REFERENCES KhoaHoc(MaKhoaHoc)
);
go
-- Tạo bảng HocTap
CREATE TABLE HocTap (
    MaSV INT,
    MaMon INT,
    Diem FLOAT,
    MaLop INT,
    PRIMARY KEY (MaSV, MaMon),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaMon) REFERENCES MonHoc(MaMon),
    FOREIGN KEY (MaLop) REFERENCES LopHoc(MaLop)
);
go
-- Tạo bảng HoatDongNgoaiKhoa
CREATE TABLE HoatDongNgoaiKhoa (
    MaSV INT,
    TenHoatDong NVARCHAR(255),
    PRIMARY KEY (MaSV, TenHoatDong),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
go
-- Tạo bảng KyLuat
CREATE TABLE KyLuat (
    MaSV INT,
    TenKyLuat NVARCHAR(255),
    PRIMARY KEY (MaSV, TenKyLuat),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
go
-- Tạo bảng HoTroTaiChinh
CREATE TABLE HoTroTaiChinh (
    MaSV INT,
    LoaiHoTro NVARCHAR(255),
    PRIMARY KEY (MaSV, LoaiHoTro),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
go
-- Tạo bảng QuaTrinhTuyenSinh
CREATE TABLE QuaTrinhTuyenSinh (
    MaSV INT,
    KyTuyenSinh INT,
    DiemTuyenSinh FLOAT,
    PRIMARY KEY (MaSV, KyTuyenSinh),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
go
-- Nhập bản ghi vào bảng SinhVien
INSERT INTO SinhVien (MaSV, HoTen, NgaySinh, GioiTinh, DiaChiLienLac, MaKhoa)
VALUES
    (1, 'Nguyen Van A', '2000-01-01', 'Nam', N'Hồ Chí Minh', 7480201),
    (2, 'Tran Thi B', '2001-02-02', 'Nu', N'Hà Nội', 7540209),
    (3, 'Pham Van C', '2002-03-03', 'Nam', N'Hải Phòng', 7310101),
    (4, 'Le Thi D', '2003-04-04', 'Nu', N'Nam Định', 7220201),
    (5, 'Hoang Van E', '2004-05-05', 'Nam', N'Hưng Yên', 7510201),
    (6, 'Nguyen Thi F', '2005-06-06', 'Nu', N'Sơn La', 7480201),
    (7, 'Tran Van G', '2006-07-07', 'Nam', N'Quảng Ngãi', 7510203),
    (8, 'Le Van H', '2007-08-08', 'Nam', N'Quảng Ninh', 7310101),
    (9, 'Pham Thi I', '2008-09-09', 'Nu', N'Hải Dương', 7480201),
    (10, 'Hoang Thi K', '2009-10-10', 'Nu', N'Nha Trang', 7510303);

go
-- Nhập bản ghi vào bảng MonHoc
INSERT INTO MonHoc (MaMon, TenMon, SoTinChi)
VALUES (1, N'Toán', 3),
       (2, N'Vật lý', 4),
       (3, N'Hóa học', 3),
       (4, N'Ngôn ngữ lập trình', 3),
       (5, N'Cơ sở dữ liệu', 3),
       (6, N'Mạng máy tính', 4),
       (7, N'Công nghệ web', 3),
       (8, N'Trí tuệ nhân tạo', 4),
       (9, N'Kinh tế', 3),
       (10,N'Quản lý dự án', 3);
go
-- Nhập bản ghi vào bảng Khoa
INSERT INTO Khoa (MaKhoa, TenKhoa)
VALUES (7480201, N'Khoa CNTT'),
       (7540209, N'Khoa May'),
       (7310101, N'Khoa Kinh tế'),
       (7220201, N'Khoa Ngoại ngữ'),
       (7510201, N'Khoa Cơ khí'),
       (7510203, N'Khoa Cơ điện tử'),
       (7510303, N'Khoa Tự động hóa');
go

-- Nhập 10 bản ghi vào bảng KhoaHoc
INSERT INTO KhoaHoc (MaKhoaHoc, TenKhoaHoc)
VALUES (1, N'khóa thứ 1'),
       (2, N'khóa thứ 2'),
       (3, N'khóa thứ 3'),
       (4, N'khóa thứ 4'),
       (5, N'khóa thứ 5'),
       (6, N'khóa thứ 6'),
       (7, N'khóa thứ 7'),
       (8, N'khóa thứ 8'), 
       (9, N'khóa thứ 9'),
       (10,N'khóa thứ 10');
go
-- Nhập bản ghi vào bảng LopHoc
INSERT INTO LopHoc (MaLop, TenLop, MaKhoa, MaKhoaHoc)
VALUES (1, 'Lop A1', 7480201, 1),
       (2, 'Lop B1', 7540209, 2),
       (3, 'Lop C1', 7310101, 3),
       (4, 'Lop D1', 7220201, 4),
       (5, 'Lop E1', 7510201, 5),
       (6, 'Lop F1', 7480201, 6),
       (7, 'Lop G1', 7510203, 7),
       (8, 'Lop H1', 7310101, 8),
       (9, 'Lop I1', 7480201, 9),
       (10,'Lop K1', 7510303,10);
go
-- Nhập bản ghi vào bảng HocTap
INSERT INTO HocTap (MaSV, MaMon, Diem, MaLop)
VALUES (1, 1, 8.5, 1),
       (2, 2, 7.9, 2),
       (3, 3, 6.8, 3),
       (4, 4, 9.2, 4),
       (5, 5, 7.3, 5),
       (6, 6, 8.1, 6),
       (7, 7, 9.7, 7),
       (8, 8, 8.9, 8),
       (9, 9, 7.5, 9),
       (10, 10, 6.6,10);
go
-- Nhập bản ghi vào bảng HoatDongNgoaiKhoa
INSERT INTO HoatDongNgoaiKhoa (MaSV, TenHoatDong)
VALUES
    (1, 'Tham gia cau lac bo the thao'),
    (3, 'Tham gia hoat đong tu thien'),
    (4, 'Tham gia cau lac bo am nhac'),
    (5, 'Tham gia cau lac bo nghe thuat'),
    (7, 'Tham gia cau lac bo tieng Anh'),
    (8, 'Tham gia cau lac bo tin hoc'),
    (9, 'Tham gia cau lac bo tình nguyen');
go
-- Nhập bản ghi vào bảng KyLuat
INSERT INTO KyLuat (MaSV, TenKyLuat)
VALUES
    (2, 'Vi pham quy dinh ve phong hoc'),
    (3, 'Vi pham quy che thi cu'),
    (6, 'Vi pham quy dinh ve dao đuc sinh vien'),
    (7, 'Vi pham quy dinh ve su dung tai san truong'),
    (9, 'Vi pham quy dinh ve trat tu cong cong'),
    (10,'Vi pham quy dinh ve su dung phuong tien giao thong')
go
-- Nhập bản ghi vào bảng HoTroTaiChinh
INSERT INTO HoTroTaiChinh (MaSV, LoaiHoTro)
VALUES
    (1, 'Hoc bong'),
    (2, 'Vay von hoc phi'),
    (3, 'Ho tro chi phi sinh hoat'),
    (5, 'Hoc bong'),
    (9, 'Hoc bong'),
    (10,'Ho tro chi phi thuc tap');
go
-- Nhập bản ghi vào bảng QuaTrinhTuyenSinh
INSERT INTO QuaTrinhTuyenSinh (MaSV, KyTuyenSinh, DiemTuyenSinh)
VALUES
    (1, 1, 8.5),
    (2, 2, 7.9),
    (3, 1, 9.2),
    (4, 2, 8.7),
    (5, 1, 7.8),
    (6, 2, 8.1),
    (7, 1, 8.9),
    (8, 2, 7.5),
    (9, 1, 9.5),
    (10, 2, 8.8);
go

SELECT*FROM SinhVien
SELECT*FROM MonHoc
SELECT*FROM Khoa
SELECT*FROM KhoaHoc
SELECT*FROM LopHoc
SELECT*FROM HocTap
SELECT*FROM HoatDongNgoaiKhoa
SELECT*FROM KyLuat
SELECT*FROM HoTroTaiChinh
SELECT*FROM QuaTrinhTuyenSinh

-------------------------------------------------------------------------------------
-------QUẢN LÝ NGƯỜI DÙNG
---tạo các login
Exec sp_addlogin sv01,'111'
Exec sp_addlogin sv02,'222'
Exec sp_addlogin sv03,'333'
Exec sp_addlogin sv04,'444'
Exec sp_addlogin sv05,'555'

---tạo user vào login
Exec sp_adduser sv01,sv1
Exec sp_adduser sv02,sv2
Exec sp_adduser sv03,sv3
Exec sp_adduser sv04,sv4
Exec sp_adduser sv05,sv5

---tạo nhóm (role) người dùng
Exec sp_addrole nhom1
Exec sp_addrole nhom2
Exec sp_addrole nhom3

---thêm user và nhóm (role)
Exec sp_addrolemember nhom1,sv1
Exec sp_addrolemember nhom1,sv4
Exec sp_addrolemember nhom2,sv5
Exec sp_addrolemember nhom3,sv2
Exec sp_addrolemember nhom3,sv3

----------đăng nhập sa rồi cấp quyền
---cấp quyền select , insert , update của bảng sinhvien cho người dùng sv1
grant select, insert, update on SinhVien to sv1
---cấp quyền tạo bảng ( create table ) , tạo view ( create view ) , tạo procedure cho nhóm người dùng 1
grant create table, create view,create procedure to nhom1

----------thu hồi quyền
---thu hồi quyền của người dùng sv1
revoke select, insert,update on SinhVien from sv1
---thu hồi quyền của nhóm người dùng 1
revoke create table,create view, create procedure from nhom1

-------------------------------------------------------------------------------------
-------TÌM KIẾM DỮ LIỆU THEO CHỈ MỤC
---1.Tạo chỉ mục đơn:
CREATE INDEX IX_HoTen ON SinhVien (HoTen);
SELECT * FROM SinhVien WHERE HoTen = 'Nguyen Van Hieu';
---2.Tạo chỉ mục đơn với hệ số điền đầy:
CREATE INDEX IX_MaMon ON MonHoc (MaMon) WITH FILLFACTOR = 80;
SELECT * FROM MonHoc WHERE MaMon = 1;
---3.Tạo chỉ mục phức hợp:
CREATE INDEX IX_MaSV_MaMon ON HocTap (MaSV, MaMon);
SELECT * FROM HocTap WHERE MaSV = 5 AND MaMon = 5;
---4.Tạo chỉ mục phức hợp với thứ tự sắp xếp:
CREATE INDEX IX_MaLop_MaKhoa ON LopHoc (MaLop ASC, MaKhoa DESC);
SELECT * FROM LopHoc WHERE MaLop = 1 AND MaKhoa = 7480201;
---5.Tạo chỉ mục toàn văn:																			
CREATE FULLTEXT CATALOG fulltext_catalog_default
WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT
go
CREATE FULLTEXT INDEX ON MonHoc (TenMon) KEY INDEX [PK__MonHoc__3A5B29A80B8F0843] on fulltext_catalog_default
-- Truy vấn sử dụng chỉ mục toàn văn
SELECT * FROM MonHoc WHERE CONTAINS(TenMon, '"To" or "Lý" or "Văn"');

-------------------------------------------------------------------------------------
-----------THIẾT KẾ VIEW
------View 1: Quản lý thông tin sinh viên
GO
CREATE VIEW QuanLyThongTinSinhVien AS
SELECT MaSV, HoTen, NgaySinh, GioiTinh, DiaChiLienLac
FROM SinhVien;
go
--thêm thông tin của sinh viên
INSERT INTO QuanLyThongTinSinhVien (MaSV, HoTen, NgaySinh, GioiTinh, DiaChiLienLac)
VALUES ('11', N'Lý Văn A', '2000-01-01', N'Nam', N'Địa chỉ A');
SELECT*FROM QuanLyThongTinSinhVien
--xóa thông tin của sinh viên
DELETE FROM QuanLyThongTinSinhVien WHERE MaSV = '11';
SELECT*FROM QuanLyThongTinSinhVien
--cập nhập thông tin của sinh viên
UPDATE QuanLyThongTinSinhVien
SET HoTen = N'Nguyen Thi B', NgaySinh = '2001-02-02', GioiTinh = N'Nữ', DiaChiLienLac = N'Địa chỉ B'
WHERE MaSV = '11';
SELECT*FROM QuanLyThongTinSinhVien

---View 2: Quản lý điểm học tập của sinh viên
GO
CREATE VIEW QuanLyDiemHocTap AS
SELECT ht.MaSV, mh.TenMon, ht.Diem
FROM HocTap ht
JOIN MonHoc mh ON ht.MaMon = mh.MaMon;
go
--thêm thông tin điểm của sinh viên
INSERT INTO HocTap (MaSV, MaMon, Diem)
VALUES ('11', 1, 7.5);
SELECT*FROM QuanLyDiemHocTap
-- Xóa thông tin điểm của sinh viên từ bảng 'HocTap'
DELETE FROM HocTap
WHERE MaSV = '11' AND MaMon IN (SELECT MaMon FROM MonHoc WHERE TenMon = N'Toán');
SELECT*FROM QuanLyDiemHocTap
--cập nhập thông tin điểm của sinh viên
UPDATE QuanLyDiemHocTap
SET Diem = 9.0
WHERE MaSV = '11' AND TenMon = 'Toán';
SELECT*FROM QuanLyDiemHocTap

---View 3: Quản lý thông tin lớp học của sinh viên  
GO
CREATE VIEW QuanLyLopHoc AS
SELECT sv.MaSV, sv.HoTen, lh.TenLop, lh.MaKhoa, lh.MaKhoaHoc, k.TenKhoa
FROM SinhVien sv
JOIN LopHoc lh ON sv.MaSV = lh.MaLop
JOIN Khoa k ON lh.MaKhoa = k.MaKhoa
go
-- Thêm thông tin lớp học của sinh viên
INSERT INTO LopHoc (MaLop, TenLop, MaKhoa, MaKhoaHoc)
VALUES ('11', N'Lớp L1', '7480201', '1');
SELECT * FROM QuanLyLopHoc;
-- Xóa thông tin lớp học của sinh viên
DELETE FROM LopHoc
WHERE MaLop = '11' AND TenLop = N'Lớp L1';
SELECT * FROM QuanLyLopHoc;
-- Cập nhật thông tin lớp học của sinh viên (giả sử cột cần cập nhật là MakhoaHoc)
UPDATE lh
SET lh.MaKhoaHoc = kh.MaKhoaHoc
FROM LopHoc lh
JOIN KhoaHoc kh ON lh.MaKhoaHoc = kh.MaKhoaHoc
WHERE lh.MaLop = '11' AND lh.TenLop = N'Lớp L1';
SELECT * FROM QuanLyLopHoc;


---View 4: Quản lý hoạt động ngoại khoá của sinh viên     
GO
CREATE VIEW QuanLyHDNgoaiKhoa AS
SELECT
    sv.MaSV,
    sv.HoTen,
    hd.TenHoatDong
	FROM SinhVien sv JOIN HoatDongNgoaiKhoa hd ON sv.MaSV = hd.MaSV
go
--thêm thông tin hoạt động ngoại khoá của sinh viên              
INSERT INTO SinhVien (MaSV, HoTen, NgaySinh, GioiTinh, DiaChiLienLac, MaKhoa)
VALUES(11, 'Nguyen Van Hieu', '2000-01-01', 'Nam', N'Hồ Chí Minh', 7480201)
INSERT INTO HoatDongNgoaiKhoa (MaSV, TenHoatDong)
VALUES(11, 'Tham gia cau lac bo the thao')
SELECT * FROM QuanLyHDNgoaiKhoa
--xóa thông tin hoạt động ngoại khoá của sinh viên                 
delete from HoatDongNgoaiKhoa where MaSV = 11
go
DELETE FROM SinhVien where MaSV = 11 
go
--delete from Khoa where MaKhoa = 7480201
SELECT * FROM QuanLyHDNgoaiKhoa
--cập nhập thông tin hoạt động ngoại khoá của sinh viên                
UPDATE QuanLyHDNgoaiKhoa
SET TenHoatDong = N'Tham gia câu lạc bộ âm nhạc'
WHERE MaSV = '11' --AND TenHoatDong = N'Tham gia câu lạc bộ sách'
SELECT * FROM QuanLyHDNgoaiKhoa

---View 5: Quản lý kỷ luật của sinh viên                     
GO
CREATE VIEW QuanLyKyLuat AS
	SELECT sv.MaSV, sv.HoTen AS TenSV, kl.TenKyLuat
	FROM SinhVien sv
	JOIN KyLuat kl ON sv.MaSV = kl.MaSV
go
--thêm thông tin kỷ luật của sinh viên
INSERT INTO SinhVien (MaSV, HoTen, NgaySinh, GioiTinh, DiaChiLienLac, MaKhoa)
VALUES(11, 'Nguyen Van Hieu', '2000-01-01', 'Nam', N'Hồ Chí Minh', 7480201)
INSERT INTO KyLuat (MaSV, TenKyLuat)
VALUES(11, 'Vi pham quy dinh ve hoc tap')
SELECT * FROM QuanLyKyLuat
--xóa thông tin kỷ luật của sinh viên                                
DELETE FROM KyLuat where MaSV = 11
delete from SinhVien where MaSV = 11
SELECT * FROM QuanLyKyLuat
--cập nhập thông tin kỷ luật của sinh viên                                
UPDATE QuanLyKyLuat
SET TenKyLuat = N'Kỷ luật vi phạm nội quy'
WHERE MaSV = 11 --AND TenKyLuat =  N'Kỷ luật vi phạm quy chế thi cử';
SELECT * FROM QuanLyKyLuat

-----------------------------------------------------------------------------------
-------TRUY VẤN VỚI CÁC TOÁN TỬ NĂNG CAO VÀ SỬ DỤNG CÁC CẤU TRÚC ĐIỀU KHIỂN    
-- 1. Truy vấn sử dụng DISTINCT để lấy danh sách các khoa độc lập:
SELECT DISTINCT sv.MaKhoa
FROM SinhVien sv;
SELECT DISTINCT sv.MaKhoa, k.TenKhoa
FROM SinhVien sv
JOIN Khoa k ON sv.MaKhoa = k.MaKhoa;

---2.Truy vấn sử dụng ORDER BY để sắp xếp sinh viên theo điểm trung bình giảm dần:
SELECT sv.MaSV, sv.HoTen, AVG(ht.Diem) AS DiemTrungBinh
FROM SinhVien sv
JOIN HocTap ht ON sv.MaSV = ht.MaSV
GROUP BY sv.MaSV, sv.HoTen
ORDER BY DiemTrungBinh DESC;

---3.Truy vấn sử dụng TOP để lấy 5 sinh viên có điểm trung bình cao nhất:
SELECT TOP 5 sv.MaSV, sv.HoTen, AVG(ht.Diem) AS DiemTrungBinh
FROM SinhVien sv
JOIN HocTap ht ON sv.MaSV = ht.MaSV
GROUP BY sv.MaSV, sv.HoTen
ORDER BY DiemTrungBinh DESC;

-- 4. Truy vấn sử dụng GROUP BY và HAVING để lấy danh sách khoa có số lượng sinh viên lớn hơn 100:
SELECT MaKhoa, COUNT(*) AS SoLuongSV
FROM SinhVien
GROUP BY MaKhoa
HAVING COUNT(*) > 100;--không có khoa nào có sl sinh viên lớn hơn 100


---5.Truy vấn sử dụng INNER JOIN để lấy thông tin sinh viên và thông tin kỷ luật của sinh viên:
SELECT sv.MaSV, sv.HoTen, kl.TenKyLuat
FROM SinhVien sv
INNER JOIN KyLuat kl ON sv.MaSV = kl.MaSV;


-- 6. Truy vấn sử dụng UNION ALL để kết hợp kết quả của hai truy vấn:                    
SELECT MaSV, HoTen, MaKhoa FROM SinhVien
WHERE GioiTinh = 'Nam'
UNION ALL
SELECT MaSV, HoTen, MaKhoa
FROM SinhVien
WHERE MaKhoa = '7480201'


---7.Truy vấn sử dụng LIKE để tìm sinh viên có tên bắt đầu bằng "Nguyen":
SELECT MaSV, HoTen
FROM SinhVien
WHERE HoTen LIKE 'Nguyen%';

-- 8. Truy vấn sử dụng CASE để phân loại sinh viên thành nhóm "Giỏi" hoặc "Khá" dựa trên điểm:                
SELECT sv.MaSV, HoTen, Diem,
    CASE
        WHEN Diem >= 8 THEN N'Giỏi'
        WHEN Diem >= 6 THEN N'Khá'
        ELSE N'Trung bình'
    END AS XepLoai
FROM SinhVien sv join HocTap ht on sv.MaSV=ht.MaSV

-- 9. Truy vấn sử dụng AVG để tính điểm trung bình của các sinh viên trong mỗi khoa:									
SELECT MaKhoa, AVG(CONVERT(FLOAT, Diem)) AS DiemTrungBinh
FROM SinhVien sv join HocTap ht on sv.MaSV=ht.MaSV
GROUP BY MaKhoa

-- 10. Truy vấn sử dụng để lấy sinh viên có điểm cao nhất:                                     
SELECT TOP 1 sv.MaSV, HoTen, Diem
FROM SinhVien sv join HocTap ht on sv.MaSV=ht.MaSV
ORDER BY Diem DESC

-- 11. Truy vấn sử dụng để lấy sinh viên có điểm thấp nhất:								
SELECT TOP 1 sv.MaSV, HoTen, Diem
FROM SinhVien sv join HocTap ht on sv.MaSV=ht.MaSV
ORDER BY Diem ASC

-- 12. Truy vấn sử dụng COUNT để đếm số lượng sinh viên trong mỗi khoa:
SELECT MaKhoa, COUNT(*) AS SoLuongSV
FROM SinhVien
GROUP BY MaKhoa;

-- 13. Truy vấn sử dụng INNER JOIN để lấy thông tin của sinh viên và thông tin của khoa:
SELECT sv.MaSV, sv.HoTen, k.TenKhoa
FROM SinhVien sv
JOIN Khoa k ON sv.MaKhoa = k.MaKhoa;

---14.Truy vấn sử dụng EXISTS để lấy danh sách sinh viên có kỷ luật:
SELECT MaSV, HoTen
FROM SinhVien sv
WHERE EXISTS (
    SELECT *
    FROM QuanLyKyLuat kl
    WHERE kl.MaSV = sv.MaSV
);

---15.Truy vấn sử dụng NOT IN để lấy danh sách sinh viên không có kỷ luật:
SELECT MaSV, HoTen
FROM SinhVien
WHERE MaSV NOT IN (
    SELECT MaSV
    FROM QuanLyKyLuat
);

--------------------------------------------------------------------------------------------------
--------------CÁC THỦ TỤC LƯU VÀ HÀM
---1.1.Thủ tục cập nhật dữ liệu trong bảng SinhVien:
GO
CREATE PROCEDURE UpdateSinhVien
    @MaSV INT,
    @HoTen VARCHAR(255),
    @NgaySinh DATE,
    @GioiTinh VARCHAR(10),
    @DiaChiLienLac VARCHAR(255),
	@MaKhoa INT
AS
BEGIN
    UPDATE SinhVien
    SET
        HoTen = @HoTen,
        NgaySinh = @NgaySinh,
        GioiTinh = @GioiTinh,
        DiaChiLienLac = @DiaChiLienLac,
		MaKhoa = @MaKhoa 
    WHERE
        MaSV = @MaSV
END
--
EXEC UpdateSinhVien @MaSV = 101, @HoTen = 'Nguyen Van A', @NgaySinh = '2000-01-01', @GioiTinh = 'Nam', @DiaChiLienLac = N'Hồ Chí Minh',@MaKhoa =7480201
SELECT * FROM SinhVien WHERE MaSV = 1

---1.2.Thủ tục xóa dữ liệu trong bảng MonHoc:		
GO
CREATE PROCEDURE DeleteMonHoc
    @MaMon INT
AS
BEGIN
    DELETE FROM MonHoc
    WHERE MaMon = @MaMon
END
--
EXEC DeleteMonHoc @MaMon = 2
SELECT * FROM MonHoc WHERE MaMon = 2

---1.3.Thủ tục chèn dữ liệu vào bảng LopHoc:
GO
CREATE PROCEDURE InsertLopHoc
    @MaLop INT,
    @TenLop VARCHAR(255),
    @MaKhoa INT,
    @MaKhoaHoc INT
AS
BEGIN
    INSERT INTO LopHoc (MaLop, TenLop, MaKhoa, MaKhoaHoc)
    VALUES (@MaLop, @TenLop, @MaKhoa, @MaKhoaHoc)
END
--
EXEC InsertLopHoc @MaLop = 11, @TenLop = 'Lop A1', @MaKhoa = 7480201, @MaKhoaHoc = 1
SELECT * FROM LopHoc WHERE MaLop = 1

---2.1.Thủ tục tìm kiếm sinh viên theo mã sinh viên trong bảng SinhVien:
GO
CREATE PROCEDURE SearchSinhVienByMaSV
    @MaSV INT
AS
BEGIN
    SELECT * FROM SinhVien WHERE MaSV = @MaSV
END
--
EXEC SearchSinhVienByMaSV @MaSV = 1

---2.2.Thủ tục tìm kiếm môn học theo tên môn học trong bảng MonHoc:
GO
CREATE PROCEDURE SearchMonHocByTenMon
    @TenMon VARCHAR(255)
AS
BEGIN
    SELECT * FROM MonHoc WHERE TenMon LIKE '%' + @TenMon + '%'
END
--
EXEC SearchMonHocByTenMon @TenMon =  N'Toán'

---3.1.Thủ tục thống kê số lượng sinh viên theo giới tính trong bảng SinhVien:
GO
CREATE PROCEDURE CountSinhVienByGender
AS
BEGIN
    SELECT GioiTinh, COUNT(*) AS SoLuong
    FROM SinhVien
    GROUP BY GioiTinh
END
--
EXEC CountSinhVienByGender

---3.2.Thủ tục tính tổng điểm trung bình môn học trong bảng HocTap:
GO
CREATE PROCEDURE CalculateAverageScore
    @MaMon INT
AS
BEGIN
    SELECT AVG(Diem) AS DiemTrungBinh
    FROM HocTap
    WHERE MaMon = @MaMon
END
--
DECLARE @MaMon INT = 1
EXEC CalculateAverageScore @MaMon

---4.Hàm trả về kiểu vô hướng:																	
GO
CREATE FUNCTION CalculateAverageScore (@MaMon INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @AverageScore FLOAT

    SELECT @AverageScore = AVG(Diem)
    FROM HocTap
    WHERE MaMon = @MaMon

    RETURN @AverageScore
END
go
--
DECLARE @MaMon INT = 1
SELECT dbo.CalculateAverageScore(@MaMon) AS AverageScore

---5.Hàm trả về kiểu bảng:
GO
CREATE FUNCTION GetStudentsByGender
    (@Gender VARCHAR(10))
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM SinhVien
    WHERE GioiTinh = @Gender
)
go
--
DECLARE @Gender VARCHAR(10) = 'Nam'
SELECT * FROM dbo.GetStudentsByGender(@Gender)
go
---6.Hàm trả về kiểu biến bảng:								LỖI
CREATE FUNCTION GetStudentsByCourse(@CourseId INT)
RETURNS @StudentsTable TABLE
(
    MaSV INT,
    HoTen NVARCHAR(255),
    NgaySinh DATE,
    GioiTinh NVARCHAR(10)
)
AS
BEGIN
    INSERT INTO @StudentsTable (MaSV, HoTen, NgaySinh, GioiTinh)
		SELECT SV.MaSV, SV.HoTen, SV.NgaySinh, SV.GioiTinh
		FROM SinhVien sv join HocTap ht on sv.MaSV=ht.MaSV
		join LopHoc lh on ht.MaLop=lh.MaLop
		join KhoaHoc kh ON lh.MaKhoaHoc = KH.MaKhoaHoc
		WHERE KH.MaKhoaHoc = @CourseId
    RETURN
END
go
--
DECLARE @CourseId INT = 1
SELECT *
FROM dbo.GetStudentsByCourse(@CourseId)
go
-------------------------------------------------------------------------------------------
-------------TRIGGER
---1.1.Trigger "AFTER INSERT" để bẫy lỗi sau khi thêm dữ liệu vào bảng:                
CREATE TRIGGER AfterInsertSinhVienTrigger
ON SinhVien
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE HoTen IS NULL)
    BEGIN
        RAISERROR ('Họ tên không được để trống', 16, 1);
        ROLLBACK;
        RETURN;
    END;
END;
		--Thử chạy lệnh INSERT để kích hoạt trigger
		INSERT INTO SinhVien (MaSV, HoTen, NgaySinh, GioiTinh, DiaChiLienLac,MaKhoa)
		VALUES (101, 'Nguyen Van A', '2000-01-01', 'Nam', N'Hồ Chí Minh',7480201)
		SELECT* FROM SinhVien
go
---1.2.Trigger "AFTER UPDATE" để bẫy lỗi sau khi cập nhật dữ liệu trong bảng MonHoc:
CREATE TRIGGER AfterUpdateMonHocTrigger
ON MonHoc
AFTER UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE SoTinChi <= 0)
    BEGIN
        RAISERROR ('Số tín chỉ phải lớn hơn 0', 16, 1);
        ROLLBACK TRANSACTION;  
        RETURN;
    END;
END;
--Thử chạy lệnh UPDATE để kích hoạt trigger
UPDATE MonHoc
SET SoTinChi = 3
WHERE MaMon = 2;
SELECT* FROM MonHoc
go
---1.3.Trigger "AFTER DELETE" để bẫy lỗi sau khi xóa dữ liệu từ bảng LopHoc:
CREATE TRIGGER AfterDeleteLopHocTrigger
ON LopHoc
AFTER DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM deleted d JOIN HocTap ht ON d.MaLop = ht.MaLop)
    BEGIN
        RAISERROR ('Không thể xóa lớp học có dữ liệu liên quan trong bảng HocTap', 16, 1);
        ROLLBACK TRANSACTION;  
        RETURN;
    END;
END;
--Thử chạy lệnh DELETE để kích hoạt trigger
DELETE FROM HocTap
WHERE MaLop = 11;
SELECT* FROM LopHoc

go

---2.1.Trigger "INSTEAD OF INSERT" để bẫy lỗi khi chèn dữ liệu vào bảng "LopHoc" với số lượng lớp học vượt quá giới hạn cho phép (ví dụ: 100 lớp học).
CREATE TRIGGER InsteadOfInsertLopHocTrigger
ON LopHoc
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @lop_count INT;
    SELECT @lop_count = COUNT(*) FROM LopHoc;
    IF @lop_count >= 100
    BEGIN
        RAISERROR('Không thể chèn dữ liệu. Số lượng lớp học đã vượt quá giới hạn cho phép.', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO LopHoc (MaLop, TenLop)
        SELECT MaLop, TenLop FROM inserted;
    END
END;
--Thử chạy lệnh INSERT để kích hoạt trigger
INSERT INTO LopHoc (MaLop, TenLop)
SELECT 11, N'Lớp A1'
WHERE (SELECT COUNT(*) FROM LopHoc) < 100;
SELECT* FROM LopHoc
go
---2.2.Trigger "INSTEAD OF UPDATE" để bẫy lỗi khi cập nhật dữ liệu trong bảng "LopHoc" và thay đổi mã lớp học.
CREATE TRIGGER InsteadOfUpdateLopHocTrigger
ON LopHoc
INSTEAD OF UPDATE
AS
BEGIN
    IF EXISTS(SELECT * FROM inserted i INNER JOIN deleted d ON i.MaLop <> d.MaLop)
    BEGIN
        RAISERROR('Không thể thay đổi mã lớp học.', 16, 1);
    END
    ELSE
    BEGIN
        UPDATE LopHoc SET TenLop = i.TenLop
        FROM LopHoc l INNER JOIN inserted i ON l.MaLop = i.MaLop;
    END
END;
--Thử chạy lệnh UPDATE để kích hoạt trigger
UPDATE LopHoc SET TenLop = 'Lop B1' WHERE MaLop = 21;
SELECT* FROM LopHoc
go

---3.Trigger dây truyền (Cascade Trigger):                                        
CREATE TRIGGER CascadeDeleteLopHocTrigger
ON LopHoc
AFTER DELETE
AS
BEGIN
    DELETE FROM LopHoc WHERE MaLop IN (SELECT MaLop FROM deleted);
END;
-- Gọi hàm và Xem dữ liệu
DELETE FROM LopHoc WHERE MaLop = 11;
SELECT * FROM LopHoc;
go

---4.Trigger tự động cập nhật dữ liệu (Automatic Update Trigger):
CREATE TRIGGER AutomaticUpdateNgayCapNhatTrigger
ON LopHoc
AFTER UPDATE
AS
BEGIN
    UPDATE LopHoc SET NgayCapNhat = GETDATE() WHERE MaLop IN (SELECT MaLop FROM inserted);
END;
-- Gọi hàm và xem dữ liệu
UPDATE LopHoc SET TenLop = 'Lớp A mới' WHERE MaLop = 11;
SELECT * FROM LopHoc;