create database S13_NguyenVanHieu;
go
use S13_NguyenVanHieu;
go
CREATE TABLE HocSinh (
    MaHocSinh char(10) PRIMARY KEY,
    TenHocSinh NVARCHAR(50),
	NgaySinh date,
	GioiTinh nvarchar(3),
	NoiSinh nvarchar(50),
    Lop NVARCHAR(30)
);
go
CREATE TABLE GiaoVien (
    MaGiaoVien char(10) PRIMARY KEY,
    TenGiaoVien NVARCHAR(50),
    MonGiangDay NVARCHAR(50)
);
go
CREATE TABLE KhenThuong (
    MaKhenThuong char(10) PRIMARY KEY,
    TenKhenThuong NVARCHAR(100),
    MucDo NVARCHAR(50),
	DiemKhenThuong int
);
go
CREATE TABLE ThanhTich (
    MaThanhTich char(10) PRIMARY KEY,
    MaHocSinh char(10),
    MaGiaoVien char(10),
    MaKhenThuong char(10),
    NgayDatThanhTich DATE,
    FOREIGN KEY (MaHocSinh) REFERENCES HocSinh(MaHocSinh),
    FOREIGN KEY (MaGiaoVien) REFERENCES GiaoVien(MaGiaoVien),
    FOREIGN KEY (MaKhenThuong) REFERENCES KhenThuong(MaKhenThuong)
);
go
CREATE TABLE LeTraoKhenThuong (
    MaLeTraoKhenThuong char(10) PRIMARY KEY,
    MaKhenThuong char(10),
    NgayToChuc DATE,
    FOREIGN KEY (MaKhenThuong) REFERENCES KhenThuong(MaKhenThuong)
);
go
INSERT INTO HocSinh (MaHocSinh, TenHocSinh, NgaySinh, GioiTinh, NoiSinh, Lop)
VALUES
    ('MHS001', N'Nguyễn Văn Hiếu', '2005-02-10', N'Nam', N'Hà Nội', N'Lớp 10A'),
    ('MHS002', N'Nguyễn Thị Huế', '2006-06-15', N'Nữ', N'Hải Phòng', N'Lớp 10B'),
    ('MHS003', N'Trần Văn Cương', '2005-09-22', N'Nam', N'Hồ Chí Minh', N'Lớp 11A'),
    ('MHS004', N'Lê Thị Diễm', '2006-03-05', N'Nữ', N'Đà Nẵng', N'Lớp 11B'),
    ('MHS005', N'Phạm Văn Đồng', '2005-12-12', N'Nam', N'Hải Dương', NULL),
    ('MHS006', N'Hoàng Thị Kim', '2006-08-20', N'Nữ', N'Bắc Ninh', NULL),
    ('MHS007', N'Vũ Văn Dương', '2005-04-18', N'Nam', N'Thái Bình', N'Lớp 12A'),
    ('MHS008', N'Ngô Thị Huệ', '2006-10-25', N'Nữ', N'Hưng Yên', N'Lớp 12B'),
    ('MHS009', N'Lý Văn Minh', '2005-07-08', N'Nam', NULL, N'Lớp 10C'),
    ('MHS010', N'Mai Thị Hoa', '2006-01-30', N'Nữ', NULL, N'Lớp 11C');
go
INSERT INTO GiaoVien (MaGiaoVien, TenGiaoVien, MonGiangDay)
VALUES
    ('MGV001', N'Nguyễn Văn Xuân', N'Toán'),
    ('MGV002', N'Nguyễn Thị Diễm', N'Văn'),
    ('MGV003', N'Trần Văn Khả', N'Hóa'),
    ('MGV004', N'Lê Thị Thương', N'Anh'),
    ('MGV005', N'Phạm Văn Uông', N'Sử'),
    ('MGV006', N'Hoàng Thị Hảo', NULL),
    ('MGV007', N'Vũ Văn Lâm', N'Địa'),
    ('MGV008', N'Ngô Thị Quyên', N'GDCD'),
    ('MGV009', N'Lý Văn Dương', N'Tin'),
    ('MGV010', N'Mai Thị Xuân', N'Âm nhạc');
