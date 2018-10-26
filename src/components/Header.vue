<template>
	<div id="header">
			<!--最顶部导航-->
		<div class="container-fluid bg-light top_nav">
			<div class="container">
				<ul class="nav">
					<li class="nav-item"><span class="nav-link px-0">中国IT职业教育O2O创新品牌</span></li>
					<li class="nav-item"><a href="#" class="nav-link text-muted pr-0">Java培训&nbsp;&nbsp;|</a></li>
					<li class="nav-item"><a href="#" class="nav-link text-muted pr-0 pl-2">HTML5培训&nbsp;&nbsp;|</a></li>
					<li class="nav-item"><span class="nav-link text-muted pr-0 pl-2">UI设计&nbsp;&nbsp;|</span></li>
					<li class="nav-item"><span class="nav-link text-muted pr-0 pl-2" >大数据培训</span></li>
					<li class="nav-item"><span class="nav-link tel pr-0 pl-2"><img src="http://127.0.0.1:3000/img/tell.png" class="mr-2"/>400-058-0010</span></li>
					<li class="nav-item"><span class="nav-link text-muted pr-0 pl-2">企业服务&nbsp;&nbsp;|</span></li>
					<li class="nav-item"><span class="nav-link text-muted pr-0 pl-2">教育部产学合作&nbsp;&nbsp;|</span></li>
					<li class="nav-item"><span class="nav-link text-muted pr-0 pl-2">协同育人公告</span></li>
				</ul>
			</div>
		</div>
		<!--主导航-->
		<div class="container my-2">
		<nav class="navbar navbar-expand-lg navbar-light px-2">
			<img src="http://127.0.0.1:3000/img/logo_03.png" alt="logo" class="navbar-brand"/>
			<button class="navbar-toggler" data-toggle="collapse" data-target="#c-nav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="navbar-collapse collapse" id="c-nav">
				<ul class="navbar-nav">
					<li class="nav-item"><router-link to="/" class="nav-link font-weight-bold ml-4">首页</router-link></li>
					<li class="nav-item"><router-link to="/about"class="nav-link font-weight-bold ml-4">关于我们</router-link></li>
					<li class="nav-item"><router-link to="/teacher" class="nav-link font-weight-bold ml-4">师资团队</router-link></li>
					<li class="nav-item"><router-link to="/" class="nav-link font-weight-bold ml-4">就业榜单</router-link></li>
					<li class="nav-item dropdown">
						<a href="#" class="nav-link font-weight-bold dropdown-toggle ml-4" id="navabarDropdown" role="button" data-toggle="dropdown">云课堂</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<router-link to="/openclass/1" class="dropdown-item nav-link font-weight-bold text-center px-0">直播课</router-link>
							<router-link to="/openclass/1" class="dropdown-item nav-link font-weight-bold text-center px-0">录播课</router-link>
						</div>
					</li>
					<li class="nav-item"><router-link to="/" class="nav-link font-weight-bold ml-4">社区</router-link></li>
					<li class="nav-item" v-if="!islogin"><router-link to="/register" class="nav-link d-inline-block">注册&nbsp;&nbsp;|&nbsp;&nbsp;</router-link><router-link to="/login" class="d-inline-block">登录</router-link></li>
 					<li class="nav-item ml-2" v-else><a href="register.html" class="nav-link d-inline-block">欢迎您！<span>{{uname}}</span></a><a id="btnSignout" @click.prevent="signout" href="#">注销</a></li>					
				</ul>
			</div>
		</nav>
	</div>
	</div>
</template>

<script>
import "@/assets/css/header.css"
import axios from "axios"
import qs from "qs"	
	
export default {
	data(){
 		return {islogin:false,uname:""}
	},
	methods:{
		signout(){
			sessionStorage.removeItem("uid");
			this.islogin=false;
		}
	},
	mounted(){
		var uid=sessionStorage.getItem("uid");
		 axios.post("http://localhost:3000/login/islogin",
            qs.stringify({uid:uid})
			//console.log(window.uid);
        )
            .then(res=>{
                this.islogin=res.data.ok==1;
                console.log(res.data);
				this.uname=res.data.uname;
            })
	}
}
</script>

<style>
</style>