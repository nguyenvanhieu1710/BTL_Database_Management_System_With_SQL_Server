create database MuoiBon_NguyenVanHieu;
go
use MuoiBon_NguyenVanHieu;
go
CREATE TABLE KhachHang (
    MaKhachHang CHAR(5) PRIMARY KEY,
    HoTen NVARCHAR(50),
    Email NVARCHAR(50),
    DienThoai NVARCHAR(15),
    DiaChi NVARCHAR(50)
);
go
CREATE TABLE DatPhong (
    MaDatPhong CHAR(5) PRIMARY KEY,
    MaKhachHang CHAR(5),
    SoPhong INT,
    NgayNhanPhong DATE,
    NgayTraPhong DATE,
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang)
);
go
CREATE TABLE DichVu (
    MaDichVu CHAR(5) PRIMARY KEY,
    MaDatPhong CHAR(5),
    TenDichVu NVARCHAR(50),
    ChiPhi DECIMAL,
    FOREIGN KEY (MaDatPhong) REFERENCES DatPhong(MaDatPhong)
);
go
CREATE TABLE GiaoDich (
    MaGiaoDich CHAR(5) PRIMARY KEY,
    MaDatPhong CHAR(5),
    NgayGiaoDich DATETIME,
    SoTien DECIMAL,
    FOREIGN KEY (MaDatPhong) REFERENCES DatPhong(MaDatPhong)
);
go
CREATE TABLE HoaDon (
    MaHoaDon CHAR(5) PRIMARY KEY,
    MaDatPhong CHAR(5),
    NgayLapHoaDon DATE,
    SoTien DECIMAL,
    FOREIGN KEY (MaDatPhong) REFERENCES DatPhong(MaDatPhong)
);
go
CREATE TABLE PhanHoiKhachHang (
    MaPhanHoi CHAR(5) PRIMARY KEY,
    MaDatPhong CHAR(5),
    NgayPhanHoi DATE,
    NoiDungPhanHoi NVARCHAR(MAX),
    FOREIGN KEY (MaDatPhong) REFERENCES DatPhong(MaDatPhong)
);
go
INSERT INTO KhachHang (MaKhachHang, HoTen, Email, DienThoai, DiaChi)
VALUES
    ('MKH01', N'Nguyễn Văn Anh', N'nguyenvananh@example.com', N'123456789', N'Hà Nội'),
    ('MKH02', N'Trần Thị Bân', N'tranthiban@example.com', N'987654321', N'Hồ Chí Minh'),
    ('MKH03', N'Lê Văn Càn', N'levancan@example.com', N'456123789', N'Đà Nẵng'),
    ('MKH04', N'Phạm Thị Giang', N'phamthigiang@example.com', N'963258741', N'Hải Phòng'),
    ('MKH05', N'Huỳnh Văn Diệu', N'huynhvandieu@example.com', N'741852963', N'Cần Thơ'),
    ('MKH06', N'Ngô Thị Huế', N'ngothihue@example.com', N'852369741', N'Hưng Yên'),
    ('MKH07', N'Dương Văn Giang', N'duongvangiang@example.com', N'369852147', N'Hà Giang'),
    ('MKH08', N'Vũ Thị Huệ', N'vuthihue@example.com', N'258147369', N'Thanh Hóa'),
    ('MKH09', N'Đặng Văn Hiếu', N'dangvanhieu@example.com', N'147852369', N'Quảng Ninh'),
    ('MKH10', N'Nguyễn Thị Kim', N'nguyenthikim@example.com', N'369147852', N'Nghệ An');
