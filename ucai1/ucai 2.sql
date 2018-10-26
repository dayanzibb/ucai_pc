SET NAMES UTF8;

USE ucai;

#轮播图表
#CREATE TABLE ucai_openclass(
	#id INT PRIMARY KEY AUTO_INCREMENT,
	#title VARCHAR(128),
	#pic_md VARCHAR(128),
	#count INT,
	#level VARCHAR(16),
	#teacher_name VARCHAR(16),
	#time VARCHAR(128),
	#content  VARCHAR(1024),	
	#teacher_pic VARCHAR(128)

#);
#CREATE TABLE ucai_comment(
	#id INT PRIMARY KEY AUTO_INCREMENT,
	#pic_head VARCHAR(128),
	#name VARCHAR(64),
	#comment VARCHAR(1024),
	#comment_time VARCHAR(128),
	#cid INT
#);

/*
INSERT INTO ucai_comment VALUES
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','admin-lin','尼玛，刚准备学，网上搜了下，竟然说过时了，可我连jquery都还没学会，神马vue','2016-11-28 16:36',1),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','admin-lin','老师很棒！','2016-09-27 16:10',1),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','admin-lin','额，还是先学基本的吧，貌似有点看不懂。','2016-08-24 14:51',2),
(null,'http://127.0.0.1:3000/img/comment_1.jpg','大宝军666','the teacher\'s voice is very nice,i love her','2015-08-26 18:36',4),
(null,'http://127.0.0.1:3000/img/comment_2.jpg','大帅比','老师讲的不错，学习了，赞一个','2015-07-04 13:23',4),
(null,'http://127.0.0.1:3000/img/comment_3.jpg','紫气东来_','这门课很好，收益匪浅','2015-04-07 14:17',4),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','好好学习520','wo jiu lai kan kan','2015-03-19 16:52',4),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','一开始我可是拒绝的','支持老梁 讲课很细心','2015-12-29 08:56',6),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','一开始我可是拒绝的','有时间看看 先收藏一下','2015-10-10 23:31',7),
(null,'http://127.0.0.1:3000/img/comment_4.jpg','呐喊670','好，老师讲的比较易懂','2015-10-10 23:31',7),
(null,'http://127.0.0.1:3000/img/comment_5.jpg','小萱','好，老师讲的比较易懂','2015-09-15 19:54',7),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','adJack','这个视频看不了啊。。没会员啊。','2015-05-29 10:58',7),
(null,'http://127.0.0.1:3000/img/comment_9.jpg','adJack','这个视频看不了啊。。没会员啊。','2015-05-29 10:58',7),
(null,'http://127.0.0.1:3000/img/comment_8.jpg','kevin2088','good','2016-12-09 16:14',9),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','达da','讲的很好，自己学到很多东西，谢谢','2015-05-31 13:41',14),
(null,'http://127.0.0.1:3000/img/comment_8.jpg','小爵','讲的很好，感谢默默奉献的人。','2015-05-06 15:09',14),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','phbbingo','非常好，学到很多东西','2015-04-10 09:21',14),
(null,'http://127.0.0.1:3000/img/comment_7.jpg','叶落深秋','good good study','2014-12-20 21:56',14),
(null,'http://127.0.0.1:3000/img/comment_10.jpg','yuefang','不错，学习了~~~~','2014-12-12 09:16',14),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','虎虎生威','讲的真不错','2014-12-11 19:12',14),
(null,'http://127.0.0.1:3000/img/user_pic_middle.gif','夜的宠儿','妥妥滴！学习了哈，一如既往的支持','2014-11-28 09:21',14),
(null,'http://127.0.0.1:3000/img/comment_11.jpg','baijiyu','老师讲的很好，突出了重点，学到很多东西','2014-11-27 22:13',14),
(null,'http://127.0.0.1:3000/img/comment_12.jpg','张瑞星','很好的网站，很好的老师','2015-03-08 21:41',15),
(null,'http://127.0.0.1:3000/img/comment_13.jpg','silence520','好好好好好红啊红啊红啊后','2014-12-11 19:11',15),
(null,'http://127.0.0.1:3000/img/comment_14.jpg','妥妥滴！','哈哈！还有个问题怎么改版后人少了吗','2014-11-26 19:13',15),
(null,'http://127.0.0.1:3000/img/comment_15.jpg','baijiyu','老师讲的很好，分析现在的趋势很透彻','2014-11-26 16:42',15),
(null,'http://127.0.0.1:3000/img/comment_16.jpg','ustbios078','讲的挺好的，受教了，希望多些此类的讲解','2014-11-26 15:55',15);
#ALTER TABLE ucai_comment ADD cid INT;


CREATE TABLE ucai_about(
	id INT PRIMARY KEY AUTO_INCREMENT,
	pic_url VARCHAR(128),
	content VARCHAR(128),	
	pic_id INT
);
INSERT INTO ucai_about VALUES
(NULL,'http://127.0.0.1:3000/img/1_1.jpg','探索和掌握Chrome开发者工具',1),
(NULL,'http://127.0.0.1:3000/img/1_2.jpg','微信小程序开发第一讲：获取微信小程序开发工具',1),
(NULL,'http://127.0.0.1:3000/img/1_3.jpg','公开课：JS实现手势图像密码',1),
(NULL,'http://127.0.0.1:3000/img/1_4.jpg','浏览器渲染那些事',1),
(NULL,'http://127.0.0.1:3000/img/1_1.jpg','探索和掌握Chrome开发者工具',2),
(NULL,'http://127.0.0.1:3000/img/1_2.jpg','微信小程序开发第一讲：获取微信小程序开发工具',2),
(NULL,'http://127.0.0.1:3000/img/1_3.jpg','公开课：JS实现手势图像密码',2),
(NULL,'http://127.0.0.1:3000/img/1_4.jpg','浏览器渲染那些事',2),
(NULL,'http://127.0.0.1:3000/img/3_1.jpg','微信小程序开发第三讲：数据绑定',3),
(NULL,'http://127.0.0.1:3000/img/3_1.jpg','微信小程序开发第二讲：事件响应',3),
(NULL,'http://127.0.0.1:3000/img/3_2.jpg','HTML5 项目汇总调试',3),
(NULL,'http://127.0.0.1:3000/img/1_1.jpg','探索和掌握Chrome开发者工具',4),
(NULL,'http://127.0.0.1:3000/img/1_2.jpg','微信小程序开发第一讲：获取微信小程序开发工具',4),
(NULL,'http://127.0.0.1:3000/img/1_3.jpg','公开课：JS实现手势图像密码',4),
(NULL,'http://127.0.0.1:3000/img/1_4.jpg','浏览器渲染那些事',4),
(NULL,'http://127.0.0.1:3000/img/5_1.jpg','商业海报制作',5),
(NULL,'http://127.0.0.1:3000/img/5_2.jpg','创意海报制作',5),
(NULL,'http://127.0.0.1:3000/img/5_2.jpg','帧动画和视频动画制作',5),
(NULL,'http://127.0.0.1:3000/img/5_2.jpg','画笔工具组、人像合成',5),
(NULL,'http://127.0.0.1:3000/img/5_2.jpg','创意海报制作',6),
(NULL,'http://127.0.0.1:3000/img/5_2.jpg','帧动画和视频动画制作',6),
(NULL,'http://127.0.0.1:3000/img/5_2.jpg','画笔工具组、人像合成',6),
(NULL,'http://127.0.0.1:3000/img/5_1.jpg','商业海报制作',7),
(NULL,'http://127.0.0.1:3000/img/5_2.jpg','创意海报制作',7),
(NULL,'http://127.0.0.1:3000/img/5_2.jpg','帧动画和视频动画制作',7),
(NULL,'http://127.0.0.1:3000/img/5_2.jpg','画笔工具组、人像合成',7),
(NULL,'http://127.0.0.1:3000/img/6_1.jpg','Ruby on Rails 入门教程(来自happycasts.net)',8),
(NULL,'http://127.0.0.1:3000/img/6_2.jpg','中谷 Python 初级教程',8),
(NULL,'http://127.0.0.1:3000/img/6_3.jpg','中谷 Python Django 教程',8),
(NULL,'http://127.0.0.1:3000/img/6_2.jpg','Python 入门指南',8),
(NULL,'http://127.0.0.1:3000/img/7_1.jpg','Web全栈',9),
(NULL,'http://127.0.0.1:3000/img/7_1.jpg','消息队列的原理和实现',9),
(NULL,'http://127.0.0.1:3000/img/7_2.jpg','开发运维规范及答疑',9),
(NULL,'http://127.0.0.1:3000/img/7_2.jpg','全栈进阶（php性能优化与shell提升）',9),
(NULL,'http://127.0.0.1:3000/img/7_1.jpg','Web全栈',10),
(NULL,'http://127.0.0.1:3000/img/7_1.jpg','消息队列的原理和实现',10),
(NULL,'http://127.0.0.1:3000/img/7_2.jpg','开发运维规范及答疑',10),
(NULL,'http://127.0.0.1:3000/img/7_2.jpg','全栈进阶（php性能优化与shell提升）',10),
(NULL,'http://127.0.0.1:3000/img/7_1.jpg','Web全栈',11),
(NULL,'http://127.0.0.1:3000/img/7_1.jpg','消息队列的原理和实现',11),
(NULL,'http://127.0.0.1:3000/img/7_2.jpg','开发运维规范及答疑',11),
(NULL,'http://127.0.0.1:3000/img/7_2.jpg','全栈进阶（php性能优化与shell提升）',11),
(NULL,'http://127.0.0.1:3000/img/7_1.jpg','Web全栈',12),
(NULL,'http://127.0.0.1:3000/img/7_1.jpg','消息队列的原理和实现',12),
(NULL,'http://127.0.0.1:3000/img/7_2.jpg','开发运维规范及答疑',12),
(NULL,'http://127.0.0.1:3000/img/7_2.jpg','全栈进阶（php性能优化与shell提升）',12),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十四课：实现精选二级页面',13),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十三课：实现精选首页',13),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十二课：实现商品详情页面',13),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十一课：再论MVC架构',13),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十四课：实现精选二级页面',14),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十三课：实现精选首页',14),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十二课：实现商品详情页面',14),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十一课：再论MVC架构',14),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十四课：实现精选二级页面',15),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十三课：实现精选首页',15),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十二课：实现商品详情页面',15),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十一课：再论MVC架构',15),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十四课：实现精选二级页面',16),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十三课：实现精选首页',16),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十二课：实现商品详情页面',16),
(NULL,'http://127.0.0.1:3000/img/8_1.jpg','24小时速成Android第二十一课：再论MVC架构',16);

INSERT INTO ucai_openclass VALUES
(NULL,'React前端页面开发','http://127.0.0.1:3000/img/57c9465cae6a9.jpg',0,'初学者','方维','2016-08-25 20:00 ~ 22:00','React 起源于 Facebook 的内部项目，因为该公司对市场上所有 JavaScript MVC 框架，都不满意，就决定自己写一套，用来架设 Instagram 的网站。做出来以后，发现这套东西很好用，就在2013年5月开源了。','http://127.0.0.1:3000/img/open_1.jpg'),
NULL,'Nodejs+Express+Mongodb+Mocha环境搭建','http://127.0.0.1:3000/img/57c946fd0dc59.jpg',0,'初学者','方维','2016-08-23 20:00 ~ 22:00','React 起源于 Facebook 的内部项目，因为该公司对市场上所有 JavaScript MVC 框架，都不满意，就决定自己写一套，用来架设 Instagram 的网站。做出来以后，发现这套东西很好用，就在2013年5月开源了。','http://127.0.0.1:3000/img/open_1.jpg'),
(NULL,'HTML5 动画设计与页面构成','http://127.0.0.1:3000/img/567a0bca364fa.jpg',6,'初学者','邵山欢老师','2015-12-02 10:00 ~ 12:00','','http://127.0.0.1:3000/img/open_3.jpg'),
(NULL,'第122讲 Web前端开发之DOM编程','http://127.0.0.1:3000/img/567a093353f8e.jpg',109,'初学者','刘志华','2015-03-03 20:00 ~ 22:00','','http://127.0.0.1:3000/img/open_4.jpg'),
(NULL,'UI项目实战 — 快速打造隐私相册写实图标','http://127.0.0.1:3000/img/57cd0d1946da0.jpg',2,'初学者','华夏梁子','2015-11-10 20:00 ~ 22:00','实现手机应用隐私相册微写实图标制作，从设计思路-提炼设计元素-效果实现-细节掌握全方位打造写实图标的绘制过程。','http://127.0.0.1:3000/img/liang.jpg'),
(NULL,'商业海报制作','http://127.0.0.1:3000/img/57cd0d1946da0.jpg',9,'初学者','华夏梁子','2015-12-18 20:00 ~ 22:00','','http://127.0.0.1:3000/img/liang.jpg'),
(NULL,'第125讲 人像后期处理技法一','http://127.0.0.1:3000/img/567a0909bbb59.jpg',56,'初学者','刘俊言','2015-03-24 20:00 ~ 22:00','本课程由优才网资深UI/UE设计总监刘俊言老师全力打造，教你如何驾驭PS去处理照片， 使你的照片展示效果更上一个层次。','http://127.0.0.1:3000/img/open_6.jpg'),
(NULL,'Photoshop 基础实战课','http://127.0.0.1:3000/img/553621adefbc0.jpg',14,'初学者','华夏梁子','2015-12-18 20:00 ~ 22:00','','http://127.0.0.1:3000/img/liang.jpg'),
(NULL,'多线程多进程那些事','http://127.0.0.1:3000/img/57c95082a963e.jpg',0,'初学者','刘志华','2015-11-18 20:00 ~ 22:00','','http://127.0.0.1:3000/img/open_4.jpg'),
(NULL,'PHP MySQL函数库','http://127.0.0.1:3000/img/567a0dd176d84.jpg',7,'初学者','刘志华','2015-12-09 10:00 ~ 12:00','','http://127.0.0.1:3000/img/open_4.jpg'),
(NULL,'快捷的数据处理工具与方法(上)','http://127.0.0.1:3000/img/57cce3c613f3d.jpg',7,'初学者','伍星','2016-07-28 20:00 ~ 22:00','','http://127.0.0.1:3000/img/open_8.jpg'),
(NULL,'快捷的数据处理工具与方法(下)','http://127.0.0.1:3000/img/57cce3d9c2e21.jpg',7,'初学者','伍星','2016-07-30 20:00 ~ 22:00','','http://127.0.0.1:3000/img/open_8.jpg'),
(NULL,'优才线下Android公开课：程序员的架构师之路','http://127.0.0.1:3000/img/567a0720c694a.jpg',2,'初学者','伍星','2015-11-28 14:00 ~ 16:00','','http://127.0.0.1:3000/img/open_8.jpg'),
(NULL,'第103讲 Android App实现第三方登录','http://127.0.0.1:3000/img/57cd14de6de99.jpg',98,'初学者','刘志华','2014-11-27 20:00 ~ 22:00','','http://127.0.0.1:3000/img/open_4.jpg'),
(NULL,'第102讲 现代前端框架思想在安卓系统中的体现','http://127.0.0.1:3000/img/545aded461cd8.jpg',112,'初学者','霍振中','2014-11-25 20:00 ~ 22:00','','http://127.0.0.1:3000/img/user_pic_middle.gif'),
(NULL,'【Android实战】需求分析，框架和服务端搭建，实体类创建','http://127.0.0.1:3000/img/57ce3b3d869ff.jpg',16,'初学者','刘志华','2015-10-20 20:00 ~ 22:00','实现从网络服务器下载已注册用户和考题文件，在Android系统的手机中完成Android科目、Java科目的单选、复选题考试，并及时判题打分。','http://127.0.0.1:3000/img/open_4.jpg');
*/