go
INSERT INTO KhenThuong (MaKhenThuong, TenKhenThuong, MucDo, DiemKhenThuong)
VALUES
    ('MKT001', N'Học sinh giỏi', N'Cao', 90),
    ('MKT002', N'Học sinh tiên tiến', N'Trung bình', 60),
    ('MKT003', N'Học sinh có cống hiến', N'Thấp', 40),
    ('MKT004', N'Học sinh xuất sắc', NULL, 100),
    ('MKT005', N'Học sinh tiêu biểu', N'Cao', 90),
    ('MKT006', N'Học sinh nỗ lực', N'Trung bình', 70),
    ('MKT007', N'Học sinh đạt thành tích cao trong thi cử', N'Cao', 90),
    ('MKT008', N'Học sinh đạt thành tích xuất sắc trong môn Toán', NULL, 90),
    ('MKT009', N'Học sinh đạt thành tích tốt trong môn Văn', N'Trung bình', 60),
    ('MKT010', N'Học sinh đạt thành tích cao trong cuộc thi học sinh giỏi', N'Cao', 90);
go
INSERT INTO ThanhTich (MaThanhTich, MaHocSinh, MaGiaoVien, MaKhenThuong, NgayDatThanhTich)
VALUES
    ('MTT001', 'MHS001', 'MGV001', 'MKT001', '2023-01-05'),
    ('MTT002', 'MHS002', 'MGV002', 'MKT002', '2023-02-10'),
    ('MTT003', 'MHS003', 'MGV003', 'MKT003', '2023-03-15'),
    ('MTT004', 'MHS004', 'MGV004', 'MKT004', '2023-04-20'),
    ('MTT005', 'MHS005', 'MGV005', 'MKT005', '2023-05-25'),
    ('MTT006', 'MHS006', 'MGV006', 'MKT006', '2023-06-30'),
    ('MTT007', 'MHS007', 'MGV007', 'MKT007', '2023-07-05'),
    ('MTT008', 'MHS008', 'MGV008', 'MKT008', '2023-08-10'),
    ('MTT009', 'MHS009', 'MGV009', 'MKT009', '2023-09-15'),
    ('MTT010', 'MHS010', 'MGV010', 'MKT010', '2023-10-20');
go
INSERT INTO LeTraoKhenThuong (MaLeTraoKhenThuong, MaKhenThuong, NgayToChuc)
VALUES
    ('MLTKT001', 'MKT001', '2023-01-15'),
    ('MLTKT002', 'MKT002', '2023-02-20'),
    ('MLTKT003', 'MKT003', '2023-03-25'),
    ('MLTKT004', 'MKT004', '2023-04-30'),
    ('MLTKT005', 'MKT005', '2023-05-05'),
    ('MLTKT006', 'MKT006', '2023-06-10'),
    ('MLTKT007', 'MKT007', '2023-07-15'),
    ('MLTKT008', 'MKT008', '2023-08-20'),
    ('MLTKT009', 'MKT009', '2023-09-25'),
    ('MLTKT010', 'MKT010', '2023-10-30');
go
--Tạo login đăng nhập vào hệ thống
sp_addlogin 'login1', 'login1'
go
sp_addlogin 'login2', 'login2'
go
---	Tạo tên người dùng 
sp_adduser 'login1', 'user1'
go
sp_adduser 'login1', 'user2'
go
sp_adduser 'login2', 'user3'
go
---	Tạo một nhóm người dùng
sp_addrole 'nhomuser'
go
sp_addrolemember 'nhomuser', 'user1'
go
sp_addrolemember 'nhomuser', 'user2'
go
---	Cấp quyền select trên bảng HocSinh cho nhóm người dùng ‘nhomuser’
---	Cấp quyền update trên bảng HocSinh cho user1
grant select on HocSinh to user3
grant select on HocSinh to nhomuser
grant update on HocSinh to user1
go
---	Hủy quyền select của nhóm ‘nhomuser’ trên bảng HocSinh
revoke select, insert, update on HocSinh from user3
revoke select on HocSinh from nhomuser
go
---	Chỉ mục đơn tìm kiếm trên bảng HocSinh
--sp_helpindex HocSinh
create index id_NS_HS on HocSinh(NoiSinh) with (fillfactor = 80)
select * from HocSinh
where NoiSinh = N'Hưng Yên'
go
---	Chỉ mục đơn tìm kiếm trên bảng LeTraoKhenThuong
create index id_LeTraoKhenThuong on LeTraoKhenThuong(NgayToChuc) 
select * from LeTraoKhenThuong
where YEAR(NgayToChuc) = 2023
go
---	Chỉ mục phức hợp tìm kiếm trên bảng GiaoVien
--sp_helpindex GiaoVien
create index id_GV_MGV_TM on GiaoVien(MaGiaoVien, MonGiangDay)
select * from GiaoVien
where MaGiaoVien = 'MGV007' or MonGiangDay = N'Tin'
go
---	Chỉ mục phức hợp tìm kiếm trên bảng HocSinh
create index id_HS_MHS_NS on HocSinh(MaHocSinh, NgaySinh)
select * from HocSinh
where MaHocSinh = 'MHS004' or year(NgaySinh) = '2005'
go
---	Chỉ mục toàn văn trên bảng HocSinh
--tạo ra catalog mặc định chứa các chỉ mục fulltext
CREATE FULLTEXT CATALOG fulltext_catalog_default
WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT
go
create fulltext index on HocSinh(TenHocSinh) key index PK__HocSinh__90BD01E05DFF4C79 on fulltext_catalog_default
select * from HocSinh
where contains(TenHocSinh, '"Nguyễn" or "Huệ" or "Văn"')
--DROP FULLTEXT CATALOG fulltext_catalog_default
--DROP FULLTEXT INDEX ON HocSinh
--SELECT * FROM sys.fulltext_indexes
--WHERE object_id = OBJECT_ID('HocSinh')
go
--view 1: Hiển thị thông tin GiaoVien
create view View_GiaoVien
as
	select MaGiaoVien, TenGiaoVien, MonGiangDay from GiaoVien