go
INSERT INTO DatPhong (MaDatPhong, MaKhachHang, SoPhong, NgayNhanPhong, NgayTraPhong)
VALUES
    ('MDP01', 'MKH01', 101, '2023-10-01', '2023-10-05'),
    ('MDP02', 'MKH02', 205, '2023-11-15', '2023-11-20'),
    ('MDP03', 'MKH03', 306, '2023-12-10', '2023-12-12'),
    ('MDP04', 'MKH04', 102, '2023-09-05', '2023-09-07'),
    ('MDP05', 'MKH05', 405, '2023-10-20', '2023-10-25'),
    ('MDP06', 'MKH06', 202, '2023-11-01', '2023-11-03'),
    ('MDP07', 'MKH07', 302, '2023-12-05', '2023-12-07'),
    ('MDP08', 'MKH08', 401, '2023-11-10', '2023-11-15'),
    ('MDP09', 'MKH09', 203, '2023-10-05', '2023-10-10'),
    ('MDP10', 'MKH10', 103, '2023-09-15', '2023-09-20');
go
INSERT INTO DichVu (MaDichVu, MaDatPhong, TenDichVu, ChiPhi)
VALUES
    ('MDV01', 'MDP01', N'Spa', 150000),
    ('MDV02', 'MDP02', N'Đồ uống', 50000),
    ('MDV03', 'MDP03', N'Xe đưa đón', 200000),
    ('MDV04', 'MDP04', N'Gym', 100000),
    ('MDV05', 'MDP05', N'Bữa sáng', 80000),
    ('MDV06', 'MDP06', N'Massage', 200000),
    ('MDV07', 'MDP07', N'Hướng dẫn du lịch', 300000),
    ('MDV08', 'MDP08', N'Bể bơi', 50000),
    ('MDV09', 'MDP09', N'Thuê xe', 250000),
    ('MDV10', 'MDP10', N'Phòng họp', 150000);
go
INSERT INTO GiaoDich (MaGiaoDich, MaDatPhong, NgayGiaoDich, SoTien)
VALUES
    ('MGD01', 'MDP01', '2023-10-02 10:30', 500000),
    ('MGD02', 'MDP02', '2023-11-16 15:45', 250000),
    ('MGD03', 'MDP03', '2023-12-11 09:20', 100000),
    ('MGD04', 'MDP04', '2023-09-06 14:10', 150000),
    ('MGD05', 'MDP05', '2023-10-21 11:00', 200000),
    ('MGD06', 'MDP06', '2023-11-02 16:30', 300000),
    ('MGD07', 'MDP07', '2023-12-06 10:15', 400000),
    ('MGD08', 'MDP08', '2023-11-11 12:00', 150000),
    ('MGD09', 'MDP09', '2023-10-06 08:45', 250000),
    ('MGD10', 'MDP10', '2023-09-16 13:20', 180000);
go
INSERT INTO HoaDon (MaHoaDon, MaDatPhong, NgayLapHoaDon, SoTien)
VALUES
    ('MHD01', 'MDP01', '2023-10-06', 750000),
    ('MHD02', 'MDP02', '2023-11-21', 350000),
    ('MHD03', 'MDP03', '2023-12-12', 150000),
    ('MHD04', 'MDP04', '2023-09-08', 200000),
    ('MHD05', 'MDP05', '2023-10-26', 300000),
    ('MHD06', 'MDP06', '2023-11-04', 400000),
    ('MHD07', 'MDP07', '2023-12-08', 500000),
    ('MHD08', 'MDP08', '2023-11-16', 250000),
    ('MHD09', 'MDP09', '2023-10-11', 350000),
    ('MHD10', 'MDP10', '2023-09-22', 280000);
go
INSERT INTO PhanHoiKhachHang (MaPhanHoi, MaDatPhong, NgayPhanHoi, NoiDungPhanHoi)
VALUES
    ('MPH01', 'MDP01', '2023-01-01', N'Rất Tốt'),
    ('MPH02', 'MDP02', '2023-01-02', N'Tốt'),
    ('MPH03', 'MDP03', '2023-01-03', N'Bình Thường'),
    ('MPH04', 'MDP04', '2023-01-04', N'Kém'),
    ('MPH05', 'MDP05', '2023-01-05', N'Very Good'),
    ('MPH06', 'MDP06', '2023-01-06', N'Rất Tốt'),
    ('MPH07', 'MDP07', '2023-01-07', N'Khá'),
    ('MPH08', 'MDP08', '2023-01-08', N'Ổn'),
    ('MPH09', 'MDP09', '2023-01-09', N'Hết Sảy'),
    ('MPH10', 'MDP10', '2023-01-10', N'Tuyệt vời');