INSERT INTO ucai_new VALUES
(NULL,'React前端页面开发','http://127.0.0.1:3000/img/57c9465cae6a9.jpg?id=1',10,'方维','2016/08/25','http://127.0.0.1:3000/img/open_1.jpg'),
(NULL,'Nodejs+Express+Mongodb+Mocha环境搭建','http://127.0.0.1:3000/img/57c946fd0dc59.jpg?id=2',22,'方维','2016/08/23','http://127.0.0.1:3000/img/open_1.jpg'),
(NULL,'HTML5 动画设计与页面构成','http://127.0.0.1:3000/img/567a0bca364fa.jpg?id=3',65,'邵山欢老师','2015/12/02','http://127.0.0.1:3000/img/open_3.jpg'),
(NULL,'第122讲 Web前端开发之DOM编程','http://127.0.0.1:3000/img/567a093353f8e.jpg?id=4',109,'刘志华','2015/03/03','http://127.0.0.1:3000/img/open_4.jpg'),
(NULL,'UI项目实战 — 快速打造隐私相册写实图标','http://127.0.0.1:3000/img/57cd0d1946da0.jpg?id=5',28,'华夏梁子','2015/11/10','http://127.0.0.1:3000/img/liang.jpg'),
(NULL,'商业海报制作','http://127.0.0.1:3000/img/57cd0d1946da0.jpg?id=6',98,'华夏梁子','2015/12/18','http://127.0.0.1:3000/img/liang.jpg'),
(NULL,'第125讲 人像后期处理技法一','http://127.0.0.1:3000/img/567a0909bbb59.jpg?id=7',56,'刘俊言','2015/03/24','http://127.0.0.1:3000/img/open_6.jpg'),
(NULL,'Photoshop 基础实战课','http://127.0.0.1:3000/img/553621adefbc0.jpg?id=8',14,'华夏梁子','2015/12/18','http://127.0.0.1:3000/img/liang.jpg'),
(NULL,'多线程多进程那些事','http://127.0.0.1:3000/img/57c95082a963e.jpg?id=9',80,'刘志华','2015/11/18','http://127.0.0.1:3000/img/open_4.jpg'),
(NULL,'PHP MySQL函数库','http://127.0.0.1:3000/img/567a0dd176d84.jpg?id=10',78,'刘志华','2015/12/09','http://127.0.0.1:3000/img/open_4.jpg');


