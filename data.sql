USE [BanHang_DB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/19/2023 4:45:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] NOT NULL,
	[Cate] [nchar](50) NULL,
	[Sex] [nchar](10) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 8/19/2023 4:45:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[FullName] [nchar](50) NULL,
	[Email] [nchar](150) NULL,
	[PhoneNumber] [nchar](20) NULL,
	[Address] [nchar](150) NULL,
	[Note] [nvarchar](max) NULL,
	[OrderDate] [datetime] NULL,
	[PaymentType] [nchar](10) NULL,
	[Status] [nchar](1000) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/19/2023 4:45:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProID] [int] NULL,
	[Price] [int] NULL,
	[num] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/19/2023 4:45:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[CateID] [int] NULL,
	[ProductName] [nchar](150) NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[ProductPictures] [nchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Sex] [nchar](10) NULL,
	[Cate] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPictures]    Script Date: 8/19/2023 4:45:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPictures](
	[ID] [int] NOT NULL,
	[ProID] [int] NULL,
	[ProductPictures] [nchar](50) NULL,
 CONSTRAINT [PK_ProductPictures] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/19/2023 4:45:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nchar](50) NULL,
	[Email] [nchar](150) NULL,
	[PhoneNumber] [nchar](20) NULL,
	[Address] [nchar](150) NULL,
	[Password] [nchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([ID], [Cate], [Sex]) VALUES (3, N'Shirt                                             ', NULL)
INSERT [dbo].[Category] ([ID], [Cate], [Sex]) VALUES (4, N'Hats                                              ', NULL)
INSERT [dbo].[Category] ([ID], [Cate], [Sex]) VALUES (5, N'Jacket                                            ', NULL)
INSERT [dbo].[Category] ([ID], [Cate], [Sex]) VALUES (6, N'Patns                                             ', NULL)
INSERT [dbo].[Category] ([ID], [Cate], [Sex]) VALUES (7, N'Short                                             ', NULL)
INSERT [dbo].[Category] ([ID], [Cate], [Sex]) VALUES (8, N'Shoes                                             ', NULL)
INSERT [dbo].[Category] ([ID], [Cate], [Sex]) VALUES (9, N'Bags                                              ', NULL)
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (0, NULL, N'dada                                              ', N'voxuanhuu@gmail.com                                                                                                                                   ', N'21121121            ', N'21212212                                                                                                                                              ', NULL, CAST(N'2022-12-22T21:25:55.407' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (1, NULL, N'Võ Xuân Hữu                                       ', N'voxuanhuu@gmail.com                                                                                                                                   ', N'21121121            ', N'29                                                                                                                                                    ', NULL, CAST(N'2022-12-22T21:53:33.550' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (2, NULL, N'đâ                                                ', N'voxuanhuu11111@gmail.com                                                                                                                              ', N'12112121            ', N'ádsadadada                                                                                                                                            ', NULL, CAST(N'2022-12-22T21:54:07.613' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (3, NULL, N'đâ                                                ', N'voxuanhuu11111@gmail.com                                                                                                                              ', N'12112121            ', N'ádsadadada                                                                                                                                            ', NULL, CAST(N'2022-12-22T21:55:46.410' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (4, NULL, N'adada                                             ', N'12@gmail.com                                                                                                                                          ', N'23323223            ', N'ádasdad                                                                                                                                               ', NULL, CAST(N'2022-12-22T21:56:21.557' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (5, NULL, N'xzczcz                                            ', N'zcxzcxzc                                                                                                                                              ', N'zcxzczc             ', N'xczxczxcxz                                                                                                                                            ', NULL, CAST(N'2022-12-22T21:58:59.817' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (6, NULL, N'sadda                                             ', N'voxuanhuu123@gmail.com                                                                                                                                ', N'213211545           ', N'3131                                                                                                                                                  ', NULL, CAST(N'2022-12-24T10:56:34.377' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (7, NULL, N'Võ Xuân Hữu                                       ', N'voxuanhuu123@gmail.com                                                                                                                                ', N'0393386417          ', N'29                                                                                                                                                    ', NULL, CAST(N'2022-12-24T11:01:55.647' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (8, NULL, N'Võ Xuân Hữu                                       ', N'12@gmail.com                                                                                                                                          ', N'02323131313131      ', N'29                                                                                                                                                    ', NULL, CAST(N'2022-12-24T11:05:00.753' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (9, NULL, N'Võ Xuân Hữu                                       ', N'voxuanhuu001@gmail.com                                                                                                                                ', N'0393386417          ', N'29                                                                                                                                                    ', NULL, CAST(N'2022-12-24T11:07:20.463' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Order] ([ID], [UserID], [FullName], [Email], [PhoneNumber], [Address], [Note], [OrderDate], [PaymentType], [Status]) VALUES (10, NULL, N'Võ Xuân Hữu                                       ', N'12@gmail.com                                                                                                                                          ', N'0333255333          ', N'29                                                                                                                                                    ', NULL, CAST(N'2022-12-24T17:25:59.257' AS DateTime), N'Cash      ', N'Processing                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProID], [Price], [num]) VALUES (1, 1, 16, 100, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProID], [Price], [num]) VALUES (2, 2, 17, 100, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProID], [Price], [num]) VALUES (3, 4, 26, 100, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProID], [Price], [num]) VALUES (4, 5, 30, 100, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProID], [Price], [num]) VALUES (5, 6, 17, 100, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProID], [Price], [num]) VALUES (6, 7, 16, 100, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProID], [Price], [num]) VALUES (7, 8, 17, 100, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProID], [Price], [num]) VALUES (8, 9, 16, 100, 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProID], [Price], [num]) VALUES (9, 10, 16, 100, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (16, 3, N'Honda SenSing City                                                                                                                                    ', 950000000, NULL, N'oto6.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (17, 3, N'Honda SenSing CiVic                                                                                                                                   ', 850000000, NULL, N'oto2.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (18, 3, N'Honda SenSing BR-V                                                                                                                                    ', 120000000, NULL, N'oto5.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (19, 3, N'Honda SenSing Accord                                                                                                                                  ', 130000000, NULL, N'oto4.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (20, 3, N'Honda SenSIng B                                                                                                                                       ', 140000000, NULL, N'oto3.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (21, 3, N'Honda SenSing Y                                                                                                                                       ', 150000000, NULL, N'oto3.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (22, 3, N'Honda SenSing Z                                                                                                                                       ', 160000000, NULL, N'oto3.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (23, 3, N'Honda SenSing X                                                                                                                                       ', 560000000, NULL, N'oto3.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (26, 4, N'Avanaza Premio                                                                                                                                        ', 530000000, NULL, N'oto9.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (30, 4, N'Veloz Crosss CVT                                                                                                                                      ', 450000000, NULL, N'oto10.png                                         ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (35, 4, N'Veloz Crosss Top                                                                                                                                      ', 470000000, NULL, N'oto8.png                                          ', NULL, N'          ', N'          ', N'new       ')
INSERT [dbo].[Product] ([ID], [CateID], [ProductName], [Price], [Discount], [ProductPictures], [Description], [Sex], [Cate], [Status]) VALUES (40, 5, N'Corolla Altis 1.8V                                                                                                                                    ', 760000000, NULL, N'oto13.png                                         ', NULL, N'          ', N'          ', N'new       ')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [FullName], [Email], [PhoneNumber], [Address], [Password]) VALUES (4, N'VoXuanHuu                                         ', N'voxuanhuu@gmail.com                                                                                                                                   ', N'0396386417          ', NULL, N'ec0641b3f51675164e6d88afaab2e178                  ')
INSERT [dbo].[User] ([ID], [FullName], [Email], [PhoneNumber], [Address], [Password]) VALUES (5, N'ahdasdsa                                          ', N',czxcxzc@gmail.com                                                                                                                                    ', N'6115155154          ', NULL, N'4e4d6c332b6fe62a63afe56171fd3725                  ')
INSERT [dbo].[User] ([ID], [FullName], [Email], [PhoneNumber], [Address], [Password]) VALUES (6, N'huucue                                            ', N'asdsada@galfmalmfa.com                                                                                                                                ', N'1212121             ', NULL, N'1aa7f5fd649b1e4b6711e63846c946d0                  ')
INSERT [dbo].[User] ([ID], [FullName], [Email], [PhoneNumber], [Address], [Password]) VALUES (7, N'hihi                                              ', N'voxuanhuu00@gmail.com                                                                                                                                 ', N'0396386417          ', NULL, N'e10adc3949ba59abbe56e057f20f883e                  ')
INSERT [dbo].[User] ([ID], [FullName], [Email], [PhoneNumber], [Address], [Password]) VALUES (8, N'đaasdas                                           ', N'adasdad@.com                                                                                                                                          ', N'213132313           ', NULL, N'0240308a1ae03b98fe6628fe6fa5c59d                  ')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductPictures]  WITH CHECK ADD  CONSTRAINT [FK_ProductPictures_Product] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductPictures] CHECK CONSTRAINT [FK_ProductPictures_Product]
GO