go
sp_addlogin 'nd1','123'
go
sp_adduser 'nd1', 'user1'
go
sp_adduser 'nd1','user2' 
go
sp_adduser 'nd1', 'user3'
go
sp_addrole 'NhomUser'
go
sp_addrolemember 'NhomUser', 'user1'
go
sp_addrolemember 'NhomUser', 'user2'
go
sp_addrolemember 'NhomUser', 'user3'
go
grant select, insert, update, delete
on DatPhong
to user1
go
revoke select, insert, update, delete
on DatPhong
from user1
go
--sp_helpindex KhachHang
--drop index KhachHang.Index_HoTenKH
create index Index_HoTenKH on KhachHang(HoTen) with (fillfactor = 80)
select * from KhachHang where HoTen = N'Đặng Văn Hiếu'
create index Index_EmailKH on KhachHang(Email)
select * from KhachHang where Email = 'ngothihue@example.com'
--sp_helpindex DatPhong
create index Index_MDP_SP on DatPhong(MaDatPhong, SoPhong)
select * from DatPhong where MaDatPhong = 'MDP04' or SoPhong = 401
--sp_helpindex DichVu
create index Index_TenDV_ChiPhi on DichVu(TenDichVu, ChiPhi)
select * from DichVu where TenDichVu = 'Spa' or ChiPhi = 100000
CREATE FULLTEXT CATALOG ht_cat
WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT;
--SELECT name, is_default
--FROM sys.fulltext_catalogs;
--DROP FULLTEXT CATALOG ht_cat;
--DROP FULLTEXT INDEX ON KhachHang;
--sp_helpconstraint KhachHang
--sp_helpindex KhachHang
create fulltext index on KhachHang(HoTen) key index PK__KhachHan__88D2F0E5DE4E89C1 on ht_cat
select * from KhachHang where contains(HoTen,'"Nguyễn" or "Hiếu" or "Giang"');
go
create view TT_KH
as
	select * from KhachHang
go
insert into TT_KH values('MKH11', null, null, null, null)
go
update TT_KH set HoTen = N'Nguyễn Văn Hiếu' where MaKhachHang = 'MKH11';
go
delete from TT_KH where MaKhachHang = 'MKH11'
go
create view TT_DP 
as 
	select * from DatPhong
go
insert into TT_DP values('MDP11', 'MKH11', null, null, null)
go
update TT_DP set SoPhong = 210 where MaKhachHang = 'MKH11';
go
delete from TT_DP where MaKhachHang = 'MKH11'
go
create view HotenKH_SoPhong
as
	select HoTen, SoPhong
	from KhachHang kh inner join DatPhong dp on kh.MaKhachHang=dp.MaKhachHang
go
create view HoTenKH_SoPhong_PhanHoi
as
	select HoTen, SoPhong, NoiDungPhanHoi
	from KhachHang kh inner join DatPhong dp on kh.MaKhachHang=dp.MaKhachHang
	inner join PhanHoiKhachHang phkh on dp.MaDatPhong=phkh.MaDatPhong
go
create view HoTenKH_SoPhong_DichVu
as
	select HoTen, SoPhong, TenDichVu as TenDichVuDaDung, ChiPhi as ChiPhiDichVu
	from KhachHang kh inner join DatPhong dp on kh.MaKhachHang=dp.MaKhachHang
	inner join DichVu dv on dp.MaDatPhong=dv.MaDatPhong
