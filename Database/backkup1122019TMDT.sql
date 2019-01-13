/*
Navicat SQL Server Data Transfer

Source Server         : TMDT MOI
Source Server Version : 120000
Source Host           : baitapgiuaky1997.database.windows.net:1433
Source Database       : giuaKy
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 120000
File Encoding         : 65001

Date: 2019-01-12 16:14:30
*/


-- ----------------------------
-- Table structure for Account
-- ----------------------------
DROP TABLE [dbo].[Account]
GO
CREATE TABLE [dbo].[Account] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[username] nvarchar(100) NOT NULL ,
[password] nvarchar(450) NOT NULL ,
[isActive] bit NULL ,
[role] nvarchar(30) NULL ,
[isDelete] bit NULL ,
PRIMARY KEY ([username])
)


GO

-- ----------------------------
-- Indexes structure for table Account
-- ----------------------------

-- ----------------------------
-- Records of Account
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Account] ON
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO

-- ----------------------------
-- Table structure for Car
-- ----------------------------
DROP TABLE [dbo].[Car]
GO
CREATE TABLE [dbo].[Car] (
[Identity] int NOT NULL ,
[Id] varchar(100) NOT NULL ,
[name] nvarchar(100) NULL ,
[typeCar] nvarchar(100) NULL ,
[price] decimal(18) NULL ,
[color] nvarchar(100) NULL ,
[brank] nvarchar(100) NULL ,
[purchDate] datetime2(7) NULL ,
[description] nvarchar(1000) NULL ,
[IsDelete] bit NOT NULL ,
[imageLink] nvarchar(2000) NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Car
-- ----------------------------

-- ----------------------------
-- Records of Car
-- ----------------------------
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'10', N'CAMRY 2.5G', N'01', N'3000000', N'Xám đen', N'Bucket List, The', N'2019-01-13 00:00:00.0000000', N'Năng động mạnh mẽ', N'0', N'http://toyota-ansuong.com.vn/upload/images/5.%20Camry/Ngo%E1%BA%A1i%20th%E1%BA%A5t%20Camry.PNG')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'11', N'LUXURY (CVT)', N'02', N'2500000', N'Xám', N'Mr. & Mrs. Bridge', N'2019-01-13 00:00:00.0000000', N'Xứng tầm thượng lưu', N'0', N'http://toyota-ansuong.com.vn/upload/product/thu-vien-corolla-altis-1-9408.jpg')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'13', N'COROLLA ', N'01', N'1500000', N'Xám', N'Beachhead', N'2019-01-13 00:00:00.0000000', N'Xứng tầm thượng lưu', N'0', N'http://toyota-ansuong.com.vn/upload/product/thu-vien-corolla-altis-1-7418.jpg')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'14', N'COROLLA ALTIS ', N'02', N'1300000', N'Trắng', N'Trick', N'2019-01-13 00:00:00.0000000', N'An toàn tối ưu, 
vận hành êm ái', N'0', N'http://toyota-ansuong.com.vn/corolla-altis-18e-mt')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'17', N'HILUX 2.8 G 4X4 AT ', N'01', N'658319', N'Xám', N'Shake Hands with the Devil', N'2019-01-13 00:00:00.0000000', N'Uy thế tạo bản lĩnh', N'0', N'http://toyota-ansuong.com.vn/upload/product/toyota-hilux-1-3041.png')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'18', N'LAND CRUISER VX', N'01', N'8520000', N'Xám ', N'Twilight Saga: Eclipse, The', N'2019-01-13 00:00:00.0000000', N'Thống lĩnh 
mọi địa hình', N'0', N'http://toyota-ansuong.com.vn/upload/images/10.%20Cruiser/Toyota%20Land%20Cruiser%203.png')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'19', N'HIACE ', N'02', N'1200000', N'Xám', N'Wild Seven', N'2019-01-13 00:00:00.0000000', N'Tiềm năng sinh lợi 
Vượt mọi thước đo', N'0', N'http://toyota-ansuong.com.vn/upload/images/8.%20Hiace/Toyota%20Hiace%201.jpg')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'20', N'RUSH S 1.5AT', N'01', N'1450000', N'Nâu đất', N'I-See-You.Com', N'2019-01-13 00:00:00.0000000', N'Phong cách thời thượng', N'0', N'http://toyota-ansuong.com.vn/upload/images/11.Rush/Rush%206.PNG')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'21', N'Wave Alpha ', N'02', N'100000', N'Xanh', N'Zero 2', N'2019-01-13 00:00:00.0000000', N'Thiết kế mạnh mẽ', N'0', N'https://hondaxemay.com.vn/wp-content/uploads/2018/12/A_Blue_540x356_acf_cropped.jpg')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'24', N'Future 125cc', N'01', N'559921', N'Đỏ', N'Ed', N'2019-01-13 00:00:00.0000000', N'Thiết kế mới cao cấp và lịch lãm hơn ', N'0', N'https://hondaxemay.com.vn/san-pham/future-125cc/')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'25', N'Blade 110cc', N'02', N'333391', N'Đỏ', N'Trick or Treat', N'2019-01-13 00:00:00.0000000', N'Thanh thoát và Sắc nét', N'0', N'https://hondaxemay.com.vn/san-pham/blade-110cc/')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'27', N'SH 125cc/150cc', N'01', N'550000', N'Đen', N'Plain Dirty (a.k.a. Briar Patch)', N'2019-01-13 00:00:00.0000000', N'Phong cách thời thượng', N'0', N'https://hondaxemay.com.vn/wp-content/uploads/2018/12/150i_ABS_Matt-Black.jpg')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'28', N'GTIAir Blade ', N'01', N'415000', N'Đen', N'Outrageous Fortune', N'2019-01-13 00:00:00.0000000', N'Bừng khí chất', N'0', N'https://hondaxemay.com.vn/wp-content/uploads/2018/11/800x525_xamden.png')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'29', N'PCX HYBRID', N'02', N'1000000', N'Xanh đen', N'Suomisen Olli yllättää', N'2019-01-13 00:00:00.0000000', N'Phong cách cuốn hút', N'0', N'https://hondaxemay.com.vn/wp-content/uploads/2018/08/800x525-01-2.png')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'3', N'FORTUNER 2.4', N'01', N'1500000', N'Đen', N'Fist of Legend (Jing wu ying xiong)', N'2019-01-13 00:00:00.0000000', N'Mạnh mẽ đầy cuốn hút', N'0', N'http://toyota-ansuong.com.vn/upload/images/1.%20Fortuner/FK/Ngo%E1%BA%A1i%20th%E1%BA%A5t%20FK/Ngo%E1%BA%A1i%20th%E1%BA%A5t%20FK.png')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'30', N'VISION 110cc', N'01', N'210000', N'Trắng', N'Casino Royale', N'2019-01-13 00:00:00.0000000', N'Nhỏ gọn lịch lãm', N'0', N'https://hondaxemay.com.vn/wp-content/uploads/2018/10/800x525_trangcaocap-1.png')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'32', N'LEAD 125cc', N'02', N'382344', N'Đỏ', N'Lizard, The (Marmoulak)', N'2019-01-13 00:00:00.0000000', N'Tôn vinh nét đẹp tinh tế', N'0', N'http://vnmedia.vn/dataimages/201806/original/f-2183025.jpg')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'33', N'PCX 125cc/150cc', N'01', N'383526', N'Đen bóng', N'Cyrano de Bergerac', N'2019-01-13 00:00:00.0000000', N'Phong cách lịch lãm', N'0', N'https://hondaxemay.com.vn/wp-content/uploads/2017/12/Black-Matte-01-1.png')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'34', N'WINNER 150cc', N'02', N'627756', N'Xanh dương', N'Cabin Fever 2: Spring Fever', N'2019-01-13 00:00:00.0000000', N'Điểm sắc vàng thêm đẳng cấp', N'0', N'https://hondaxemay.com.vn/wp-content/uploads/2017/11/Blue-White-2.png')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'36', N'MSX 125cc', N'01', N'674550', N'Xanh đen', N'Caligula', N'2019-01-13 00:00:00.0000000', N'Khoe chất riêng cũng phải ngầu', N'0', N'https://hondaxemay.com.vn/wp-content/uploads/2018/06/800x525_Xanh-la-Den-1.png')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'37', N'Gold Wing', N'02', N'8082221', N'Trắng đỏ', N'True Heart Susie', N'2019-01-13 00:00:00.0000000', N'Dẫn lỗi phong cách', N'0', N'https://hondaxemay.com.vn/hondamoto/public/uploads/products/feature-overview5.jpg')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'38', N'CBR1000RR', N'01', N'7569803', N'Đỏ', N'Great Muppet Caper, The', N'2019-01-13 00:00:00.0000000', N'Tiếng gọi nơi chân trời mới', N'0', N'https://hondaxemay.com.vn/hondamoto/public/uploads/gallery/05-bg-1920.jpg')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'39', N'CB1000R', N'01', N'5161114', N'Bạc ', N'Finding Fela!', N'2019-01-13 00:00:00.0000000', N'Sức hút mãnh liệt', N'0', N'https://hondaxemay.com.vn/hondamoto/public/uploads/gallery/bg-192011.jpg')
GO
GO
INSERT INTO [dbo].[Car] ([Identity], [Id], [name], [typeCar], [price], [color], [brank], [purchDate], [description], [IsDelete], [imageLink]) VALUES (N'0', N'40', N'RAIDER R150 FI', N'02', N'3106368', N'Đen đỏ', N'Inside Deep Throat', N'2019-01-13 00:00:00.0000000', N'Sẵn sàng chinh phục cuộc chơi', N'0', N'https://www.suzuki.com.vn/images/Raider/UpdateSep2018/raider-thumb.jpg')
GO
GO

