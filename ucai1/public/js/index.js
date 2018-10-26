//设置页面大小变化时，自动刷新
var timeout = null; //onresize触发次数过多，设置定时器
window.onresize = function() {
	clearTimeout(timeout);
	timeout = setTimeout(function() { window.location.reload(); }, 100); //页面大小变化，重新加载页面以刷新MAP
}

//首页轮播左边导航
var tabs = document.querySelectorAll(
	"#lunbo div.nav-left>[data-toggle=tab]"
);
//console.log(tabs);
for(var tab of tabs) {
	tab.onmouseover = function() {
		var tab = this;
		var id = tab.getAttribute("name");
		var div = document.querySelector(id);
		var divs = div.parentNode.children;
		for(var d of divs) {
			d.style.zIndex = "";
		}
		div.style.zIndex = "100";
		var container = document.getElementById("left-nav");
		container.onmouseleave = function() {
			//console.log(111);
			div.style.zIndex = "";
		}
	}
}

//教师权威推荐的左右按钮和轮播
var ul = document.querySelector("#Teacher>div>ul");
var btn_prev = document.querySelector(
	"#Teacher>div>div:nth-child(2)>a>img"
);
var btn_next = document.querySelector(
	"#Teacher>div>div:last-child>a>img"
);
//左边按钮
btn_prev.onclick = function(e) {
	e.preventDefault();
	var btn = this;
	var ulWidth = $(ul).css('width');
	var ulMarginleft = $(ul).css('margin-left');
	if(ulWidth == "1420px") {
		switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-282px');
				break;
			case "-282px":
				$(ul).css('margin-left', '0');
				break;
		}
	} else if(ulWidth == "1590px") {
		switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-620px');
				break;
			case "-620px":
				$(ul).css('margin-left', '-310px');
				break;
			case "-310px":
				$(ul).css('margin-left', '0');
				break;
		}
	} else if(ulWidth == "1800px") {
		//console.log(ulWidth);
		switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-1060px');
				break;
			case "-1060px":
				$(ul).css('margin-left', '-680px');
				break;
			case "-680px":
				$(ul).css('margin-left', '-320px');
				break;
			case "-320px":
				$(ul).css('margin-left', '-0px');
				break;
		}
	} else if(ulWidth == "2200px") {
		console.log(ulWidth);
		switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-1760px');
				break;
			case "-1760px":
				$(ul).css('margin-left', '-1320px');
				break;
			case "-1320px":
				$(ul).css('margin-left', '-880px');
				break;
			case "-880px":
				$(ul).css('margin-left', '-440px');
				break;
			case "-440px":
				$(ul).css('margin-left', '0px');
				break;
		}
	}
}
//右边按钮
btn_next.onclick = function(e) {
	e.preventDefault();
	var ulWidth = $(ul).css('width');
	var ulMarginleft = $(ul).css('margin-left');
	var btn = this;
	if(ulWidth == "1420px") {
		switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-282px');
				break;
			case "-282px":
				$(ul).css('margin-left', '0');
				break;
		}
	} else if(ulWidth == "1590px") {
		switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-310px');
				break;
			case "-310px":
				$(ul).css('margin-left', '-620px');
				break;
			case "-620px":
				$(ul).css('margin-left', '0');
				break;
		}
	} else if(ulWidth == "1800px") {
		//console.log(ulWidth);
		switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-320px');
				break;
			case "-320px":
				$(ul).css('margin-left', '-680px');
				break;
			case "-680px":
				$(ul).css('margin-left', '-1060px');
				break;
			case "-1060px":
				$(ul).css('margin-left', '-0px');
				break;
		}
	} else if(ulWidth == "2200px") {
		//console.log(ulWidth);
		switch(ulMarginleft) {
			case "-1760px":
				$(ul).css('margin-left', '0px');
				break;
			case "0px":
				$(ul).css('margin-left', '-440px');
				break;
			case "-440px":
				$(ul).css('margin-left', '-880px');
				break;
			case "-880px":
				$(ul).css('margin-left', '-1320px');
				break;
			case "-1320px":
				$(ul).css('margin-left', '-1760px');
				break;
		}
	}
}
//权威推荐动画
function chang1() {
	var ulWidth = $(ul).css('width');
	var ulMarginleft = $(ul).css('margin-left');
	if(ulWidth == "1420px")
		switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-282px');
				break;
			case "-282px":
				$(ul).css('margin-left', '0');
				break;
		}
}

function chang2(){
	var ulWidth = $(ul).css('width');
	var ulMarginleft = $(ul).css('margin-left');
	if(ulWidth=="1590px")
	switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-310px');
				break;
			case "-310px":
				$(ul).css('margin-left', '-620px');
				break;
			case "-620px":
				$(ul).css('margin-left', '0');
				break;
		}
}

function chang3(){
	var ulWidth = $(ul).css('width');
	var ulMarginleft = $(ul).css('margin-left');
	if(ulWidth=="1800px")
	switch(ulMarginleft) {
			case "0px":
				$(ul).css('margin-left', '-320px');
				break;
			case "-320px":
				$(ul).css('margin-left', '-680px');
				break;
			case "-680px":
				$(ul).css('margin-left', '-1060px');
				break;
			case "-1060px":
				$(ul).css('margin-left', '-0px');
				break;
		}
}

function chang4(){
	var ulWidth = $(ul).css('width');
	var ulMarginleft = $(ul).css('margin-left');
	if(ulWidth=="2200px")
	switch(ulMarginleft) {
			case "-1760px":
				$(ul).css('margin-left', '0px');
				break;
			case "0px":
				$(ul).css('margin-left', '-440px');
				break;
			case "-440px":
				$(ul).css('margin-left', '-880px');
				break;
			case "-880px":
				$(ul).css('margin-left', '-1320px');
				break;
			case "-1320px":
				$(ul).css('margin-left', '-1760px');
				break;
		}
}
setInterval(chang1, 5000);
setInterval(chang2, 5000);
setInterval(chang3, 5000);
setInterval(chang4, 5000);

//优秀毕业学员遮罩层
var student_bg=document.querySelector("#Student #student-bg");
var student_mark=document.querySelector("#Student .mark");
var student=document.querySelector("#Student");
student_mark.onmouseover=function(){
	student_bg.style.display="none";
	student_mark.style.zIndex="0";
}
student.onmouseleave=function(){
	//console.log(student);
	student_bg.style.display="block";
	student_mark.style.zIndex="6";
}

// $(function(){
// 	$.ajax({
// 		url:"http://localhost:3000/index",
// 		type:"get",
// 		dataType:"json",
// 		success:function(res){
// 			//console.log(res[0].url);
// 			var html=`<div class="carousel-item active">
// 				<img src="${res[0].url}"/>
// 			</div>
// 			<div class="carousel-item">
// 				<img src="${res[1].url}"/>
// 			</div>
// 			<div class="carousel-item">
// 				<img src="${res[2].url}"/>
// 			</div>
// 			<div class="carousel-item">
// 				<img src="${res[3].url}"/>
// 			</div>`;
// 			$("#lunbo>.carousel-inner").html(html);
// 		}
// 	})
// })

new Vue({
	el:".carousel-inner",
	data:function(){
		return {
			list:[]
		}
	},
	created:function(){
		this.send();
	},
	methods:{
		send(){
			axios.get("http://localhost:3000/index").then(result=>{
				for(l of result.data){
					this.list.push(l.url);
				}
				//console.log(this.list);
	          })
         }
     }
})