/*移动端首页grid*/
CREATE TABLE ucai_course(
	id INT PRIMARY KEY AUTO_INCREMENT,
	cid INT,
	t_name VARCHAR(64),
	t_pic VARCHAR(64),
	time VARCHAR(64),
	pic VARCHAR(128),
	content VARCHAR(128),
	s_time VARCHAR(64),
	watch INT
);
INSERT INTO ucai_course VALUES(NULL,1,'方维','http://127.0.0.1:3000/img/open_1.jpg','2015/12/18','http://127.0.0.1:3000/img/57c9465cae6a9.jpg','React前端页面开发','29‘39‘',100);
INSERT INTO ucai_course VALUES(NULL,2,'邵山欢老师','http://127.0.0.1:3000/img/open_3.jpg','2015/12/02','http://127.0.0.1:3000/img/567a0bca364fa.jpg','HTML5 动画设计与页面构成','19‘29‘',70);
INSERT INTO ucai_course VALUES(NULL,3,'刘志华','http://127.0.0.1:3000/img/open_4.jpg','2017/12/10','http://127.0.0.1:3000/img/567a093353f8e.jpg','第122讲 Web前端开发之DOM编程','20‘39‘',66);
INSERT INTO ucai_course VALUES(NULL,4,'刘俊言','http://127.0.0.1:3000/img/open_6.jpg','2015/12/18','http://127.0.0.1:3000/img/567a0909bbb59.jpg','第125讲 人像后期处理技法一','21‘39‘',54);



