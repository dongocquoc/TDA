-- Script Date: 19/08/2020 10:05 CH  - ErikEJ.SqlCeScripting version 3.5.2.64
-- Database information:
-- Locale Identifier: 1066
-- Encryption Mode: 
-- Case Sensitive: False
-- Database: E:\Website\TDA\DB\TDAKT.sdf
-- ServerVersion: 4.0.8876.1
-- DatabaseSize: 128 KB
-- SpaceAvailable: 3,999 GB
-- Created: 18/08/2020 10:25 CH

-- User Table information:
-- Number of tables: 8
-- CumThietBi: 0 row(s)
-- Chuyen: 0 row(s)
-- DonVi: 1 row(s)
-- KeHoach: 0 row(s)
-- LichSu: 0 row(s)
-- NhanVien: 1 row(s)
-- ThietBi: 0 row(s)
-- ThongSoKT: 0 row(s)

SET IDENTITY_INSERT [DonVi] ON;
GO
INSERT INTO [DonVi] ([iMaDonVi],[sTenDonVi],[sDiaChi]) VALUES (
1,N'TRỤ SỞ CHÍNH CỦA CÔNG TY CỔ PHẦN TÔN ĐÔNG Á',N'Số 5, đường số 5, Khu Công nghiệp Sóng Thần 1, phường Dĩ An, thành phố Dĩ An, tỉnh Bình Dương');
GO
SET IDENTITY_INSERT [DonVi] OFF;
GO
SET IDENTITY_INSERT [NhanVien] ON;
GO
INSERT INTO [NhanVien] ([iMaNV],[sTenNV],[sTaiKhoan],[sMatKhau],[sEmail],[sChucVu],[sPhongBan],[iMaDonVi]) VALUES (
1,N'Admin',N'Admin',N'TDA@1998',N'info@tondonga.com.vn',N'Admin',N'CNTT',1);
GO
SET IDENTITY_INSERT [NhanVien] OFF;
GO
SET IDENTITY_INSERT [Chuyen] OFF;
GO
SET IDENTITY_INSERT [ThietBi] OFF;
GO
SET IDENTITY_INSERT [CumThietBi] OFF;
GO
SET IDENTITY_INSERT [ThongSoKT] OFF;
GO
SET IDENTITY_INSERT [LichSu] OFF;
GO
SET IDENTITY_INSERT [KeHoach] OFF;
GO
DBCC CHECKIDENT ('DonVi', RESEED, 2);
GO
DBCC CHECKIDENT ('NhanVien', RESEED, 2);
GO
DBCC CHECKIDENT ('Chuyen', RESEED, 1);
GO
DBCC CHECKIDENT ('ThietBi', RESEED, 1);
GO
DBCC CHECKIDENT ('CumThietBi', RESEED, 1);
GO
DBCC CHECKIDENT ('ThongSoKT', RESEED, 1);
GO
DBCC CHECKIDENT ('LichSu', RESEED, 1);
GO
DBCC CHECKIDENT ('KeHoach', RESEED, 1);
GO