go
--Hiển thị view
select * from View_GiaoVien
--Insert View
insert into View_GiaoVien
values('MGV0011', N'Nguyễn Văn Hiếu', N'Tin')
--Update view
update View_GiaoVien set MonGiangDay = N'Sinh' where MaGiaoVien = 'MGV011'
--Delete view
delete from View_GiaoVien where MaGiaoVien = 'MGV011'
go
--view 2: View thông tin học sinh
create view View_TenHS_Lop
as 
	select MaHocSinh, TenHocSinh, Lop
	from HocSinh
go
--Hiển thị view
select * from View_TenHS_Lop
--Insert View
insert into View_HS(MaHocSinh, TenHocSinh, Lop)
values('MHS011', N'Trần Bình An', N'Lớp 11B')
--Update view
update View_HS set Lop = N'Lớp 11A' where MaHocSinh ='MHS011'
--Delete view
delete from View_HS where MaHocSinh = 'MHS011'
go
--view 3: View khen thưởng và lễ trao khen thưởng
alter view View_KT_LTKT 
as
	select kt.MaKhenThuong, TenKhenThuong, MucDo, MaLeTraoKhenThuong,
	ltkt.MaKhenThuong AS MKT_Trong_LeTraoKhenThuong, NgayToChuc
	from KhenThuong kt 
	inner join LeTraoKhenThuong ltkt on kt.MaKhenThuong=ltkt.MaKhenThuong
go
--Hiển thị view
select * from View_KT_LTKT
--Insert View
insert into View_KT_LTKT(MaKhenThuong, TenKhenThuong, MucDo)
values('MKT011', N'Học sinh khá', N'Trung bình')
insert into View_KT_LTKT(MaLeTraoKhenThuong, MKT_Trong_LeTraoKhenThuong, NgayToChuc)
values('MLTKT011', 'MKT011', '2023-11-10')
--Update view
update View_KT_LTKT set NgayToChuc = GETDATE() where MaLeTraoKhenThuong='MLTKT010'
--Delete view
delete from LeTraoKhenThuong where MaLeTraoKhenThuong='MLTKT011'
delete from KhenThuong where MaKhenThuong='MKT011'
drop view View_KT_LTKT
go
--view 4: View ngày đạt thành tích của học sinh
alter view View_HS_NDTT
as
	select hs.MaHocSinh, TenHocSinh, MaThanhTich, tt.MaHocSinh as MSH_ThanhTich, NgayDatThanhTich
	from HocSinh hs inner join ThanhTich tt on hs.MaHocSinh=tt.MaHocSinh