-- ----------------------------
-- Table structure for Car_Feature
-- ----------------------------
DROP TABLE [dbo].[Car_Feature]
GO
CREATE TABLE [dbo].[Car_Feature] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[idCar] varchar(100) NOT NULL ,
[idFeature] varchar(100) NOT NULL ,
[IsDelete] bit NOT NULL ,
[Id] nvarchar(450) NOT NULL ,
PRIMARY KEY ([idCar], [idFeature], [Id])
)


GO

-- ----------------------------
-- Indexes structure for table Car_Feature
-- ----------------------------

-- ----------------------------
-- Records of Car_Feature
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Car_Feature] ON
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'2', N'1', N'10', N'0', N'2')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'3', N'1', N'2', N'0', N'3')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'4', N'1', N'3', N'0', N'4')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'5', N'1', N'4', N'0', N'5')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'7', N'1', N'5', N'0', N'6')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'9', N'1', N'6', N'0', N'7')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'10', N'1', N'7', N'0', N'8')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'11', N'1', N'8', N'0', N'9')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'12', N'1', N'9', N'0', N'10')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'88', N'10', N'1', N'0', N'78')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'95', N'10', N'2', N'0', N'78')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'89', N'10', N'2', N'0', N'79')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'96', N'10', N'3', N'0', N'79')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'90', N'10', N'3', N'0', N'80')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'97', N'10', N'4', N'0', N'80')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'91', N'10', N'4', N'0', N'81')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'98', N'10', N'5', N'0', N'81')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'92', N'10', N'5', N'0', N'82')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'99', N'10', N'6', N'0', N'82')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'100', N'10', N'7', N'0', N'83')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'104', N'10', N'8', N'0', N'84')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'94', N'11', N'2', N'0', N'77')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'78', N'11', N'3', N'0', N'68')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'70', N'11', N'4', N'0', N'60')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'109', N'11', N'5', N'0', N'88')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'110', N'11', N'6', N'0', N'89')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'111', N'11', N'7', N'0', N'90')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'105', N'12', N'2', N'0', N'85')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'107', N'12', N'3', N'0', N'86')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'108', N'12', N'4', N'0', N'87')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'115', N'12', N'5', N'0', N'92')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'113', N'12', N'6', N'0', N'91')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'116', N'12', N'8', N'0', N'93')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'125', N'13', N'10', N'0', N'102')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'117', N'13', N'2', N'0', N'94')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'118', N'13', N'3', N'0', N'95')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'119', N'13', N'4', N'0', N'96')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'120', N'13', N'5', N'0', N'97')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'121', N'13', N'6', N'0', N'98')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'122', N'13', N'7', N'0', N'99')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'123', N'13', N'8', N'0', N'100')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'124', N'13', N'9', N'0', N'101')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'126', N'14', N'2', N'0', N'103')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'127', N'14', N'3', N'0', N'104')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'128', N'14', N'4', N'0', N'105')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'129', N'15', N'5', N'0', N'106')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'130', N'15', N'6', N'0', N'107')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'131', N'15', N'7', N'0', N'108')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'132', N'15', N'8', N'0', N'109')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'133', N'15', N'9', N'0', N'110')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'134', N'16', N'2', N'0', N'111')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'135', N'16', N'3', N'0', N'112')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'136', N'16', N'4', N'0', N'113')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'137', N'16', N'5', N'0', N'114')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'138', N'16', N'6', N'0', N'115')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'139', N'16', N'7', N'0', N'116')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'140', N'16', N'8', N'0', N'117')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'141', N'16', N'9', N'0', N'118')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'151', N'17', N'10', N'0', N'127')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'142', N'17', N'2', N'0', N'119')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'143', N'17', N'3', N'0', N'120')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'144', N'17', N'4', N'0', N'121')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'145', N'17', N'5', N'0', N'122')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'146', N'17', N'6', N'0', N'123')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'147', N'17', N'7', N'0', N'124')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'148', N'17', N'8', N'0', N'125')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'150', N'17', N'9', N'0', N'126')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'152', N'18', N'2', N'0', N'128')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'153', N'18', N'3', N'0', N'129')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'154', N'18', N'4', N'0', N'130')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'155', N'18', N'5', N'0', N'131')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'156', N'18', N'6', N'0', N'132')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'157', N'18', N'7', N'0', N'133')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'158', N'19', N'1', N'0', N'134')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'166', N'19', N'10', N'0', N'142')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'159', N'19', N'3', N'0', N'135')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'160', N'19', N'4', N'0', N'136')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'161', N'19', N'5', N'0', N'137')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'162', N'19', N'6', N'0', N'138')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'163', N'19', N'7', N'0', N'139')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'164', N'19', N'8', N'0', N'140')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'165', N'19', N'9', N'0', N'141')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'22', N'2', N'10', N'0', N'20')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'14', N'2', N'2', N'0', N'12')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'15', N'2', N'3', N'0', N'13')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'16', N'2', N'4', N'0', N'14')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'17', N'2', N'5', N'0', N'15')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'18', N'2', N'6', N'0', N'16')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'19', N'2', N'7', N'0', N'17')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'20', N'2', N'8', N'0', N'18')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'21', N'2', N'9', N'0', N'19')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'176', N'20', N'10', N'0', N'151')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'167', N'20', N'2', N'0', N'143')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'169', N'20', N'3', N'0', N'144')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'170', N'20', N'4', N'0', N'145')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'171', N'20', N'5', N'0', N'146')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'172', N'20', N'6', N'0', N'147')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'173', N'20', N'7', N'0', N'148')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'174', N'20', N'8', N'0', N'149')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'175', N'20', N'9', N'0', N'150')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'24', N'3', N'2', N'0', N'22')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'27', N'3', N'3', N'0', N'23')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'30', N'3', N'4', N'0', N'24')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'31', N'3', N'5', N'0', N'25')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'32', N'3', N'6', N'0', N'26')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'33', N'3', N'7', N'0', N'27')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'35', N'4', N'2', N'0', N'29')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'36', N'4', N'3', N'0', N'30')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'38', N'4', N'4', N'0', N'31')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'39', N'4', N'5', N'0', N'32')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'40', N'4', N'6', N'0', N'33')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'41', N'4', N'7', N'0', N'34')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'43', N'4', N'8', N'0', N'35')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'44', N'4', N'9', N'0', N'36')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'54', N'5', N'10', N'0', N'46')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'46', N'5', N'2', N'0', N'38')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'47', N'5', N'3', N'0', N'39')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'48', N'5', N'4', N'0', N'40')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'49', N'5', N'5', N'0', N'41')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'50', N'5', N'6', N'0', N'42')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'51', N'5', N'7', N'0', N'43')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'52', N'5', N'8', N'0', N'44')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'53', N'5', N'9', N'0', N'45')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'66', N'6', N'10', N'0', N'56')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'56', N'6', N'2', N'0', N'48')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'57', N'6', N'3', N'0', N'49')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'58', N'6', N'4', N'0', N'50')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'59', N'6', N'5', N'0', N'51')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'60', N'6', N'6', N'0', N'52')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'63', N'6', N'7', N'0', N'53')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'64', N'6', N'8', N'0', N'54')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'65', N'6', N'9', N'0', N'55')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'13', N'7', N'10', N'0', N'11')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'68', N'7', N'2', N'0', N'58')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'67', N'7', N'3', N'0', N'57')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'55', N'7', N'4', N'0', N'47')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'45', N'7', N'5', N'0', N'37')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'34', N'7', N'6', N'0', N'28')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'23', N'7', N'7', N'0', N'21')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'69', N'7', N'8', N'0', N'59')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'1', N'7', N'9', N'0', N'1')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'71', N'8', N'2', N'0', N'61')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'72', N'8', N'3', N'0', N'62')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'73', N'8', N'4', N'0', N'63')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'74', N'8', N'5', N'0', N'64')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'75', N'8', N'6', N'0', N'65')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'76', N'8', N'7', N'0', N'66')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'77', N'8', N'9', N'0', N'67')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'87', N'9', N'10', N'0', N'77')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'79', N'9', N'2', N'0', N'69')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'80', N'9', N'3', N'0', N'70')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'81', N'9', N'4', N'0', N'71')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'82', N'9', N'5', N'0', N'72')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'83', N'9', N'6', N'0', N'73')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'84', N'9', N'7', N'0', N'74')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'85', N'9', N'8', N'0', N'75')
GO
GO
INSERT INTO [dbo].[Car_Feature] ([Identity], [idCar], [idFeature], [IsDelete], [Id]) VALUES (N'86', N'9', N'9', N'0', N'76')
GO
GO
SET IDENTITY_INSERT [dbo].[Car_Feature] OFF
GO

