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
	el:"#outline",
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
				if(result.data!=""){
					$("#btn").prop("disabled",false)
					this.isshow=true;
					alert("登录成功");
					location.replace("http://localhost:3000/index.html");
				}else{
					this.isshow=false;
					this.uname="";
					this.upwd="";
				}
	         })
         }
     }
})