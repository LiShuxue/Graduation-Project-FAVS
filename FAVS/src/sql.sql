/*删除商城数据库,如果存在*/
drop database if exists favs;
/*创建数据库,并设置编码*/
create database favs default character set utf8;

use favs;
/*
管理员表(管理员ID,用户名,密码,性别,年龄,联系方式,角色)
*/
drop table if exists admins;
create table admins(
	aid int not null auto_increment,
	ausername varchar(20) not null,
	apassword varchar(20) not null,
	asex varchar(10),
	aage int,
	aphone varchar(20),
	arole int not null,
	primary key(aid)
);
insert into admins(ausername, apassword, asex, aage, aphone, arole)  values('admin', 'admin', '男', 30, '13120422313',1);
SELECT * from ADMINS;

/*
供应商表(供应商ID,用户名,密码,,性别,年龄,联系方式,角色)
*/
drop table if exists Supplier;
create table Supplier(
	sid int not null auto_increment,
	susername varchar(20) not null,
	spassword varchar(20) not null,
	ssex varchar(10),
	sage int,
	sphone varchar(20),
	srole int not null,
	primary key(sid)
);
insert into Supplier (susername,spassword,ssex,sage,sphone,srole) values('供应商1', '000000', '男', 30, '15820422311', 2);
insert into Supplier (susername,spassword,ssex,sage,sphone,srole) values('供应商2', '000000', '男', 30, '15820422312', 2);
insert into Supplier (susername,spassword,ssex,sage,sphone,srole) values('供应商3', '000000', '男', 30, '15820422313', 2);
SELECT * from Supplier;

/*
购买者表(购买者ID,用户名,密码,,性别,年龄,联系方式,收货地址,角色)
*/
drop table if exists Consumer;
create table Consumer(
	cid int not null auto_increment,
	cusername varchar(20) not null,
	cpassword varchar(20) not null,
	csex varchar(10),
	cage int,
	cphone varchar(20),
	caddress varchar(200),
	crole int not null,
	primary key(cid)
);
insert into Consumer (cusername,cpassword,csex,cage,cphone,caddress,crole) values('购买者1', '111111', '男', 20, '14720422311', '天津市北辰区光荣道109号天津商业大学桃李园1栋', 3);
insert into Consumer (cusername,cpassword,csex,cage,cphone,caddress,crole) values('购买者2', '111111', '男', 30, '14720422312', '天津市北辰区光荣道109号天津商业大学桃李园2栋', 3);
insert into Consumer (cusername,cpassword,csex,cage,cphone,caddress,crole) values('购买者3', '111111', '男', 40, '14720422313', '天津市北辰区光荣道109号天津商业大学桃李园3栋', 3);
SELECT * from Consumer;

/*
商品类别表（商品类别ID，商品类别名，是否为热点类别（热点类别才有可能显示在首页））
*/
drop table if exists Gtype;
create table Gtype(
	gtypeid int not null auto_increment primary key,
	gtypename varchar(20) not null,
	hot bool default false
);
insert into Gtype(gtypename, hot) values('水果', true);
insert into Gtype(gtypename, hot) values('蔬菜', true);
SELECT * from Gtype;

/*
商品表(商品ID,商品类别ID,供应商ID,商品名,商品图片，商品简介，单价，单位，库存量，是否是推荐商品（推荐商品可显示在首页）)
一般不设外键约束
*/
drop table if exists Goods;
create table Goods(
	gid int not null auto_increment,
	gtypeid int not null,
	sid int not null,
	gname varchar(20),
	gimage varchar(200),
	gintroduce varchar(500),
	gprice decimal(8,2),
	gunit varchar(20),
	gcount int,
	recommendation bool,
	primary key(gid)
);
update goods set gimage='c5bc5f79-02fb-4145-83c7-2c28ceb6be8c.jpg' where gid=9;
select * from goods;

/*新闻表（新闻ID，发布人（供应商ID），新闻标题，消息内容，发布时间）新闻表在消费者页面展现*/
drop table if exists News;
create table News(
	nid int not null auto_increment primary key,
	sid int not null,
	ntitle varchar(100) not null,
	ncontent varchar(500) not null,
	ntime date
);
insert into News(sid, ntitle,ncontent,ntime) values(1, '苹果低价促销', 'XX店因要离开本地，原价10元/千克的苹果，现在低价甩卖，清仓大甩卖', now());
insert into News(sid, ntitle,ncontent,ntime) values(2, '桃子低价促销', 'XX店因要离开本地，原价10元/千克的桃子，现在低价甩卖，清仓大甩卖', now());
insert into News(sid, ntitle,ncontent,ntime) values(3, '西瓜低价促销', 'XX店因要离开本地，原价10元/千克的西瓜，现在低价甩卖，清仓大甩卖', now());
select * from News;

/*求购信息表（求购信息ID，求购人(购买者ID)，求购标题，求购内容，求购时间）求购表在供应商页面展现*/
drop table if exists Buy;
create table Buy(
	bid int not null auto_increment primary key,
	cid int not null,
	btitle varchar(100) not null,
	bcontent varchar(500) not null,
	btime date
);
insert into Buy(cid, btitle,bcontent,btime) values(1, '求购新鲜苹果', '现急需求购一批新鲜苹果，物美价廉的商家速联系我，电话：14720422311.', now());
insert into Buy(cid, btitle,bcontent,btime) values(2, '求购新鲜桃子', '现急需求购一批新鲜桃子，物美价廉的商家速联系我，电话：14720422312.', now());
insert into Buy(cid, btitle,bcontent,btime) values(3, '求购新鲜李子', '现急需求购一批新鲜李子，物美价廉的商家速联系我，电话：14720422313.', now());
select * from Buy;

/*购物车表（购物车ID，求购人(购买者ID)，订单状态id，购买者用户名，供应商，电话，邮编，地址，总价， 备注 ， 下单日期）*/
drop table if exists Car;
create table Car
(
   carid int not null auto_increment,
   cid int not null,
   statuid int not null,
   cusername varchar(20),
   susername varchar(20),
   cphone varchar(20),
   carpost varchar(20),
   caddress varchar(200),
   cartotal double(8,2),
   carremark varchar(20),
   cardate timestamp default CURRENT_TIMESTAMP,
   primary key (carid)
);
/* 修改自动增长的初始值 */
ALTER TABLE Car AUTO_INCREMENT = 20160001;
select * from Car;

/*购物项（购物项ID, 购物车ID， 商品ID，商品名称，商品价格，购买数量，）*/
drop table if exists Item;
create table Item
(
   itemid int not null auto_increment,
   caid int not null,
   gid int not null,
   gname varchar(20),
   gprice double(10,2),
   number int,
   primary key (itemid)
);
select * from Item;

/*订单状态表（订单状态ID，状态）*/
drop table if exists Statu;
create table Statu
(
   statuid int not null auto_increment,
   statu varchar(20),
   primary key (statuid)
);
INSERT INTO Statu (statu) VALUES ('未支付');
INSERT INTO Statu (statu) VALUES ('已支付');
INSERT INTO Statu (statu) VALUES ('配送中');
INSERT INTO Statu (statu) VALUES ('订单完成');
select * from Statu;