-- ----------------------------
-- Table structure for Customer
-- ----------------------------
DROP TABLE [dbo].[Customer]
GO
CREATE TABLE [dbo].[Customer] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[fistNameAndLastName] nvarchar(300) NULL ,
[phoneNumber] nvarchar(100) NULL ,
[Email] nvarchar(300) NULL ,
[IsDelete] bit NOT NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Customer
-- ----------------------------

-- ----------------------------
-- Records of Customer
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Customer] ON
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'296', N'1', N'Nguyễn Phúc Thịnh', N'01677780492', N'nguyenphucthinhdh15dt@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'305', N'10', N'Trần Thị Thanh Nga', N'034578669', N'ngattt@.hcmuaf.edu.vn', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'306', N'11', N'Trần Ngọc Nam', N'0385426756', N'ongcuchonggayvn@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'308', N'12', N'Phạm Văn Cảnh', N'032567899', N'vancanh@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'297', N'2', N'Trần Ngọc Cường', N'0971183697', N'trancuong010297@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'298', N'3', N'Phan Đức Anh', N'0971183796', N'phanducanh@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'299', N'4', N'Nguyễn Lê Phong', N'0985490107', N'nguyenlephong@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'300', N'5', N'Nguyễn Hữu Tài', N'0961152698', N'hutaiit@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'301', N'6', N'Huỳnh Phước Ngà', N'0968122356', N'phuocngait@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'302', N'7', N'Trần Minh Tuấn', N'034222886', N'tranminhtuan@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'303', N'8', N'Nguyễn Đức Mạnh', N'0978555234', N'manh@gmail.com', N'0')
GO
GO
INSERT INTO [dbo].[Customer] ([Identity], [Id], [fistNameAndLastName], [phoneNumber], [Email], [IsDelete]) VALUES (N'304', N'9', N'Nguyễn Văn Huỳnh', N'0323123113', N'huynhvan@gmail.com', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO

-- ----------------------------
-- Table structure for Customer_Car
-- ----------------------------
DROP TABLE [dbo].[Customer_Car]
GO
CREATE TABLE [dbo].[Customer_Car] (
[Id] nvarchar(450) NULL ,
[idCustomer] varchar(100) NOT NULL ,
[idCar] varchar(100) NOT NULL ,
[Description] nvarchar(500) NULL ,
[PaymentsCustomer] nvarchar(300) NULL ,
[DateOfHire] datetime2(7) NULL ,
[CarRepaired] datetime2(7) NULL ,
[IsDelete] bit NULL ,
[Identity] int NOT NULL IDENTITY(1,1) ,
PRIMARY KEY ([idCustomer], [idCar])
)


GO

-- ----------------------------
-- Indexes structure for table Customer_Car
-- ----------------------------

-- ----------------------------
-- Records of Customer_Car
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Customer_Car] ON
GO
INSERT INTO [dbo].[Customer_Car] ([Id], [idCustomer], [idCar], [Description], [PaymentsCustomer], [DateOfHire], [CarRepaired], [IsDelete], [Identity]) VALUES (N'588a795b-3833-4118-a52f-b8510fe61af9', N'1', N'1', N'Khách thuê xe  lâu dài', N'Thanh toán qua thẻ tín dụng', N'2018-12-24 18:22:00.1840000', N'2018-12-25 18:22:02.5160000', N'0', N'3')
GO
GO
INSERT INTO [dbo].[Customer_Car] ([Id], [idCustomer], [idCar], [Description], [PaymentsCustomer], [DateOfHire], [CarRepaired], [IsDelete], [Identity]) VALUES (N'8df6c0d4-0eff-47fb-9949-e3bc9fead869', N'2', N'2', N'Khách thuê xe nhieu lan', N'Thanh toán qua thẻ tín dụng', N'2018-12-25 18:24:34.5060000', N'2018-12-25 18:24:36.6450000', N'0', N'4')
GO
GO
INSERT INTO [dbo].[Customer_Car] ([Id], [idCustomer], [idCar], [Description], [PaymentsCustomer], [DateOfHire], [CarRepaired], [IsDelete], [Identity]) VALUES (N'3', N'3', N'3', N'Khách nuoc ngoai', N'Trực tiếp', N'2019-01-05 14:36:45.0000000', N'2019-01-06 14:36:50.0000000', N'0', N'8')
GO
GO
INSERT INTO [dbo].[Customer_Car] ([Id], [idCustomer], [idCar], [Description], [PaymentsCustomer], [DateOfHire], [CarRepaired], [IsDelete], [Identity]) VALUES (N'4', N'4', N'4', N'khach quoc te', N'Trực tiếp', N'2019-01-01 14:38:08.0000000', N'2019-01-02 14:38:13.0000000', N'0', N'9')
GO
GO
INSERT INTO [dbo].[Customer_Car] ([Id], [idCustomer], [idCar], [Description], [PaymentsCustomer], [DateOfHire], [CarRepaired], [IsDelete], [Identity]) VALUES (N'5', N'5', N'5', N'Khách vui tính ', N'Chuyển khoảng', N'2019-02-08 14:41:41.0000000', N'2019-03-09 14:41:47.0000000', N'0', N'10')
GO
GO
INSERT INTO [dbo].[Customer_Car] ([Id], [idCustomer], [idCar], [Description], [PaymentsCustomer], [DateOfHire], [CarRepaired], [IsDelete], [Identity]) VALUES (N'6', N'6', N'6', N'Xe bị hư định vị', N'Thanh toán bằng chuyển khoản', N'2018-12-31 14:42:38.0000000', N'2019-01-01 14:42:43.0000000', N'0', N'11')
GO
GO
INSERT INTO [dbo].[Customer_Car] ([Id], [idCustomer], [idCar], [Description], [PaymentsCustomer], [DateOfHire], [CarRepaired], [IsDelete], [Identity]) VALUES (N'7', N'7', N'7', N'Xe bị trầy nhẹ ở xi nhan', N'Trực tiếp', N'2019-01-13 14:43:16.0000000', N'2019-01-16 14:43:21.0000000', N'0', N'12')
GO
GO
INSERT INTO [dbo].[Customer_Car] ([Id], [idCustomer], [idCar], [Description], [PaymentsCustomer], [DateOfHire], [CarRepaired], [IsDelete], [Identity]) VALUES (N'12fe92bc-3597-4b6f-bc5d-9dd403c09ce2', N'id bang customer', N'id bang car', N'string', N'Trực tiếp', N'2018-11-16 18:31:43.6080000', N'2018-11-16 18:31:43.6080000', N'1', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[Customer_Car] OFF
GO

-- ----------------------------
-- Table structure for Feature
-- ----------------------------
DROP TABLE [dbo].[Feature]
GO
CREATE TABLE [dbo].[Feature] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[nameFeature] nvarchar(100) NULL ,
[description] nvarchar(500) NULL ,
[IsDelete] bit NOT NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Feature
-- ----------------------------

-- ----------------------------
-- Records of Feature
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Feature] ON
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'48', N'1', N'6 Chỗ', N'chỗ ngồi ', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'62', N'10', N'Túi Khí', N'Khi có va chạm túi khí sẽ bung ra giúp người  lái xe an toàn không bị va đập mạnh', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'63', N'11', N'16 Chỗ', N'Chỗ ngồi', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'51', N'2', N'4 Chỗ', N'chỗ ngồi', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'52', N'3', N'A/C', N'Điều hoà (A/C)', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'53', N'4', N'GPS', N'Định vị ', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'54', N'5', N'Bluetooth', N'Bluetooth', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'56', N'6', N'USB', N'Khe cắm USB', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'58', N'7', N'Cảm biến', N'Cảm biến sau xe', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'59', N'8', N'Camera', N'Camera hành trình', N'0')
GO
GO
INSERT INTO [dbo].[Feature] ([Identity], [Id], [nameFeature], [description], [IsDelete]) VALUES (N'61', N'9', N'CVT', N'Hộp số tự động vô cấp', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[Feature] OFF
GO

-- ----------------------------
-- Table structure for Feature_Package
-- ----------------------------
DROP TABLE [dbo].[Feature_Package]
GO
CREATE TABLE [dbo].[Feature_Package] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[name] nvarchar(100) NULL ,
[description] nvarchar(100) NULL ,
[IsDelete] bit NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Feature_Package
-- ----------------------------

-- ----------------------------
-- Records of Feature_Package
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Feature_Package] ON
GO
INSERT INTO [dbo].[Feature_Package] ([Identity], [Id], [name], [description], [IsDelete]) VALUES (N'213', N'1', N'Gói dùng thử', N'Sử dụng trong vòng 10 ngày, chỉ được đăng 1 xe.', N'1')
GO
GO
INSERT INTO [dbo].[Feature_Package] ([Identity], [Id], [name], [description], [IsDelete]) VALUES (N'214', N'2', N'Gói 1 tuần', N'Sử dụng trong vòng 7 ngày, chỉ được đăng 1 xe', N'1')
GO
GO
INSERT INTO [dbo].[Feature_Package] ([Identity], [Id], [name], [description], [IsDelete]) VALUES (N'215', N'3', N'Gói 1 tháng', N'Sử dụng trong 30 ngày, được đăng 2 xe', N'1')
GO
GO
INSERT INTO [dbo].[Feature_Package] ([Identity], [Id], [name], [description], [IsDelete]) VALUES (N'216', N'4', N'Gói 3 tháng ', N'Sử dụng trong vòng 90 ngày, được đăng 2 xe', N'1')
GO
GO
INSERT INTO [dbo].[Feature_Package] ([Identity], [Id], [name], [description], [IsDelete]) VALUES (N'217', N'5', N'Gói 1 năm', N'Sử dụng trong vòng 365 ngày, không giới hạn số xe đăng ', N'1')
GO
GO
INSERT INTO [dbo].[Feature_Package] ([Identity], [Id], [name], [description], [IsDelete]) VALUES (N'218', N'6', N'Gói 3 năm ', N'Sử dụng trong 1095 ngày, không giới hạn số xe đăng', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[Feature_Package] OFF
GO

-- ----------------------------
-- Table structure for Location
-- ----------------------------
DROP TABLE [dbo].[Location]
GO
CREATE TABLE [dbo].[Location] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[city] nvarchar(100) NULL ,
[country] nvarchar(100) NULL ,
[address] nvarchar(100) NULL ,
[IsDelete] bit NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Location
-- ----------------------------

-- ----------------------------
-- Records of Location
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Location] ON
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'30', N'1', N'Ninh Thuận', N'Việt Nam.', N'an xuân -xuân hải-ninh hải-ninh thuận', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'39', N'10', N'TP.Hồ Chí Minh', N'Việt Nam', N'Lô 126, đường Số 7A – Phường An Phú – Quận 2 – Tp. Hồ Chí Minh', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'40', N'11', N'TP.Hồ Chí Minh', N'Việt Nam', N'
783, Tân kỳ tân quý, Phường 7, Quận Bình , Tp. Hồ Chí Minh', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'41', N'12', N'TP.Hồ Chí Minh', N'Việt Nam', N'720,Lê Văn Quới, phường 7 quận Bình Tân, TP.Hồ Chí Minh', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'43', N'13', N'TP.Hồ Chí Minh', N'Việt Nam', N'128 Khuong Viet Street, Phu Trung Ward, Tan Phu District, Phú Trung, Tân Phú, Hồ Chí Minh, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'45', N'14', N'TP.Hồ Chí Minh', N'Việt Nam', N'QV Phú Trung, Tân Phú, Hồ Chí Minh', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'47', N'15', N'Bình Dương', N'Việt Nam', N'Số 7 đường số 1 Tx. Dĩ An, Bình Dương, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'48', N'16', N'Bình Dương', N'Việt Nam', N'1/47 Bình Đường 1, An Bình, Dĩ An, Bình Dương, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'49', N'17', N'Bình Dương', N'Việt Nam', N'Khu phố 4, An Bình, Tx. Dĩ An, Bình Dương, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'50', N'18', N'Bình Dương', N'Việt Nam', N'110 Quốc lộ 1K, Đông Hoà, Dĩ An, Bình Dương, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'51', N'19', N'Đà Nẵng', N'Việt Nam', N'38 Nguyễn Hữu Thọ, Hải Châu, Tp. Đà Nẵng', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'31', N'2', N'TP.Hồ Chí Minh', N'Việt Nam', N'Linh Trung- Thủ Đức- TP.HCM', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'53', N'20', N'Đà Nẵng', N'Việt Nam', N'Hải Châu, Đà Nẵng 550000, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'32', N'23', N'TP.Hồ Chí Minh', N'Việt Nam', N'1190 Phạm Văn Đồng Linh Đông
Thủ Đức
Hồ Chí Minh
Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'33', N'24', N'TP.Hồ Chí Minh', N'Việt Nam', N'360 Phan Văn Trị, Phường 11, Bình Thạnh, Hồ Chí Minh, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'34', N'25', N'TP.Hồ Chí Minh', N'Việt Nam ', N'220 Đường Nguyễn Văn Tạo, Long Thới, Nhà Bè, Hồ Chí Minh, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'35', N'26', N'TP.Hồ Chí Minh', N'Việt Nam ', N'153 Huỳnh Mẫn Đạt, Phường 8, Quận 5, Hồ Chí Minh, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'36', N'27', N'TP.Hồ Chí Minh', N'Việt Nam', N'170 Lê Văn Khương, Tân Thới An, Quận 12, Hồ Chí Minh, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'37', N'28', N'TP.Hồ Chí Minh', N'Việt Nam', N'218/42 Lê Thị Riêng, Tân Thới An, Quận 12, Hồ Chí Minh, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'38', N'29', N'TP.Hồ Chí Minh', N'Việt Nam', N'333 Nguyễn Văn Công, Phường 15, Gò Vấp, Hồ Chí Minh, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'56', N'30', N'Phú Quốc', N'Việt Nam ', N'ấp Gành Gió, Xã Cửa Dương, Huyện Phú Quốc, Tỉnh Kiên Giang', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'57', N'31', N'Phú Quốc ', N'Việt Nam', N'Gành Dầu, Tp. Phú Quốc, tỉnh Kiên Giang, Việt Nam', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'58', N'32', N'Nha Trang', N'Việt Nam', N'15c Hoàng Hoa Thám, phường Lộc Thợ, thành phố Nha Trang', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'59', N'33', N'Nha Trang', N'Việt Nam', N'8A Lý Tự Trọng - Nha Trang', N'0')
GO
GO
INSERT INTO [dbo].[Location] ([Identity], [Id], [city], [country], [address], [IsDelete]) VALUES (N'60', N'34', N'Phú Quốc', N'Việt Nam', N'324P+67 tt. An Thới, Tp. Phú Quốc, tỉnh Kiên Giang, Việt Nam', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[Location] OFF
GO

-- ----------------------------
-- Table structure for Orders
-- ----------------------------
DROP TABLE [dbo].[Orders]
GO
CREATE TABLE [dbo].[Orders] (
[Identity] int NOT NULL ,
[Id] varchar(100) NOT NULL ,
[nameCustomer] nvarchar(100) NULL ,
[nameCar] nvarchar(100) NULL ,
[priceOrder] decimal(18) NULL ,
[dateOrder] datetime2(7) NULL ,
[dateOfhire] datetime2(7) NULL ,
[payDate] datetime2(7) NULL ,
[locationReceive] nvarchar(100) NULL ,
[IsDelete] bit NOT NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Orders
-- ----------------------------

-- ----------------------------
-- Records of Orders
-- ----------------------------
INSERT INTO [dbo].[Orders] ([Identity], [Id], [nameCustomer], [nameCar], [priceOrder], [dateOrder], [dateOfhire], [payDate], [locationReceive], [IsDelete]) VALUES (N'1', N'1', N'1', N'1', N'10000', N'2019-01-11 12:29:28.0000000', N'2019-01-13 12:29:36.0000000', N'2019-01-10 12:29:43.0000000', N'HCM', N'0')
GO
GO
INSERT INTO [dbo].[Orders] ([Identity], [Id], [nameCustomer], [nameCar], [priceOrder], [dateOrder], [dateOfhire], [payDate], [locationReceive], [IsDelete]) VALUES (N'10', N'10', N'10', N'10', N'3000000', N'2019-02-01 12:02:51.0000000', N'2019-02-02 12:03:02.0000000', N'2019-02-02 12:03:07.0000000', N'Phú Quốc', N'0')
GO
GO
INSERT INTO [dbo].[Orders] ([Identity], [Id], [nameCustomer], [nameCar], [priceOrder], [dateOrder], [dateOfhire], [payDate], [locationReceive], [IsDelete]) VALUES (N'3', N'3', N'3', N'03', N'1500000', N'2019-01-12 11:39:17.0000000', N'2019-01-13 11:39:23.0000000', N'2019-01-12 11:39:31.0000000', N'HCM', N'0')
GO
GO
INSERT INTO [dbo].[Orders] ([Identity], [Id], [nameCustomer], [nameCar], [priceOrder], [dateOrder], [dateOfhire], [payDate], [locationReceive], [IsDelete]) VALUES (N'4', N'4', N'4', N'04', N'2000000', N'2019-01-16 11:47:51.0000000', N'2019-01-17 11:47:57.0000000', N'2019-01-16 11:48:02.0000000', N'Đà Nẵng', N'0')
GO
GO
INSERT INTO [dbo].[Orders] ([Identity], [Id], [nameCustomer], [nameCar], [priceOrder], [dateOrder], [dateOfhire], [payDate], [locationReceive], [IsDelete]) VALUES (N'5', N'5', N'5', N'05', N'3000000', N'2019-01-25 11:53:50.0000000', N'2019-01-26 11:53:58.0000000', N'2019-01-25 11:54:02.0000000', N'HCM', N'0')
GO
GO
INSERT INTO [dbo].[Orders] ([Identity], [Id], [nameCustomer], [nameCar], [priceOrder], [dateOrder], [dateOfhire], [payDate], [locationReceive], [IsDelete]) VALUES (N'6', N'6', N'6', N'06', N'1500000', N'2019-01-11 11:54:43.0000000', N'2019-01-12 11:54:51.0000000', N'2019-01-11 11:54:59.0000000', N'Đà Nẵng', N'0')
GO
GO
INSERT INTO [dbo].[Orders] ([Identity], [Id], [nameCustomer], [nameCar], [priceOrder], [dateOrder], [dateOfhire], [payDate], [locationReceive], [IsDelete]) VALUES (N'7', N'7', N'7', N'07', N'700000', N'2019-01-09 11:59:36.0000000', N'2019-01-10 11:59:42.0000000', N'2019-01-10 11:59:52.0000000', N'Nha Trang', N'0')
GO
GO
INSERT INTO [dbo].[Orders] ([Identity], [Id], [nameCustomer], [nameCar], [priceOrder], [dateOrder], [dateOfhire], [payDate], [locationReceive], [IsDelete]) VALUES (N'8', N'8', N'8', N'08', N'650000', N'2019-01-01 12:00:55.0000000', N'2019-01-02 12:01:00.0000000', N'2019-01-01 12:01:06.0000000', N'Bình Phước', N'0')
GO
GO
INSERT INTO [dbo].[Orders] ([Identity], [Id], [nameCustomer], [nameCar], [priceOrder], [dateOrder], [dateOfhire], [payDate], [locationReceive], [IsDelete]) VALUES (N'9', N'9', N'9', N'09', N'3500000', N'2019-01-27 12:01:56.0000000', N'2019-01-28 12:02:01.0000000', N'2019-01-29 12:02:13.0000000', N'HCM', N'0')
GO
GO

-- ----------------------------
-- Table structure for Package
-- ----------------------------
DROP TABLE [dbo].[Package]
GO
CREATE TABLE [dbo].[Package] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[name] nvarchar(100) NULL ,
[price] money NULL ,
[IsDelete] bit NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Package
-- ----------------------------

-- ----------------------------
-- Records of Package
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Package] ON
GO
INSERT INTO [dbo].[Package] ([Identity], [Id], [name], [price], [IsDelete]) VALUES (N'15', N'1', N'1', N'100000.0000', N'0')
GO
GO
INSERT INTO [dbo].[Package] ([Identity], [Id], [name], [price], [IsDelete]) VALUES (N'19', N'2', N'30', N'200000.0000', N'0')
GO
GO
INSERT INTO [dbo].[Package] ([Identity], [Id], [name], [price], [IsDelete]) VALUES (N'12', N'3', N'365', N'500000.0000', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[Package] OFF
GO

-- ----------------------------
-- Table structure for Package_FeaturePackage
-- ----------------------------
DROP TABLE [dbo].[Package_FeaturePackage]
GO
CREATE TABLE [dbo].[Package_FeaturePackage] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[idPackage] varchar(100) NOT NULL ,
[idFeaturePackage] varchar(100) NOT NULL ,
[Name] nvarchar(300) NULL ,
[IsDelete] bit NULL ,
[Id] nvarchar(450) NOT NULL ,
PRIMARY KEY ([idPackage], [idFeaturePackage], [Id])
)


GO

-- ----------------------------
-- Indexes structure for table Package_FeaturePackage
-- ----------------------------

-- ----------------------------
-- Records of Package_FeaturePackage
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Package_FeaturePackage] ON
GO
INSERT INTO [dbo].[Package_FeaturePackage] ([Identity], [idPackage], [idFeaturePackage], [Name], [IsDelete], [Id]) VALUES (N'1', N'1', N'1', N'', N'0', N'1')
GO
GO
INSERT INTO [dbo].[Package_FeaturePackage] ([Identity], [idPackage], [idFeaturePackage], [Name], [IsDelete], [Id]) VALUES (N'2', N'2', N'2', null, N'0', N'1')
GO
GO
INSERT INTO [dbo].[Package_FeaturePackage] ([Identity], [idPackage], [idFeaturePackage], [Name], [IsDelete], [Id]) VALUES (N'3', N'3', N'3', null, N'0', N'1')
GO
GO
INSERT INTO [dbo].[Package_FeaturePackage] ([Identity], [idPackage], [idFeaturePackage], [Name], [IsDelete], [Id]) VALUES (N'4', N'4', N'4', null, N'0', N'1')
GO
GO
INSERT INTO [dbo].[Package_FeaturePackage] ([Identity], [idPackage], [idFeaturePackage], [Name], [IsDelete], [Id]) VALUES (N'5', N'5', N'5', null, N'0', N'1')
GO
GO
INSERT INTO [dbo].[Package_FeaturePackage] ([Identity], [idPackage], [idFeaturePackage], [Name], [IsDelete], [Id]) VALUES (N'6', N'6', N'6', null, N'0', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[Package_FeaturePackage] OFF
GO

-- ----------------------------
-- Table structure for Partner
-- ----------------------------
DROP TABLE [dbo].[Partner]
GO
CREATE TABLE [dbo].[Partner] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[nameCompany] nvarchar(100) NULL ,
[email] nvarchar(100) NULL ,
[phoneNumber] nvarchar(100) NULL ,
[partnerPayment] nvarchar(100) NULL ,
[IsDelete] bit NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Partner
-- ----------------------------

-- ----------------------------
-- Records of Partner
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Partner] ON
GO
INSERT INTO [dbo].[Partner] ([Identity], [Id], [nameCompany], [email], [phoneNumber], [partnerPayment], [IsDelete]) VALUES (N'1169', N'1', N'Công ty TNHH Long Khánhh', N'longkhanh@gmail.com', N'01688800421', N'online', N'0')
GO
GO
INSERT INTO [dbo].[Partner] ([Identity], [Id], [nameCompany], [email], [phoneNumber], [partnerPayment], [IsDelete]) VALUES (N'1170', N'2', N'Công ty TNHH Đức Anh', N'anhdeptrai@gmail.com', N'0981878012', N'tienmat', N'0')
GO
GO
INSERT INTO [dbo].[Partner] ([Identity], [Id], [nameCompany], [email], [phoneNumber], [partnerPayment], [IsDelete]) VALUES (N'1171', N'3', N'Công ty TNHH Phúc Thịnh', N'anhdeptrai@gmail.com', N'0985742154', N'online', N'0')
GO
GO
INSERT INTO [dbo].[Partner] ([Identity], [Id], [nameCompany], [email], [phoneNumber], [partnerPayment], [IsDelete]) VALUES (N'1172', N'4', N'Công ty TNHH Ngọc Cường', N'trancuong010297@gmail.com', N'0982451722', N'tienmat', N'0')
GO
GO
INSERT INTO [dbo].[Partner] ([Identity], [Id], [nameCompany], [email], [phoneNumber], [partnerPayment], [IsDelete]) VALUES (N'1173', N'5', N'Công ty TNHH Lê Phong', N'phong@gmail.com', N'0972154212', N'online', N'0')
GO
GO
INSERT INTO [dbo].[Partner] ([Identity], [Id], [nameCompany], [email], [phoneNumber], [partnerPayment], [IsDelete]) VALUES (N'1189', N'6', N'Công ty TNHH Minh Tuấn', N'minhtuan@gmail.com', N'0342228863', N'online', N'0')
GO
GO
INSERT INTO [dbo].[Partner] ([Identity], [Id], [nameCompany], [email], [phoneNumber], [partnerPayment], [IsDelete]) VALUES (N'1190', N'7', N'Công ty TNHH Phước Ngà', N'huynhphuocnga@gmail.com', N'0369556421', N'tienmat', N'0')
GO
GO
INSERT INTO [dbo].[Partner] ([Identity], [Id], [nameCompany], [email], [phoneNumber], [partnerPayment], [IsDelete]) VALUES (N'1191', N'8', N'Công ty TNHH Triệu Long', N'trieulongvnt@gmail.com', N'0356984221', N'online', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO

-- ----------------------------
-- Table structure for Partner_Car
-- ----------------------------
DROP TABLE [dbo].[Partner_Car]
GO
CREATE TABLE [dbo].[Partner_Car] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[idPartner] varchar(100) NOT NULL ,
[isCar] nvarchar(100) NOT NULL ,
[statusHire] bit NOT NULL ,
[IsDelete] bit NULL ,
[Id] nvarchar(450) NOT NULL ,
PRIMARY KEY ([isCar], [statusHire], [Id])
)