go
--Hiển thị view
select * from View_HS_NDTT
--Insert View
insert into View_HS_NDTT(MaHocSinh, TenHocSinh) values('MHS016', N'Đoàn Quang Phúc')
insert into View_HS_NDTT(MaThanhTich, MSH_ThanhTich, NgayDatThanhTich) 
values('MTT016', 'MHS016', '2023-01-01')
--Update view
update View_HS_NDTT set NgayDatThanhTich = GETDATE() where TenHocSinh = N'Đoàn Quang Phúc'
--Delete view
delete from ThanhTich where MaThanhTich = 'MTT016' 
delete from HocSinh where MaHocSinh = 'MHS016'
go
--view 5: View thành tích của giáo viên
alter view View_GV_TT_KT
as
	select gv.MaGiaoVien, TenGiaoVien, tt.MaThanhTich, tt.MaGiaoVien as MGV_ThanhTich,
	tt.MaKhenThuong as MKT_ThanhTich, NgayDatThanhTich, kt.MaKhenThuong, TenKhenThuong, MucDo
	from GiaoVien gv inner join ThanhTich tt on gv.MaGiaoVien=tt.MaGiaoVien
	inner join KhenThuong kt on tt.MaKhenThuong=kt.MaKhenThuong
go
--Hiển thị view
select * from View_GV_TT_KT
--Insert View
insert into View_GV_TT_KT(MaGiaoVien, TenGiaoVien) values('MGV015', N'Nguyễn Văn Hiếu')
insert into View_GV_TT_KT(MaKhenThuong, TenKhenThuong, MucDo) 
values('MKT015', N'Giáo viên ưu tú', N'Trung bình')
insert into View_GV_TT_KT(MaThanhTich, MGV_ThanhTich, MKT_ThanhTich, NgayDatThanhTich)
values('MTT015', 'MGV015', 'MKT015', '2023-01-02')
--Update view
update View_GV_TT_KT set MucDo = N'Cao' where TenGiaoVien = N'Nguyễn Văn Hiếu' 
--Delete view
delete from ThanhTich where MaThanhTich = 'MTT015'
delete from KhenThuong where MaKhenThuong= 'MKT015'
delete from GiaoVien where MaGiaoVien = 'MGV015'
go
						--Truy vấn nâng cao
--Truy vấn 1: Hiển thị thông tin học sinh quê ở hưng yên
select * from HocSinh 
where NoiSinh = N'Hưng Yên'
--Truy vấn 2: Hiển thị học sinh có giới tính là "Nam" 
select TenHocSinh
from HocSinh
where GioiTinh = N'Nam'
--Truy vấn 3: Hiển thị các môn học không trùng lặp
select distinct MonGiangDay
from GiaoVien
--Truy vấn 4: Hiển thị các các học sinh có họ "Nguyễn"
select *
from HocSinh
where TenHocSinh like N'Nguyễn%'
--Truy vấn 5: Lấy ra 20% thông tin của các học sinh có lớp là "10A" hoặc "11A"
select top 20 PERCENT *
from HocSinh
where Lop = N'Lớp 10A' or Lop = N'Lớp 11A'
--Truy vấn 6: Lấy số lượng học sinh theo từng lớp
select Lop, COUNT(Lop) as SLHS
from HocSinh
group by Lop
--Truy vấn 7: Lấy thông tin của các học sinh không thuộc lớp nào
select top(1) with ties * 
from HocSinh
where Lop is null
order by Lop
--Truy vấn 8: Đếm số thứ tự khen thưởng theo Điểm khen thưởng
SELECT MaKhenThuong, TenKhenThuong, MucDo, DiemKhenThuong, 
DENSE_RANK() OVER (ORDER BY DiemKhenThuong DESC) AS ThuTu
FROM KhenThuong
ORDER BY ThuTu
--Truy vấn 9: Đếm số lần đạt thành tích của học sinh
SELECT HocSinh.MaHocSinh, TenHocSinh, COUNT(HocSinh.MaHocSinh) AS SoLanDatThanhTich
FROM HocSinh
JOIN ThanhTich ON HocSinh.MaHocSinh = ThanhTich.MaHocSinh
GROUP BY HocSinh.MaHocSinh, TenHocSinh
ORDER BY SoLanDatThanhTich desc
--Truy vấn 10: Lấy thông tin của các học sinh có ngày sinh từ năm 2005 đến 2007
select * from HocSinh
where NgaySinh between '2005-01-01' and '2007-01-31'
--Truy vấn 11: Lấy mã giáo viên và số lượng học sinh mà giáo viên đó dạy, và chỉ lấy các giáo viên có số lượng học sinh lớn hơn 1
SELECT gv.MaGiaoVien, gv.TenGiaoVien, COUNT(*) AS SoLuongHocSinh
FROM GiaoVien gv
JOIN ThanhTich tt ON gv.MaGiaoVien = tt.MaGiaoVien
GROUP BY gv.MaGiaoVien, gv.TenGiaoVien
having COUNT(*) > 1
--Truy vấn 12: Lấy mã giáo viên và số lượng học sinh mà giáo viên đó dạy, và chỉ lấy 5 giáo viên có số lượng học sinh nhiều nhất
SELECT top(5) gv.MaGiaoVien, gv.TenGiaoVien, COUNT(*) AS SoLuongHocSinh
FROM GiaoVien gv
JOIN ThanhTich tt ON gv.MaGiaoVien = tt.MaGiaoVien
GROUP BY gv.MaGiaoVien, gv.TenGiaoVien
order by SoLuongHocSinh desc
--Truy vấn 13: Đánh giá xếp loại theo điểm khen thưởng
SELECT 
    TenKhenThuong, 
    MucDo, 
    CASE 
        WHEN DiemKhenThuong >= 90 THEN N'Xuất sắc' 
        WHEN DiemKhenThuong >= 60 THEN 'Khá'
        ELSE 'Kém'
    END AS XepLoai
