SET NAMES UTF8;
DROP DATABASE IF EXISTS ucai;
CREATE DATABASE ucai CHARSET=UTF8;
USE ucai;

-- 轮播图表
CREATE TABLE ucai_index_carousel(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	url VARCHAR(128),
	title VARCHAR(64)
);

/**用户信息**/
CREATE TABLE ucai_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16)
);

INSERT INTO ucai_index_carousel VALUES
(NULL,'http://127.0.0.1:3000/img/banner-1.jpg','轮播广告图1'),
(NULL,'http://127.0.0.1:3000/img/banner-2.jpg','轮播广告图2'),
(NULL,'http://127.0.0.1:3000/img/banner-3.jpg','轮播广告图3'),
(NULL,'http://127.0.0.1:3000/img/banner-4.jpg','轮播广告图4');

INSERT INTO ucai_user VALUES
(NULL,'dingding','123456','dingding@qq.com','15889965081'),
(NULL,'doudou','123456','doudou@qq.com','15889965081'),
(NULL,'tom','123456','tom@qq.com','15889965081'),
(NULL,'rose','123456','rose@qq.com','15889965081');