GO

-- ----------------------------
-- Indexes structure for table Partner_Car
-- ----------------------------

-- ----------------------------
-- Records of Partner_Car
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Partner_Car] ON
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'2', N'1', N'1', N'1', N'0', N'2')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'22', N'3', N'10', N'1', N'0', N'20')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'23', N'3', N'11', N'1', N'0', N'21')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'24', N'3', N'12', N'1', N'0', N'22')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'25', N'3', N'13', N'1', N'0', N'23')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'26', N'3', N'14', N'1', N'0', N'24')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'27', N'4', N'15', N'1', N'0', N'25')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'34', N'5', N'16', N'1', N'0', N'32')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'35', N'5', N'17', N'1', N'0', N'33')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'36', N'5', N'18', N'1', N'0', N'34')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'37', N'5', N'19', N'1', N'0', N'35')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'1', N'1', N'2', N'1', N'0', N'1')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'38', N'5', N'20', N'1', N'0', N'36')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'8', N'1', N'21', N'1', N'0', N'7')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'9', N'1', N'22', N'1', N'0', N'8')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'10', N'1', N'23', N'1', N'0', N'9')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'11', N'1', N'24', N'1', N'0', N'10')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'15', N'2', N'25', N'1', N'0', N'14')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'16', N'2', N'26', N'1', N'0', N'15')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'17', N'2', N'27', N'1', N'0', N'16')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'18', N'2', N'28', N'1', N'0', N'17')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'20', N'2', N'29', N'1', N'0', N'18')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'4', N'1', N'3', N'1', N'0', N'3')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'21', N'2', N'30', N'1', N'0', N'19')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'28', N'4', N'31', N'1', N'0', N'26')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'29', N'4', N'32', N'1', N'0', N'27')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'30', N'4', N'33', N'1', N'0', N'28')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'31', N'4', N'34', N'1', N'0', N'29')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'32', N'4', N'35', N'1', N'0', N'30')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'33', N'4', N'36', N'1', N'0', N'31')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'39', N'5', N'37', N'1', N'0', N'37')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'40', N'5', N'38', N'1', N'0', N'38')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'41', N'5', N'39', N'1', N'0', N'39')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'5', N'1', N'4', N'1', N'0', N'4')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'42', N'5', N'40', N'1', N'0', N'40')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'6', N'1', N'5', N'1', N'0', N'5')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'7', N'1', N'6', N'1', N'0', N'6')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'12', N'2', N'7', N'1', N'0', N'11')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'13', N'2', N'8', N'1', N'0', N'12')
GO
GO
INSERT INTO [dbo].[Partner_Car] ([Identity], [idPartner], [isCar], [statusHire], [IsDelete], [Id]) VALUES (N'14', N'2', N'9', N'1', N'0', N'13')
GO
GO
SET IDENTITY_INSERT [dbo].[Partner_Car] OFF
GO