FROM KhenThuong
--Truy vấn 14: Đếm số lượng học sinh từng lớp theo giới tính
select Lop, [Nữ] , [Nam]
from (select Lop, GioiTinh from HocSinh ) hs
pivot
( count(GioiTinh) for GioiTinh in ([Nữ], [Nam]))as pvt
--order by Lop
--Truy vấn 15:Đánh số thứ tự của từng học sinh trong cùng lớp
SELECT ROW_NUMBER() OVER (PARTITION BY Lop ORDER BY Lop) AS ThuTu, TenHocSinh, Lop
FROM HocSinh
where Lop is not null and TenHocSinh is not null
ORDER BY Lop, TenHocSinh
go
							--Thủ tục và hàm
--thủ tục 1
create proc Proc_ThemHocSinh(
	@MaHocSinh char(10),
    @TenHocSinh NVARCHAR(50),
    @NgaySinh date,
    @GioiTinh nvarchar(3),
    @NoiSinh nvarchar(50),
    @Lop NVARCHAR(30))
as 
begin
	if exists(select * from HocSinh where MaHocSinh=@MaHocSinh )
		print N'Mã học sinh đã tồn tại. Insert thất bại.'	
	else
	begin
		insert into HocSinh 
		values(@MaHocSinh, @TenHocSinh, @NgaySinh, @GioiTinh, @NoiSinh, @Lop)
		print N'Insert thành công'
	end
end
go
Proc_ThemHocSinh 'MHS50', N'Nguyễn Văn Hiếu', '2004-10-17', N'Nam', N'Hưng Yên', N'Lớp 12C'
go
--thủ tục 2
alter PROC proc_UpdateGiaoVien
    @MaGiaoVien char(10),
    @TenGiaoVien NVARCHAR(50),
    @MonGiangDay NVARCHAR(50)
AS
BEGIN
	if exists(select * from GiaoVien where MaGiaoVien=@MaGiaoVien)
	begin
		UPDATE GiaoVien
		SET TenGiaoVien = @TenGiaoVien, MonGiangDay = @MonGiangDay
		WHERE MaGiaoVien = @MaGiaoVien
		Print N'Update thành công'
	end
	else
		print N'Mã giáo viên không tồn tại'
END
go
proc_UpdateGiaoVien 'MGV025', N'Nguyễn Văn Hiếu', N'CNTT'
go
--thủ tục 3
create proc proc_DeleteHocSinh(@mahs char(10))
as
	if exists(select * from HocSinh where MaHocSinh=@mahs)
	begin
		delete from HocSinh
		where MaHocSinh=@mahs		
	end
	else
		print N'Mã học sinh không tồn tại'
go
proc_DeleteHocSinh 'MHS500'
go
--thủ tục 4
create proc proc_TimKiemHocSinhTheoTen(@tenhs nvarchar(50))
as
begin
	select * from HocSinh
	where TenHocSinh like N'%' + @tenhs +'%'
end
go
proc_TimKiemHocSinhTheoTen 'h'
go
--thủ tục 5
create proc proc_TimKiemHocSinhTheoLop(@lop nvarchar(30))
as
begin
	if exists(select * from HocSinh where Lop=@lop)
	begin
		select * from HocSinh where Lop = @lop
	end
	else
		print N'Lớp không tồn tại'
