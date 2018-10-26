//使用express构建web服务器 --11:25
const express = require('express');
const cors=require("cors");
const bodyParser = require('body-parser');
/*引入路由模块*/
var index=require("./routes/index");
var login=require("./routes/login");
var register=require("./routes/register");
var openclass=require("./routes/openclass");
var comment=require("./routes/comment");
var about=require("./routes/about");

//移动端
var grid=require("./routes/grid");

var app = express();
var server = app.listen(3000);

app.use(cors({
	orign:["http://127.0.0.1:8080",
		"http://localhost:8080"],
		credentials:true
}));
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static(__dirname+"/public"));
/*使用路由器来管理路由*/
app.use("/index",index);
app.use("/login",login);
app.use("/register",register);
app.use("/openclass",openclass);
app.use("/comment",comment);
app.use("/about",about);
app.use("/grid",grid)



