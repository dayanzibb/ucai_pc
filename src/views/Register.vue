<template>
  <div class="container">
        <p class="mt-4"><a href="index.html" class="text-muted ml-2"><span class="fa fa-home text-muted mr-2"></span><small>返回首页</small></a></p>
        <div id="register-box" class="m-auto pt-5">
            <p class="text-center"><img src="img/logov5-2.png" class="w-50"/></p>
            <div class="mt-5">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text fa fa-mobile-phone fa-3x p-0 px-3 bg-transparent"></span>
                    </div>
                    <input type="text" class="form-control" placeholder="手机号码" v-model="phone">
                </div>
                <p class="text-danger" v-show="!phone_isshow">请输入11位手机号码</p>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text fa fa-barcode fa-2x p-0 px-3 py-2 bg-transparent"></span>
                    </div>
                    <input type="text" class="form-control px-2" placeholder="验证码" v-model="commit">
                    <div class="input-group-append">
                        <a href="#" class="input-group-text bg-transparent text-muted p-0">
                        		<canvas id="d3" width="100" height="50">
						        您的浏览器版本太低，请升级！
						    </canvas>
                        </a>
                    </div>
                </div>
                <p class="text-danger" v-show="!commit_isshow">验证码有误</p>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text fa fa-user fa-2x p-0 px-3 py-2 bg-transparent"></span>
                    </div>
                    <input type="text" class="form-control" placeholder="用户名" v-model="uname">
                </div>
                <p class="text-danger" v-show="!uname_isshow">用户名不能为空</p>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text fa fa-key fa-2x p-0 px-3 py-2 bg-transparent"></span>
                    </div>
                    <input type="password" class="form-control px-2" placeholder="请输入6-16位密码" v-model="upwd">
                </div>
                <p class="text-danger" v-show="!upwd_isshow">请输入6-16位密码</p>
                <ul class="list-unstyled pull-right">
		            	<li>已注册，<router-link to="/login" class="text-muted">立即登录</router-link></li>
		         </ul>
		         <button class="btn btn-block btn-register text-white" id="sub" @click="sub">注册</button>
		         <button class="btn btn-block mt-4 btn-email">邮箱注册</button>	        
            </div>
        </div>
    </div>
</template>

<script>
import "@/assets/css/register.css"
import "@/assets/css/font-awesome.css"
import "@/assets/css/font-awesome.min.css"	
import "@/assets/fonts/fontawesome-webfont.svg"
import axios from "axios"
import Qs from "qs"

export default {
	data:function(){
		return {
			phone:"",
			uname:"",
			upwd:"",
			commit:"",
			str:"",
			phone_isshow:true,
			uname_isshow:true,
			upwd_isshow:true,
			commit_isshow:true,
			disabled:true
		}
	},
	created:function(){
			
	},
	updated:function(){  
    	this.comfirm();
	},
  mounted(){
  	    var d3=document.getElementById("d3");
        var ctx=d3.getContext("2d");
        //1、创建矩形为其填充颜色
        ctx.fillStyle=rc(180,233);
        ctx.fillRect(0,0,100,50);
        //2、创建字符串池
        var pool="ABCDEFGHIJKL123";
        //3、随机获取字符串池一个字符绘制4
        var list=[];
        for(var i=0;i<4;i++){
            var c=pool[rn(0,pool.length)];//随机获取一个字符
            list[i]=c;
            //绘制一个字符
            ctx.textBaseline="top";//设置基线
            ctx.fillStyle=rc(80,180);//文本填充颜色
            ctx.font="23px sans-serif";//字体大小
            ctx.fillText(c,i*25+5,10);//绘制字符
        }
        this.str=list.join("");
        //console.log(this.str);
        //4、5条干扰线
        for(var i=0;i<5;i++){
            ctx.strokeStyle=rc(0,255);//设置随机色
            ctx.beginPath();//开始新路径
            ctx.moveTo(rn(0,120),rn(0,30));//随机移动到某个点
            ctx.lineTo(rn(0,120),rn(0,30));//随机到某点画直线
            ctx.stroke();//描边
        }
        //5、20个干扰点
        for(var i=0;i<20;i++){
            ctx.fillStyle=rc(0,255);//设置随机色
            ctx.beginPath();//开始新路径
            ctx.arc(rn(0,120),rn(0,30),0.5,0,2*Math.PI);//绘制圆并填充
            ctx.fill();
        }

        //返回一个指定范围内的随机整数
        function rn(min,max){
            var n=Math.random()*(max-min)+min;
            return Math.floor(n);
        }
        //返回一个指定范围内的随机颜色
        function rc(min,max){
            var r=rn(min,max);
            var g=rn(min,max);
            var b=rn(min,max);
            return `rgb(${r},${g},${b})`;
        }
  	
  	
  	
  	
  	
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
    $("#sub").prop("disabled",true);
     //this.comfirm()
  },
	methods:{
		comfirm(){
			if(this.commit!=this.str){
				this.commit_isshow=false;
			}else{
				this.commit_isshow=true;
			}
			var reg_phone=/^[0-9]{11}$/;
			if(!(reg_phone.test(this.phone))){
				this.phone_isshow=false;
			}else{
				this.phone_isshow=true;
			}
			var uname=this.uname;
			if(uname==""){
				this.uname_isshow=false;
			}else{
				this.uname_isshow=true;
			}
			var reg_upwd=/^(\w|[-]|[*]){6,16}$/;
			if(!(reg_upwd.test(this.upwd))){
				this.upwd_isshow=false;
			}else{
				this.upwd_isshow=true;
			}
			if(this.phone_isshow&&this.uname_isshow&&this.upwd_isshow&&this.commit_isshow){
				$("#sub").prop("disabled",false);
			}else{
				$("#sub").prop("disabled",true);
			}
		},
		sub(){
			axios.post("http://localhost:3000/register",
				Qs.stringify({uname:this.uname,upwd:this.upwd,phone:this.phone}))
			.then(result=>{
       // console.log(result);
				alert("注册成功");
				this.$router.push("/login");
	         })
         }

     }
}
</script>
<style>
</style>