<template>
	<div class="sidebar position-fixed">
	<div class="wechat position-relative">
		<div class="position-absolute">
			<img src="img/uoucaiqrcode.jpg" />
			<p class="text-center">UCAI</p>
		</div>
	</div>
	<div class="zixun position-relative">
		<div class="text-white font-weight-bold text-center position-absolute pl-4">咨询我们</div>
	</div>
	<div class="download">
		<div class="text-white font-weight-bold text-center position-absolute pl-4">下载APP</div>
	</div>
	<div class="return">
		<div class="text-center position-absolute pl-4"><a href="#" class="text-white font-weight-bold">返回顶部</a></div>
	</div>
</div>
</template>

<script>
import "@/assets/css/toTop.css"
	
	export default {
		data(){
	 		return {}
		},
		mounted(){
			var returnTop=document.querySelector(".return");
				window.onscroll=function(){
					var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
					if(scrollTop>=500)
						returnTop.style.display="block";
					else
						returnTop.style.display="none";
				}
				console.log(returnTop);
				returnTop.onclick=function(e){
					e.preventDefault();
					window.scrollTo(0,0);
				}
		}
}
	

</script>

<style>
</style>
