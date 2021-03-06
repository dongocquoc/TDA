-- Script Date: 19/08/2020 10:06 CH  - ErikEJ.SqlCeScripting version 3.5.2.64
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

CREATE TABLE [DonVi] (
  [iMaDonVi] int IDENTITY (2,1) NOT NULL
, [sTenDonVi] nvarchar(100) NULL
, [sDiaChi] nvarchar(255) NULL
);
GO
CREATE TABLE [NhanVien] (
  [iMaNV] int IDENTITY (2,1) NOT NULL
, [sTenNV] nvarchar(25) NULL
, [sTaiKhoan] nvarchar(50) NULL
, [sMatKhau] nvarchar(50) NULL
, [sEmail] nvarchar(50) NULL
, [sChucVu] nvarchar(50) NULL
, [sPhongBan] nvarchar(50) NULL
, [iMaDonVi] int NULL
);
GO
CREATE TABLE [Chuyen] (
  [iMaChuyen] int IDENTITY (1,1) NOT NULL
, [sTenChuyen] nvarchar(50) NULL
, [iMaDonVi] int NULL
);
GO
CREATE TABLE [ThietBi] (
  [iMaThietBi] int IDENTITY (1,1) NOT NULL
, [sTenThietBi] nvarchar(100) NULL
, [iMaChuyen] int NULL
);
GO
CREATE TABLE [CumThietBi] (
  [iMaCum] int IDENTITY (1,1) NOT NULL
, [sTenCum] nvarchar(100) NULL
, [iMaThietBi] int NULL
);
GO
CREATE TABLE [ThongSoKT] (
  [iMaTSKT] int IDENTITY (1,1) NOT NULL
, [sThongSoKT] nvarchar(255) NULL
, [sDVT] nvarchar(50) NULL
, [iSoLuong] int NULL
, [iTTNCC] int NULL
, [iTTTT] int NULL
, [iTTDT] int NULL
, [iTTCL] int NULL
, [sHinh] nvarchar(255) NULL
, [iMaCum] int NULL
);
GO
CREATE TABLE [LichSu] (
  [iMaLS] int IDENTITY (1,1) NOT NULL
, [dNgay] datetime NULL
, [sNoiDung] nvarchar(255) NULL
, [sCachKhacPhuc] nvarchar(255) NULL
, [sGhiChu] nvarchar(255) NULL
, [bSuCo] bit NULL
, [iMaCum] int NULL
);
GO
CREATE TABLE [KeHoach] (
  [iMaKH] int IDENTITY (1,1) NOT NULL
, [dNgay] datetime NULL
, [sNoiDung] nvarchar(255) NULL
, [sTrangThai] nvarchar(100) NULL
, [iMaCum] int NULL
, [iMaThietBi] int NULL
);
GO
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
ALTER TABLE [DonVi] ADD CONSTRAINT [PK_DonVi] PRIMARY KEY ([iMaDonVi]);
GO
ALTER TABLE [NhanVien] ADD CONSTRAINT [PK_NhanVien] PRIMARY KEY ([iMaNV]);
GO
ALTER TABLE [Chuyen] ADD CONSTRAINT [PK_Chuyen] PRIMARY KEY ([iMaChuyen]);
GO
ALTER TABLE [ThietBi] ADD CONSTRAINT [PK_ThietBi] PRIMARY KEY ([iMaThietBi]);
GO
ALTER TABLE [CumThietBi] ADD CONSTRAINT [PK_CumThietBi] PRIMARY KEY ([iMaCum]);
GO
ALTER TABLE [ThongSoKT] ADD CONSTRAINT [PK_ThongSoKT] PRIMARY KEY ([iMaTSKT]);
GO
ALTER TABLE [LichSu] ADD CONSTRAINT [PK_LichSu] PRIMARY KEY ([iMaLS]);
GO
ALTER TABLE [KeHoach] ADD CONSTRAINT [PK_KeHoach] PRIMARY KEY ([iMaKH]);
GO
ALTER TABLE [NhanVien] ADD CONSTRAINT [FK_NhanVien] FOREIGN KEY ([iMaDonVi]) REFERENCES [DonVi]([iMaDonVi]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [Chuyen] ADD CONSTRAINT [FK_Chuyen] FOREIGN KEY ([iMaDonVi]) REFERENCES [DonVi]([iMaDonVi]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [ThietBi] ADD CONSTRAINT [FK_ThietBi] FOREIGN KEY ([iMaChuyen]) REFERENCES [Chuyen]([iMaChuyen]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [CumThietBi] ADD CONSTRAINT [FK_CumThietBi] FOREIGN KEY ([iMaThietBi]) REFERENCES [ThietBi]([iMaThietBi]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [ThongSoKT] ADD CONSTRAINT [FK_ThongSoKT] FOREIGN KEY ([iMaCum]) REFERENCES [CumThietBi]([iMaCum]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [LichSu] ADD CONSTRAINT [FK_LichSu] FOREIGN KEY ([iMaCum]) REFERENCES [CumThietBi]([iMaCum]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [KeHoach] ADD CONSTRAINT [FK_KeHoach] FOREIGN KEY ([iMaCum]) REFERENCES [CumThietBi]([iMaCum]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