end
go
proc_TimKiemHocSinhTheoLop N'Lớp 10A'
go
--thủ tục 6
create proc proc_ThongKeSoLuongHocSinhTheoLop(@lop nvarchar(30))
as
begin
	if exists(select * from HocSinh where Lop=@lop)
	begin
		select Lop, COUNT(*) as SLSV
		from HocSinh 
		where Lop = @lop
		group by Lop
	end
	else
		print N'Lớp không tồn tại'
end
go
proc_ThongKeSoLuongHocSinhTheoLop N'Lớp 10A'
go
--thủ tục 7
create proc proc_TongDiemTheoMucDo
as
begin
	select MucDo, sum(DiemKhenThuong) as TongDiemKhenThuong
	from KhenThuong
	group by MucDo
end
go
proc_TongDiemTheoMucDo 
go
--hàm 1: Lấy ra ngày sinh của học sinh theo mã học sinh
alter function NgaySinhHocSinh(@MaHocSinh char(10))
RETURNS date
AS
BEGIN
	declare @ngaySinh date
	if exists(select * from HocSinh where MaHocSinh=@MaHocSinh)
	begin
		select @ngaySinh = NgaySinh from HocSinh
		where MaHocSinh = @MaHocSinh
		return @ngaySinh
	end
	return null
END
go
SELECT dbo.NgaySinhHocSinh('MHS50')
go
--hàm 2: lấy ra danh sách học sinh theo mã lớp
alter FUNCTION LayDanhSachHocSinhTrongLop(@Lop NVARCHAR(30))
RETURNS TABLE
AS
	RETURN
		(SELECT MaHocSinh, TenHocSinh, NgaySinh, GioiTinh, NoiSinh, Lop
		FROM HocSinh
		WHERE Lop = @Lop)
go
select * from dbo.LayDanhSachHocSinhTrongLop(N'12522W4')
go
--hàm 3: lấy ra danh sách sinh viên có thành tích
create function DanhSachSinhVienCoThanhTich()
returns @hocSinh table(
	MaHocSinh char(10),
	TenHocSinh NVARCHAR(50),
    NgaySinh date,
    GioiTinh nvarchar(3),
    NoiSinh nvarchar(50),
    Lop NVARCHAR(30))
as
begin
    insert into @hocSinh 
		select hs.MaHocSinh, TenHocSinh, NgaySinh, GioiTinh, NoiSinh, Lop 
		from HocSinh hs join ThanhTich tt on hs.MaHocSinh=tt.MaHocSinh
	return 
end	
go
select * from dbo.DanhSachSinhVienCoThanhTich()
go
			--Trigger
--after(for) insert: không cho phép thêm thành tích năm 2022
alter TRIGGER InsertThanhTich ON ThanhTich
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted 
	where YEAR(NgayDatThanhTich) = 2022
	)
    BEGIN
        RAISERROR ('Không cho phép chèn thành tích năm 2022.', 16, 1)
        ROLLBACK TRANSACTION
    END
	else
		print N'Chèn thành công'
END
go
INSERT INTO ThanhTich (MaThanhTich, MaHocSinh, MaGiaoVien, MaKhenThuong, NgayDatThanhTich)
VALUES('MTT013', 'MHS001', 'MGV001', 'MKT001', '2022-01-08')
select * from ThanhTich
go
--after(for) update: update học sinh có tồn tại hay không
create trigger trgAfterUpdateHocSinh on HocSinh
for update
as
begin
	if exists(select * from HocSinh 
		where MaHocSinh in (select MaHocSinh from inserted)
		)
		print N'Update thành công'
	else
	begin
		raiserror ('Học sinh không tồn tại', 16, 1)
		rollback tran
	end
end
go
update HocSinh
set TenHocSinh = N'Vũ Quang Phúc'
where MaHocSinh = 'MHS021'
select * from HocSinh
go
--after(for) delete: xóa giáo viên và in giáo viên đó ra màn hình
create trigger trigAfterDeleteGiaoVien on GiaoVien
after delete as
begin
	select * from deleted
end
delete from GiaoVien where MaGiaoVien = 'MGV025'
select * from GiaoVien
go
--instead of insert: thêm vào khen thưởng nếu khen thưởng đó không tồn tại
create trigger ThemVaoKhenthuong on KhenThuong
instead of insert
as
begin
	if exists( select * from KhenThuong 
	where MaKhenThuong in (select MaKhenThuong from inserted))
	begin
		raiserror ('Khen thưởng đã tồn tại', 16, 1)
		rollback tran
	end
	else
	begin
		insert into KhenThuong select * from inserted
		print N'Insert thành công.'
	end
