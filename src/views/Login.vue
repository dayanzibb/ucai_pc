<template>
  <div class="container">
        <p class="mt-4"><router-link to="/" class="text-muted ml-2"><span class="fa fa-home text-muted mr-2"></span><small>返回首页</small></router-link></p>
        <div id="login-box" class="m-auto pt-5">
            <p class="text-center"><img src="img/logov5-2.png" class="w-50"/></p>
            <div class="mt-5" id="outline">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text fa fa-user fa-2x p-0 px-3 py-2 bg-transparent"></span>
                    </div>
                    <input type="text" class="form-control" placeholder="用户名" v-model="uname">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text fa fa-lock fa-2x p-0 px-3 py-2 bg-transparent"></span>
                    </div>
                    <input type="password" class="form-control px-3" placeholder="密码" v-model="upwd">
                </div>
                <ul class="list-unstyled py-1">
                		<li class="float-left font-weight-bold text-muted"><input type="checkbox" class="mr-2"/>记住登录状态</li>
		            	<li class="float-right"><a href="password.html" class="text-muted">忘记密码？</a>|&nbsp;&nbsp;<router-link to="/register" class="text-muted">立即注册</router-link></li>
		         </ul>
		         <button class="btn btn-block btn-register text-white mt-5" @click="sub" id="btn">登录</button>
                 <p class="text-danger" v-show="!isshow">用户名或密码错误</p>    
            </div>
            <div class="mt-4 other-accounts">
            		<span class="float-left mt-1">其他方式登录：</span>
            		<a href="#" class="d-inline-block"></a>
            		<a href="#" class="d-inline-block"></a>
            		<a href="#" class="d-inline-block"></a>
            		<a href="#" class="d-inline-block"></a>
            </div>
        </div>

    </div>
</template>

<script>
import "@/assets/css/login.css"
import "@/assets/css/font-awesome.css"
import "@/assets/css/font-awesome.min.css"	
import "@/assets/fonts/fontawesome-webfont.svg"
import axios from "axios"
import Qs from "qs"
	
export default {
	data:function(){
		return {
			uname:"",
			upwd:"",
			isshow:true,
			disabled:true
		}
	},
	created:function(){
		this.comfirm()
	},
	updated:function(){
		this.comfirm()
	},
  mounted(){
    this.comfirm();
    var inputs=document.getElementsByTagName("input");
//console.log(inputs);
for(var input of inputs){
	input.onfocus=function(){
		var input=this;
//		input.parentNode.setAttribute("class",input.parentNode.getAttribute("class")+" "+"outline");
		input.parentNode.style.outline="2px solid rgba(109,173,247,.5)";
	}
	input.onblur=function(){
		var input=this;
		input.parentNode.style.outline="none";
	}
}
  },
	methods:{
		comfirm(){
			if(this.uname==""||this.upwd==""){
				$("#btn").prop("disabled",true);
			}else{
				$("#btn").prop("disabled",false);
			}
		},
		sub(){
			axios.post("http://localhost:3000/login",
				Qs.stringify({uname:this.uname,upwd:this.upwd}))
			.then(result=>{
				console.log(result);
				if(result.data.ok!=0){
					$("#btn").prop("disabled",false);
					//console.log(111);
					//window.uid=result.data.uid;
					var u=result.data.uid;
					sessionStorage.setItem("uid",u);
					this.isshow=true;
					alert("登录成功");
					this.$router.push("/");
				}else{
					//console.log(111);
					this.isshow=false;
					this.uname="";
					this.upwd="";
				}
	         })
         }
     }
}
</script>

<style>
</style>