-- ----------------------------
-- Table structure for Partner_Payment
-- ----------------------------
DROP TABLE [dbo].[Partner_Payment]
GO
CREATE TABLE [dbo].[Partner_Payment] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[idPackage] varchar(100) NOT NULL ,
[idPartner] varchar(100) NOT NULL ,
[paymentDay] datetime2(7) NULL ,
[IsDelete] bit NULL ,
[Id] nvarchar(450) NOT NULL ,
PRIMARY KEY ([idPackage], [idPartner], [Id])
)


GO

-- ----------------------------
-- Indexes structure for table Partner_Payment
-- ----------------------------

-- ----------------------------
-- Records of Partner_Payment
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Partner_Payment] ON
GO
SET IDENTITY_INSERT [dbo].[Partner_Payment] OFF
GO

-- ----------------------------
-- Table structure for PartnerTenantPackage
-- ----------------------------
DROP TABLE [dbo].[PartnerTenantPackage]
GO
CREATE TABLE [dbo].[PartnerTenantPackage] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[idPartner] varchar(100) NULL ,
[idPackage] varchar(100) NULL ,
[dateTenant] date NULL ,
[isDelete] bit NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table PartnerTenantPackage
-- ----------------------------

-- ----------------------------
-- Records of PartnerTenantPackage
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PartnerTenantPackage] ON
GO
INSERT INTO [dbo].[PartnerTenantPackage] ([Identity], [Id], [idPartner], [idPackage], [dateTenant], [isDelete]) VALUES (N'1', N'1', N'1', N'1', N'2019-01-01', N'1')
GO
GO
INSERT INTO [dbo].[PartnerTenantPackage] ([Identity], [Id], [idPartner], [idPackage], [dateTenant], [isDelete]) VALUES (N'2', N'2', N'2', N'2', N'2019-01-01', N'1')
GO
GO
INSERT INTO [dbo].[PartnerTenantPackage] ([Identity], [Id], [idPartner], [idPackage], [dateTenant], [isDelete]) VALUES (N'3', N'3', N'3', N'3', N'2019-01-01', N'1')
GO
GO
INSERT INTO [dbo].[PartnerTenantPackage] ([Identity], [Id], [idPartner], [idPackage], [dateTenant], [isDelete]) VALUES (N'8', N'4', N'4', N'1', N'2019-01-02', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[PartnerTenantPackage] OFF
GO

-- ----------------------------
-- Table structure for Payment
-- ----------------------------
DROP TABLE [dbo].[Payment]
GO
CREATE TABLE [dbo].[Payment] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[namePayments] nvarchar(100) NULL ,
[description] nvarchar(500) NULL ,
[IsDelete] bit NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Payment
-- ----------------------------

-- ----------------------------
-- Records of Payment
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Payment] ON
GO
INSERT INTO [dbo].[Payment] ([Identity], [Id], [namePayments], [description], [IsDelete]) VALUES (N'121', N'1', N'Phương thức thanh toán trực tiếp', N'Sau khi nhận được xe, doanh nghiệp thương mại thanh toán ngay tiền cho người cho thuê', N'0')
GO
GO
INSERT INTO [dbo].[Payment] ([Identity], [Id], [namePayments], [description], [IsDelete]) VALUES (N'7', N'11787', N'Thanh toán bằng thẻ', N'Thanh toán bằng thẻ tín dụng hoặc ghi nợ quốc tế: với hình thức thanh toán này, khách hàng sở hữu các loại thẻ mang thương hiệu Visa, Master, American Express, JCB có thể thanh toán hơn 60 website đã kết nối với cổng thanh toán OnePay.', N'0')
GO
GO
INSERT INTO [dbo].[Payment] ([Identity], [Id], [namePayments], [description], [IsDelete]) VALUES (N'8', N'11842', N'Thanh toán qua cổng', N'Thanh toán qua cổng  thanh toán Đông Á: Tháng 7/2007, Ngân hàng Đông Á đã cung cấp cho các chủ thẻ đa năng Đông Á dịch vụ thanh toán trực tuyến trên kênh giao dịch “Ngân hàng Đông Á Điện tử”, cho phép chủ thẻ có thể mua hàng dễ dàng tại các website đã kết nối với Ngân hàng thực hiện thanh toán trực tuyến qua kênh Internet Banking/SMS Banking/Mobile Banking.', N'0')
GO
GO
INSERT INTO [dbo].[Payment] ([Identity], [Id], [namePayments], [description], [IsDelete]) VALUES (N'9', N'1195', N'Thanh toán bằng ví điện tử', N'Với hình thức thanh toán này, khách hàng phải sở hữu ví điện tử của Mobivi, Payoo, VnMart, từ đó có thể thanh toán trực tuyến trên một số website đã chấp nhận ví điện tử này.', N'0')
GO
GO
INSERT INTO [dbo].[Payment] ([Identity], [Id], [namePayments], [description], [IsDelete]) VALUES (N'10', N'12001', N'Thanh toán bằng thiết bị di động thông minh', N' Đây là một hình thức khá phổ biến và có tiềm năng phát triển mạnh trong tương lai với đại đa số người dân bây giờ ai cũng đá quá quen thuộc và sử dụng thành thạo smartphone. Với dịch vụ này khi đi mua sắm, khách hàng không cần phải mang theo tiền mặt mà thay vào đó là thanh toán trực tuyến thông qua điện thoại di động thông minh với dịch vụ Mobile Banking', N'0')
GO
GO
INSERT INTO [dbo].[Payment] ([Identity], [Id], [namePayments], [description], [IsDelete]) VALUES (N'11', N'12127', N'Thanh toán qua chuyển khoản ngân hàng', N'Thông qua ATM hoặc giao dịch trực tiếp tại ngân hàng, người mua hàng chuyển tiền của mình sang tài khoản của người bán một số tiền nhất định hoặc có giá trị bằng hàng hóa đăth mua trước khi nhận được hàng.', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO

-- ----------------------------
-- Table structure for PaymentsCustomer
-- ----------------------------
DROP TABLE [dbo].[PaymentsCustomer]
GO
CREATE TABLE [dbo].[PaymentsCustomer] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[name] nvarchar(100) NULL ,
[description] nvarchar(500) NULL ,
[IsDelete] bit NOT NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table PaymentsCustomer
-- ----------------------------

-- ----------------------------
-- Records of PaymentsCustomer
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PaymentsCustomer] ON
GO
SET IDENTITY_INSERT [dbo].[PaymentsCustomer] OFF
GO