end
go
INSERT INTO KhenThuong (MaKhenThuong, TenKhenThuong, MucDo, DiemKhenThuong)
VALUES('MKT020', N'Học sinh giỏi', N'Cao', 90)
go
--instead of update: cập nhật mã khen thưởng trên bảng LeTraoKhenThuong
alter trigger SuaLeTraoKhenThuong on LeTraoKhenThuong
instead of update as
begin
	if exists(
		select * from LeTraoKhenThuong
		where MaLeTraoKhenThuong in (select MaLeTraoKhenThuong from inserted))
	begin
		update LeTraoKhenThuong set MaKhenThuong = (select MaKhenThuong from inserted)
		where MaLeTraoKhenThuong = (select MaLeTraoKhenThuong from inserted)
		--select * from inserted
		print N'Update thành công'
	end
	else
	begin
		print N'Mã không tồn tại'
		rollback tran
	end
end
go
update LeTraoKhenThuong
set MaKhenThuong = 'MKT003'
where MaLeTraoKhenThuong = 'MLTKT003'
go
--instead of delete: xóa thành tích đã tồn tại
alter trigger XoaThanhTich on ThanhTich
instead of delete
as
begin
	IF EXISTS (
        SELECT * FROM ThanhTich 
        WHERE MaThanhTich IN (SELECT MaThanhTich FROM deleted)
    )
    BEGIN
        DELETE FROM ThanhTich WHERE MaThanhTich IN (SELECT MaThanhTich FROM deleted)
		PRINT N'Xóa thành tích thành công'
    END
	else
	begin
		print N'Thành tích không tồn tại.'
		rollback tran
	end
end
delete from ThanhTich 
where MaThanhTich = 'MTT027'
go
--trigger dây truyền: xóa sinh viên thì xóa thành tích của sinh viên đó
alter trigger XoaHocSinhThiXoaThanhTich on HocSinh
instead of delete
as
begin
	IF EXISTS(
        SELECT * FROM ThanhTich WHERE MaHocSinh IN(SELECT MaHocSinh FROM deleted)
    )
    BEGIN
        DELETE FROM ThanhTich WHERE MaHocSinh IN (SELECT MaHocSinh FROM deleted) 
    END
    DELETE FROM HocSinh WHERE MaHocSinh IN (SELECT MaHocSinh FROM deleted)
	print N'Xóa học sinh thành công.'
end
delete from HocSinh where MaHocSinh = 'MHS038'
select * from HocSinh
go
--trigger tự động thực thi việc cập nhật dữ liệu
alter trigger TuDongCapNhatDiemKhenThuong on KhenThuong
after insert, update as
begin
	declare @mucdo nvarchar(50)
	declare @diemkhenthuong int
	select @mucdo = MucDo from inserted
	if @mucdo = N'Cao'
		set @diemkhenthuong = 90
	else if @mucdo = N'Trung bình'
		set @diemkhenthuong = 60
	else 
		set @diemkhenthuong = 40
	update KhenThuong
	set DiemKhenThuong = @diemkhenthuong
	where MaKhenThuong in (select MaKhenThuong from inserted)
	print N'Thành công.'
end
go
insert into KhenThuong(MaKhenThuong, TenKhenThuong, MucDo) 
values('MKT13', N'Học sinh khá', N'Trung bình')
select * from KhenThuong
go
--Phần cộng điểm 
create proc SuaHocSinh(
	@mahs char(10),
	@tenhs nvarchar(50),
	@ngaysinh date,
	@gioitinh nvarchar(3),
	@noisinh nvarchar(50),
	@lop nvarchar(30))
as
begin
	if(exists(select * from HocSinh where MaHocSinh=@mahs))
	begin
		update HocSinh 
		set TenHocSinh = @tenhs, NgaySinh=@ngaysinh, GioiTinh=@gioitinh, 
		NoiSinh=@noisinh, Lop=@lop
		where MaHocSinh=@mahs
	end		
	else
		print N'Mã học sinh không tồn tại. Update thất bại.'
end
SuaHocSinh 'MHS080', N'Nguyễn Văn Hiếu', '2004-10-17', N'Nam', N'Hưng Yên', N'Lớp 12C'
go
