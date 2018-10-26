ajax("http://localhost:3000/toTop.html")
.then(res=>{
    document.getElementById("toTop").innerHTML=res;
    
	//右边侧导航回到顶部隐藏
	var returnTop=document.querySelector(".return");
	window.onscroll=function(){
		var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
		if(scrollTop>=500)
			returnTop.style.display="block";
		else
			returnTop.style.display="none";
	}
	//console.log(returnTop);
	returnTop.onclick=function(e){
		e.preventDefault();
		window.scrollTo(0,0);
	}
    
});