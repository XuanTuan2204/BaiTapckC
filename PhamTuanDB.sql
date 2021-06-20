go
use PhamTuanDB
go
Create table UserAccount 
(
    ID varchar(50) PRIMARY KEY,
    UserName varchar(50) NULL,
    PassWord varchar(50) NULL,
    Status nvarchar(50) not null
)
go
Insert into UserAccount
Values('ND001','admin','21232f297a57a5a743894a0e4a801fc3',''),
	('ND002','Tuan','7e33ad856f9ff74645ad13796122fa89','BlOOKER'),
	('ND003','Tuan0011','1e0c5a470355ff68969dfbf5df9399e6',''),
	('ND004','XuanTuan','51fd603c5a7ff20c5fab4ee1fcb5f7f6',''),
	('ND005','Tuan001','83282093b1b7b349a507fbaf92ed1970','BlOOKER'),
	('ND006','Tu01','8f65900731b2dd9351ca5f08cf7735f2',''),
	('ND007','XuanTuan001','8f65900731b2dd9351ca5f08cf7735f2',''),
	('ND008','Tuan123','8f65900731b2dd9351ca5f08cf7735f2','BlOOKER'),
	('ND009','Tu123','8f65900731b2dd9351ca5f08cf7735f2','');
go
Create table Category
(
	CategoryID varchar(50) Primary key,
	Name nvarchar(50) null,
	Description nvarchar(50) null
)
go
Insert into Category
Values('L001',N'Trà Sửa','K'),
	('L002',N'Hồng Trà','M'),
	('L003',N'Soda','L')
Go
Create table Product
(
	ProductID varchar(50) Primary key,
	Name nvarchar(50) null,
	UnitCost varchar(50) null,
	Quantity int null,
	Image varbinary(max) null,
	Description nvarchar(50) null,
	CategoryID varchar(50) null foreign key references Category(CategoryID),
	Status nvarchar(50) null
)
go
Insert into Product
Values('SP001',N'Trà Sửa Chân Châu','20.000 vnđ',5,null,'K','L001',null),
		('SP002',N'Hồng Trà','15.000 vnđ',10,null,'L','L002',null),
		('SP003',N'Hồng Trà Đào','18.000 vnđ',8,null,'M','L002',null),
		('SP004',N'Kiwi','20.000 vnđ',15,null,'K','L003',null),
		('SP005',N'Hồng Trà vãi','20.000 vnđ',7,null,'M','L002',null),
		('SP006',N'Deep Blue','15.000 vnđ',5,null,'K','L003',null)