-- ----------------------------
-- Table structure for Procedure
-- ----------------------------
DROP TABLE [dbo].[Procedure]
GO
CREATE TABLE [dbo].[Procedure] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[name] nvarchar(100) NULL ,
[description] nvarchar(500) NULL ,
[IsDelete] bit NULL ,
[IdPartner] varchar(100) NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table Procedure
-- ----------------------------

-- ----------------------------
-- Records of Procedure
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Procedure] ON
GO
INSERT INTO [dbo].[Procedure] ([Identity], [Id], [name], [description], [IsDelete], [IdPartner]) VALUES (N'22', N'1', N'CMND', N'Mang theo CMND', N'0', null)
GO
GO
INSERT INTO [dbo].[Procedure] ([Identity], [Id], [name], [description], [IsDelete], [IdPartner]) VALUES (N'23', N'2', N'Tiền mặt', N'Mang theo tiền mặt', N'0', N'1')
GO
GO
INSERT INTO [dbo].[Procedure] ([Identity], [Id], [name], [description], [IsDelete], [IdPartner]) VALUES (N'26', N'3', N'Đặt Cọc', N'5000000', N'0', N'1')
GO
GO
INSERT INTO [dbo].[Procedure] ([Identity], [Id], [name], [description], [IsDelete], [IdPartner]) VALUES (N'27', N'4', N'Bằng lái', N'Phải có bằng lái theo từng loại xe ', N'0', N'1')
GO
GO
INSERT INTO [dbo].[Procedure] ([Identity], [Id], [name], [description], [IsDelete], [IdPartner]) VALUES (N'28', N'5', N'Hộ Khẩu', N'Số hộ khẩu phải photo công chứng', N'0', N'1')
GO
GO
INSERT INTO [dbo].[Procedure] ([Identity], [Id], [name], [description], [IsDelete], [IdPartner]) VALUES (N'29', N'6', N'Thẻ sinh viên', N'Nên có thẻ sinh viên nếu bạn là sinh viên gương mẫu', N'0', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[Procedure] OFF
GO

-- ----------------------------
-- Table structure for TypeCar
-- ----------------------------
DROP TABLE [dbo].[TypeCar]
GO
CREATE TABLE [dbo].[TypeCar] (
[Identity] int NOT NULL IDENTITY(1,1) ,
[Id] varchar(100) NOT NULL ,
[typeDescription] nvarchar(500) NULL ,
[IsDelete] bit NOT NULL ,
[Name] nvarchar(100) NULL ,
PRIMARY KEY ([Id])
)


GO

-- ----------------------------
-- Indexes structure for table TypeCar
-- ----------------------------

-- ----------------------------
-- Records of TypeCar
-- ----------------------------
SET IDENTITY_INSERT [dbo].[TypeCar] ON
GO
INSERT INTO [dbo].[TypeCar] ([Identity], [Id], [typeDescription], [IsDelete], [Name]) VALUES (N'18', N'01', N'Xe Hơi', N'0', N'Xe hơi')
GO
GO
INSERT INTO [dbo].[TypeCar] ([Identity], [Id], [typeDescription], [IsDelete], [Name]) VALUES (N'19', N'02', N'Xe Máy', N'0', N'Xe máy')
GO
GO
SET IDENTITY_INSERT [dbo].[TypeCar] OFF
GO