go
create view HoTenKH_SoPhong_HoaDon
as
	select HoTen, SoPhong, NgayTraPhong, NgayLapHoaDon, SoTien as TongTien
	from KhachHang kh inner join DatPhong dp on kh.MaKhachHang=dp.MaKhachHang
	inner join HoaDon hd on dp.MaDatPhong=hd.MaDatPhong
go
--Câu 1: Liệt kê tất cả các khách hàng trong bảng KhachHang
select * from KhachHang
go
--Câu 2: Hiển thị tên và email của các khách hàng có địa chỉ ở thành phố Hà Nội
select HoTen, Email 
from KhachHang
where DiaChi = N'Hà Nội'
go
--Câu 3: Đếm số lượng đặt phòng của mỗi khách hàng
select * from KhachHang
select HoTen, COUNT(MaDatPhong) as SoLuongDatPhong
from KhachHang kh inner join DatPhong dp on kh.MaKhachHang=dp.MaKhachHang
group by HoTen
go
--Câu 4: Tính tổng số tiền đã chi trên dịch vụ cho mỗi phòng
select * from DichVu
select * from DatPhong
select MaKhachHang, SoPhong, sum(ChiPhi) as TongChiPhiDichVu
from DatPhong dp inner join DichVu dv on dp.MaDatPhong=dv.MaDatPhong
group by MaKhachHang, SoPhong
go
--Câu 5: Tính số lượng giao dịch và tổng số tiền giao dịch trong mỗi ngày
select * from GiaoDich
select MaDatPhong, NgayGiaoDich, sum(SoTien) as TongTienTrongNgay
from GiaoDich
group by MaDatPhong, NgayGiaoDich
go
--Câu 6: Liệt kê các khách hàng đã đặt phòng nhưng chưa có hóa đơn
INSERT INTO HoaDon (MaHoaDon, MaDatPhong, NgayLapHoaDon, SoTien)
VALUES
    ('MHD11', 'MDP11', null, null),
    ('MHD12', 'MDP12', null, null)--Chưa xong
select * from HoaDon
select * from DatPhong
select * from KhachHang
update KhachHang
set HoTen = 'Are you OK?'
where MaKhachHang = 'MKH11'
select HoTen
from KhachHang kh inner join DatPhong dp on kh.MaKhachHang=dp.MaKhachHang
inner join HoaDon hd on dp.MaDatPhong=hd.MaHoaDon
where NgayLapHoaDon is not null 
go
--Câu 7: Liệt kê các dịch vụ được sử dụng trong mỗi đặt phòng.
--Câu 8: Hiển thị các đặt phòng có số phòng lớn hơn 10.
--Câu 9: Tìm giao dịch có số tiền lớn nhất.
--Câu 10: Liệt kê các hóa đơn được lập trong khoảng thời gian từ ngày 1/1/2023 đến 31/12/2023.
--Câu 11: Liệt kê các đặt phòng có phản hồi từ khách hàng.
--Câu 12: Tìm thông tin khách hàng có tổng số tiền chi trên dịch vụ lớn nhất.
--Câu 13: Đếm số lượng khách hàng theo từng thành phố.
--Câu 14: Liệt kê đặt phòng có ngày nhận phòng và ngày trả phòng cách nhau ít nhất 3 ngày.
--Câu 15: Liệt kê các đặt phòng không có phản hồi từ khách hàng.
--Câu 16: Tìm thông tin khách hàng có email chứa từ khóa "gmail".
--Câu 17: Đếm số lượng đặt phòng của từng khách hàng theo thứ tự giảm dần.
--Câu 18: Liệt kê thông tin đặt phòng theo mã đặt phòng và mã khách hàng sắp xếp theo mã đặt phòng tăng dần và ngày nhận phòng giảm dần.
--Câu 19: Tính số lượng giao dịch và tổng số tiền giao dịch theo từng tháng trong năm 2023.
--Câu 20: Hiển thị thông tin các hóa đơn và tổng số tiền theo từng ngày lập hóa đơn.