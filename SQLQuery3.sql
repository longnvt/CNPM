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
ChucVu nvarchar(50),
foreign key(MaNV) references NhanVien(MaNV)
)


Create table PhongBan
(
MaPhong int,
TenPhong nvarchar(30)
primary key(MaPhong)
)

Create table ChiTietPhongBan
(
MaPhong int foreign key references PhongBan(MaPhong),
MaNV int foreign key references NhanVien(MaNV),
ChucVu nvarchar(20),
primary key (MaPhong,MaNV),
DanhGiaNangLuc nvarchar(20)
)


)
Create table DuAn
(
MaDA int,
TenDA nvarchar(50)
primary key(MaDA)
)
Create table QuanLy
(
MaQL int,
TenQL nvarchar(50)
primary key(MaQL)
)

Create table ChiTietDuAn
(
MaDA int ,
TenDA nvarchar(20),
MaNV int,
foreign key(MaDA) references DuAn(MaDA),
foreign key(MaNV) references NhanVien(MaNV)
)
Create table ChiTietLuongThuong
(
MaNV int foreign key references NhanVien(MaNV),
TenNV nvarchar(50),
Luong int
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
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (21,N'Bùi Xuân Đức',N'Hà Nội',0945312876,N'Buiduc@gmail.com');
INSERT INTO NHANVIEN (MaNV,HOTEN,DiaChi,SDT,Email)
VALUES (22,N'Lê Hồng Nhung',N'Hà Nội',0945312876,N'Hongnhung@gmail.com');



select * from NhanVien





select * from ChiTietNhanVien
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (1,N'Nguyễn Văn Thành Long',200,'1',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (2,N'Nguyễn Kỳ Anh',500,'0',N'Trưởng Phòng');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (3,N'Nguyễn Đức Trung',250,'0',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (4,N'Lê Trung Kiên',200,'1',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (5,N'Bùi Quốc Trưởng',150,'3',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (6,N'Nguyễn Đoàn Xuân Hiếu',170,'2',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (7,N'Nguyễn Thanh Tùng',200,'1',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (8,N'Nguyễn Thị Phương Thảo',200,'1',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (9,N'Hoàng Đức Diễm',100,'8',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (10,N'Nguyễn Thu Phương',250,'0',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (11,N'Lăng Thị Diệu Linh',450,'1',N'Trưởng Phòng');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (12,N'Dương Quốc Tùng',250,'0',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (13,N'Nguyễn Thảo Quyên',250,'0',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (14,N'Nguyễn Khắc Hải',200,'1',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (15,N'Nguyễn Khắc Kỷ',120,'7',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (16,N'Ngô Việt Hoàng',250,'0',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (17,N'Trần Anh Tú',170,'2',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (18,N'Phạm Đăng Nam',170,'2',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (19,N'Nguyễn Việt Hoàng',150,'3',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (20,N'Nguyễn Trung Dũng',170,'2',N'Nhân Viên');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (21,N'Bùi Xuân Đức',500,'0',N'Trưởng Phòng');
INSERT INTO ChiTietNhanVien(MaNV,TEN,Luong,SoNgayNghi,ChucVu)
VALUES (22,N'Lê Hồng Nhung',450,'1',N'Trưởng Phòng');


select * from PhongBan
INSERT INTO PhongBan(MaPhong,TenPhong)
VALUES (1,N'Phòng Thiết Kế');
INSERT INTO PhongBan(MaPhong,TenPhong)
VALUES (2,N'Phòng Kế Toán');
INSERT INTO PhongBan(MaPhong,TenPhong)
VALUES (3,N'Phòng Kỹ Thuật');
INSERT INTO PhongBan(MaPhong,TenPhong)
VALUES (4,N'Phòng Hành Chính Kinh Doanh');

select * from ChiTietPhongBan where MaPhong = 1
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (1,1,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (1,2,N'Trưởng Phòng',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (1,3,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (1,4,N'Nhân Viên',N'Khá');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (1,5,N'Nhân Viên',N'Khá');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (1,6,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (2,11,N'Trưởng Phòng',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (2,7,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (2,8,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (2,9,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (2,10,N'Nhân Viên',N'Khá');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (2,12,N'Nhân Viên',N'Trung Bình');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (3,21,N'Trưởng Phòng',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (3,13,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (3,14,N'Nhân Viên',N'Khá');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (3,15,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (3,16,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (4,22,N'Trưởng Phòng',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (4,17,N'Nhân Viên',N'Tốt');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (4,18,N'Nhân Viên',N'Khá');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (4,19,N'Nhân Viên',N'Khá');
INSERT INTO ChiTietPhongBan(MaPhong,MaNV,ChucVu,DanhGiaNangLuc)
VALUES (4,20,N'Nhân Viên',N'Tốt');

select * from DuAn
INSERT INTO DuAn(MaDA,TenDA)
VALUES (1,N'Block chain');
INSERT INTO DuAn(MaDA,TenDA)
VALUES (2,N'Trí Tuệ Nhân Tạo');
INSERT INTO DuAn(MaDA,TenDA)
VALUES (3,N'IoT');

select * from QuanLy
INSERT INTO QuanLy(MaQL,TenQL)
VALUES (1,N'Bùi Ngọc Trung');
INSERT INTO QuanLy(MaQL,TenQL)
VALUES (2,N'Trần Thị Hiên');

select * from ChiTietDuAn  
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (1,N'BlockChain',1);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (1,N'BlockChain',2);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (1,N'BlockChain',3);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (1,N'BlockChain',4);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (1,N'BlockChain',5);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (1,N'BlockChain',6);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (2,N'Trí Tuệ Nhân Tạo',11);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (2,N'Trí Tuệ Nhân Tạo',7);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (2,N'Trí Tuệ Nhân Tạo',8);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (2,N'Trí Tuệ Nhân Tạo',9);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (2,N'Trí Tuệ Nhân Tạo',10);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (2,N'Trí Tuệ Nhân Tạo',12);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (3,N'IoT',13);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (3,N'IoT',14);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (3,N'IoT',15);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (3,N'IoT',21);
INSERT INTO ChiTietDuAn(MaDA,TenDA,MaNV)
VALUES (3,N'IoT',20);

select * from ChiTietLuongThuong
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (1,N'Nguyễn Văn Thành Long',5800);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (2,N'Nguyễn Kỳ Anh',15000);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (3,N'Nguyễn Đức Trung',7500);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (4,N'Lê Trung Kiên',5800);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (5,N'Bùi Quốc Trưởng',4050);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (6,N'Nguyễn Đoàn Xuân Hiếu',4760);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (7,N'Nguyễn Thanh Tùng',5800);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (8,N'Nguyễn Thị Phương Thảo',5800);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (9,N'Hoàng Đức Diễm',2200);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (10,N'Nguyễn Thu Phương',7500);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (11,N'Lăng Thị Diệu Linh',13050);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (12,N'Dương Quốc Tùng',7500);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (13,N'Nguyễn Thảo Quyên',7500);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (14,N'Nguyễn Khắc Hải',5800);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (15,N'Nguyễn Khắc Kỷ',2760);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (16,N'Ngô Việt Hoàng',7500);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (17,N'Trần Anh Tú',4760);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (18,N'Phạm Đăng Nam',4760);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (19,N'Nguyễn Việt Hoàng',4050);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (20,N'Nguyễn Trung Dũng',4760);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (21,N'Bùi Xuân Đức',15000);
INSERT INTO ChiTietLuongThuong(MaNV,TenNV,Luong)
VALUES (22,N'Lê Hồng Nhung',13050);











 