CREATE TABLE ucai_fight(
	id INT PRIMARY KEY AUTO_INCREMENT,
	cid INT,
	pic VARCHAR(128),
	content VARCHAR(128),
	price INT(16),
	classify VARCHAR(16),
	watch INT,
	t_name VARCHAR(64),
	t_pic VARCHAR(64),
	s_time VARCHAR(64)
);
INSERT INTO ucai_fight VALUES(NULL,5,'http://127.0.0.1:3000/img/567a0dd176d84.jpg','PHP MySQL函数库',322,'高级',1866,'方维','http://127.0.0.1:3000/img/open_1.jpg','29‘39‘');
INSERT INTO ucai_fight VALUES(NULL,6,'http://127.0.0.1:3000/img/57c95082a963e.jpg','多线程多进程那些事',382,'初级',1922,'邵山欢老师','http://127.0.0.1:3000/img/open_3.jpg','19‘29‘');
INSERT INTO ucai_fight VALUES(NULL,7,'http://127.0.0.1:3000/img/553621adefbc0.jpg','Photoshop 基础实战课',129,'高级',2922,'刘志华','http://127.0.0.1:3000/img/open_4.jpg','20‘39‘');
INSERT INTO ucai_fight VALUES(NULL,8,'http://127.0.0.1:3000/img/57c9465cae6a9.jpg','React前端页面开发',299,'高级',822,'刘俊言','http://127.0.0.1:3000/img/open_6.jpg','21‘39‘');
INSERT INTO ucai_fight VALUES(NULL,9,'http://127.0.0.1:3000/img/57cd0d1946da0.jpg','UI项目实战 — 快速打造隐私相册写实图标',199,'高级',66,'方维','http://127.0.0.1:3000/img/open_1.jpg','29‘39‘');




