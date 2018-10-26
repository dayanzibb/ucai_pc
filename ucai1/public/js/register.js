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

new Vue({
	el:"#register-box",
	data:function(){
		return {
			phone:"",
			uname:"",
			upwd:"",
			phone_isshow:true,
			uname_isshow:true,
			upwd_isshow:true,
			disabled:true
		}
	},
	created:function(){
		$("#sub").prop("disabled",true);
		$("input").blur(function(){
			this.comfirm()
		})
	},
	updated:function(){
		this.comfirm()
	},
	methods:{
		comfirm(){
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
			if(this.phone_isshow&&this.uname_isshow&&this.upwd_isshow){
				$("#sub").prop("disabled",false);
			}else{
				$("#sub").prop("disabled",true);
			}
		},
		sub(){
			axios.post("http://localhost:3000/register",
				Qs.stringify({uname:this.uname,upwd:this.upwd,phone:this.phone}))
			.then(result=>{
				alert("注册成功");
				location.replace("http://localhost:3000/login.html");
	         })
         }
     }
})