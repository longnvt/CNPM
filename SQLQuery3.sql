create database QuanLyNhanVien
On primary
(
name = QLNV_data,
filename='E:\SQL1\QuanLyNhanVien\QLNV_data.mdf',
size=10MB,
maxsize=100MB,
filegrowth=2MB
)
Log On
(
name=QLNV_log,
filename='E:\SQL1\QuanLyNhanVien\QLNV_log.ldf',
size=5MB,
maxsize=50MB,
filegrowth=1MB
)
Create table NhanVien
(
MaNV int,
HoTen nvarchar(50),
DiaChi nvarchar(50),
SDT char(10),
Email nvarchar(30),
primary key(MaNV)
)
Create table ChiTietNhanVien
(
MaNV int,
Ten nvarchar(30),
Luong int,
SoNgayNghi char(10),
ChucVi nvarchar(50),
foreign key(MaNV) references NhanVien(MaNV)
)

Create table PhongBan
(
MaPhong int,
TenPhong nvarchar(30)
primary key(MaPhong)
)
Create table DuAn
(
MaDA int,
TenDA nvarchar(50)
primary key(MaDA)
)
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (1,N'Nguyễn Văn Thành Long',N'KimGiang',0945312345,N'longnvt@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (2,N'Nguyễn Kỳ Anh',N'KhuongTrung',0945312344,N'Kyanh@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (3,N'Nguyễn Đức Trung',N'Thái Thịnh',0945312343,N'Ductrung@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (4,N'Lê Trung Kiên',N'KimGiang',0945312342,N'Trungkien@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (5,N'Bùi Quốc Trưởng',N'NamDinh',0945312341,N'BuiTruong@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (6,N'Nguyễn Đoàn Xuân Hiếu',N'Thái Thịnh',0945312340,N'XuanHieu@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (7,N'Nguyễn Thanh Tùng',N'Trường Chinh',0945312339,N'ThanhTung@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (8,N'Nguyễn Thị Phương Thảo',N'Thanh Trì',0945312338,N'PhuongThao@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (9,N'Hoàng Đức Diễm',N'Hưng Yên',0945312337,N'DucDiem@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (10,N'Nguyễn Thu Phương',N'Tuyên Quang',0945312336,N'Thuphuong@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (11,N'Lăng Thị Diệu Linh',N'Lạng Sơn',0945312335,N'DieuLinh@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (12,N'Dương Quốc Tùng',N'Hà Nội',0945312334,N'QuocTung@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (13,N'Nguyễn Thảo Quyên',N'Hà Nội',0945312333,N'Thaoquyen@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (14,N'Nguyễn Khắc Hải',N'Hà Tây',0945312332,N'Khachai@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (15,N'Nguyễn Khắc Kỷ',N'Hà Tây',0945312331,N'Khacky@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (16,N'Ngô Việt Hoàng',N'Hà Nội',0945312330,N'Viethoang@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (17,N'Trần Anh Tú',N'Hà Nội',0945312329,N'Trantu@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (18,N'Phạm Đăng Nam',N'Hà Nội',0945312328,N'PhạmNam@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (19,N'Nguyễn Việt Hoàng',N'Hà Nội',0945312327,N'NguyenHoang@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (20,N'Nguyễn Trung Dũng',N'Hà Nội',0945312325,N'Trungdung@gmail.com');

select * from NhanVien








