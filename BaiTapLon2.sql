create database S13_NguyenVanHieu1;
go
use S13_NguyenVanHieu1;
go
create table ThanhTich(
	IDThanhTich nchar(10) primary key,
	TenThanhTich nvarchar(250)
);
go
create table TapThe(
	IDTapThe nchar(10) primary key,
	TenTapThe nvarchar(250)
);
go
create table ThanhTichTapThe(
	IDThanhTich nchar(10) foreign key (IDThanhTich) references ThanhTich(IDThanhTich),
	IDTapThe nchar(10) foreign key (IDTapThe) references TapThe(IDTapThe),
	NamThang date,
	primary key (IDThanhTich, IDTapThe)
);
go
create table DonVi(
	IDDonVi nchar(10) primary key,
	TenDonVi nvarchar(250),
	IDTapThe nchar(10) foreign key (IDTapThe) references TapThe(IDTapThe)
	);
go
create table ThanhTichDonVi(
	IDDonVi nchar(10) foreign key (IDDonVi) references DonVi(IDDonVi),
	IDThanhTich nchar(10) foreign key (IDThanhTich) references ThanhTich(IDThanhTich),
	NamThang date,
	primary key (IDThanhTich, IDDonVi)
	);
go
create table CaNhan(
	IDCaNhan nchar(10) primary key,
	TenCaNhan nvarchar(150),
	NamSinh date,
	HocHanhHocVi nvarchar(150),
	ChucVu nvarchar(150),
	GhiChu nvarchar(MAX),
	IDDonVi nchar(10) foreign key (IDDonVi) references DonVi(IDDonVi)
	);
go
create table ThanhTichCaNhan(
	IDThanhTich nchar(10) foreign key (IDThanhTich) references ThanhTich(IDThanhTich),
	IDCaNhan nchar(10) foreign key (IDCaNhan) references CaNhan(IDCaNhan),
	NamThang date,
	primary key(IDThanhTich, IDCaNhan)
);
go
create table DangKyThanhTich(
	IDDKThanhTich nchar(10) primary key,
	TenThanhTichDK nvarchar(250)
	);
go
create table DKTapThe(
	IDDKThanhTich nchar(10) foreign key (IDDKThanhTich) references DangKyThanhTich(IDDKThanhTich),
	IDTapThe nchar(10) foreign key (IDTapThe) references TapThe(IDTapThe),
	NamThang date,
	GhiChu nvarchar(MAX),
	primary key(IDDKThanhTich, IDTapThe)
	);
go
create table DKDonVi(
	IDDKThanhTich nchar(10) foreign key (IDDKThanhTich) references DangKyThanhTich(IDDKThanhTich),
	IDDonVi nchar(10) foreign key (IDDonVi) references DonVi(IDDonVi),
	NamThang date,
	GhiChu nvarchar(MAX),
	primary key(IDDKThanhTich, IDDonVi)
	);
go
create table DKCaNhan(
	IDDKThanhTich nchar(10) foreign key (IDDKThanhTich) references DangKyThanhTich(IDDKThanhTich),
	IDCaNhan nchar(10) foreign key (IDCaNhan) references CaNhan(IDCaNhan),
	NamThang date,
	GhiChu nvarchar(MAX),
	primary key(IDDKThanhTich, IDCaNhan)
	);
go