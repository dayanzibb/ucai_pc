<template>
	<div class="openclass">
		<div class="container bg-white" id="classcontent">
       	 <div class="row mx-0 p-3">
            <div class="col-md-6 col-sm-12">
            <router-link to="/" class="btn btn-light text-white font-weight-bold  mr-4">
                <span class="fa fa-angle-left "></span>
            </router-link>
            <h6 class="d-inline-block font-weight-bold">{{openclass_list.title}}</h6>
        </div>
            <div class="col-md-6 col-sm-12 position-relative">
                <div class="float-right share"  @mousemove="show">
                    <span class="small ml-4">分享到</span>
                </div>
                 <ul class="list-unstyled position-absolute dropdown" v-show="!isshow" @mouseleave="noshow">
	                	<li @mousemove="openbox" @mouseleave="closebox">微信朋友圈</li>
	                	<li>开心网</li>
	                	<li>人人网</li>
	                	<li>QQ空间</li>
	                	<li>新浪微博</li>
	                	<li>腾讯微博</li>
                	</ul>
                	<div class="position-absolute canvas text-center" v-show="!open">
                		<img src="http://127.0.0.1:3000/img/download.png"/>
                		<span class="small d-block mt-1">分享到微信朋友圈</span>
                	</div>
            </div>
        </div>
        <div class="row mx-0">
            <div class="col-md-5 p-0">
                <img :src="openclass_list.pic_md" class="w-100">
            </div>
            <div class="col-md-7 px-0 w-100">
               <table class="w-100">
                   <tr>
                       <td  class="w-50">报名人数：<span>{{openclass_list.count}}</span></td>
                       <td rowspan="2"  class="w-50">开课时间： <span>{{openclass_list.time}}</span></td>
                   </tr>
                   <tr>
                       <td>课程等级：<span>{{openclass_list.level}}</span></td>
                   </tr>
                   <tr>
                       <td>主讲老师：<span>{{openclass_list.teacher_name}}</span></td>
                       <td class="backopen text-white">观看回放</td>
                   </tr>
               </table>
            </div>
        </div>
    </div>
		<div class="container mt-4" id="coursedetailes">
		<div class="row mx-0">
			<div class="col-xs-12 col-md-8 bg-white">
				<nav class="mt-3">
					  <div class="nav nav-tabs" id="nav-tab" role="tablist">
					    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">课程详情</a>
					    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">课程评价</a>
					    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">课程问答</a>
					  </div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
					  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
					  	<div class="row mx-0">
					  		<div class="col">
					  			<h6 class="mt-4 ml-2 text-dark">课程简介</h6>
					  		</div>
					  		<div class="col">
					  			<a href="#" class="mt-4 mr-2 float-right">
					  				<span class="fa fa-cloud-download"></span>
					  				下载资源
					  			</a>
					  		</div>
					  	</div>
					  	<div class="row border-0 mx-0">
					  		<img :src="openclass_list.pic_md" class="w-25 h-25 p-2">
					  		<div class="text-dark ml-2 content">{{openclass_list.content}}</div>
					  	</div>
					  	<div class="row mx-0">
					  		<div class="col">
					  			<h6 class="mt-4 ml-2 text-dark">课程评价</h6>
					  		</div>
					  	</div>
				  		<ul class="list-unstyled mb-3" v-if="iscomment">
						  <li class="media mt-3" v-for="item in comment_list">
						    <img class="mr-3 media-img ml-3" :src="item.pic_head">
						    <div class="media-body">
						      <h6 class="p-1">
						      	<a  href="#" class="mt-0 mb-1 d-block text-muted">
						      	{{item.name}}
						      	<img src="http://127.0.0.1:3000/img/v_02.gif"/>
						      </a>
						      </h6>
						       <h6 class="p-1 text-dark">{{item.comment}}</h6>
						       <h6 class="p-1 text-muted">发布时间：{{item.comment_time}}</h6>
						    </div>
						  </li>
						</ul>
						<div class="text-center" v-else>
							<span class="fa fa-comments fa-5x mt-2"></span>
							<p class="text-muted">该课程暂无评价</p>
						</div>
					  </div>
					  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
					  	<ul class="list-unstyled mb-0" v-if="iscomment">
						  <li class="media mt-3" v-for="item in comment_list">
						    <img class="mr-3 media-img" :src="item.pic_head">
						    <div class="media-body">
						      <h6 class="p-1">
						      	<a  href="#" class="mt-0 mb-1 d-block text-muted">
						      	{{item.name}}
						      	<img src="http://127.0.0.1:3000/img/v_02.gif"/>
						      </a>
						      </h6>
						       <h6 class="p-1 text-dark">{{item.comment}}</h6>
						       <h6 class="p-1 text-muted">发布时间：{{item.comment_time}}</h6>
						    </div>
						  </li>
						</ul>
						<div class="text-center" v-else>
							<span class="fa fa-comments fa-5x mt-2"></span>
							<p class="text-muted">该课程暂无评价</p>
						</div>
					  </div>
					  <div class="tab-pane fad pb-4" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
					  	<nav class="nav mt-2">
						  <a class="nav-link active small text-dark" href="#">所有问题</a>
						  <a class="nav-link small text-muted" href="#">已解决</a>
						  <a class="nav-link small text-muted" href="#">未解决</a>
						</nav>
						<div class="text-center">
							<span class="fa fa-spinner fa-spin fa-2x text-dark mr-2 "></span>
							<h5 class="d-inline text-dark">正在努力加载中</h5>
						</div>
					  </div>
					</div>
			</div>
			<div class="col-xs-12 col-md-4 bg-white pr-0">
				<div class="teacher-top bg-white pt-3 pb-2 px-2">
					<h6 class="pb-2">授课讲师</h6>
					<div>
						<img :src="openclass_list.teacher_pic"/>
						<h6 class="mt-3 ml-3 border-0 small">{{openclass_list.teacher_name}}</h6>
					</div>
				</div>
				<div class="teacher-bottom bg-white mt-4 pt-3 pb-2 px-2">
					<h6 class="pb-2 mb-0">相关课程</h6>
					<ul class="list-unstyled">
						<li class="pt-3 d-flex" v-for="item in about_list">
							<div><img :src="item.pic_url" /></div>
							<a href="#" class="text-dark small ml-2">{{item.content}}</a>
						</li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="teacher-foot bg-white pt-3 pb-2 px-2 mt-4">
					<h6 class="pb-2">课程动态</h6>
					<div>
						<h6 class="mt-3 ml-3 border-0 small">暂无动态</h6>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</template>
<script>
import "jquery"
import "popper.js"
import "bootstrap"
import "@/assets/css/openclass.css"
import "@/assets/css/toTop.css"
import "@/assets/css/bootstrap.css"
import "@/assets/js/jquery-3.2.1.js"
import "@/assets/css/base.css"
import "@/assets/css/font-awesome.css"
import "@/assets/css/font-awesome.min.css"	
import "@/assets/fonts/fontawesome-webfont.svg"
	export default{
		data(){
			return {
				isshow:true,
				iscomment:true,
				open:true,
				openclass_list:{},
				comment_list:[],
				about_list:[],
				id:this.$route.params.id
			}
		},
		created(){
			this.getopenclass();
			this.getcomment();
			this.aboutlist();
		},
		methods:{
			show(){
				//console.log(111);
				this.isshow=false;
			},
			noshow(){
				this.isshow=true;
			},
			openbox(){
				this.open=false;
			},
			closebox(){
				this.open=true;
			},
			getopenclass(){
				this.$axios.get("http://localhost:3000/openclass?id="+this.id).then(result=>{
						this.openclass_list=result.data[0];
						//console.log(this.openclass_list);
				})
		   },
		   getcomment(){
		   		this.$axios.get("http://localhost:3000/comment?cid="+this.id).then(result=>{
						this.comment_list=result.data;
						if(result.data=='{code:-1}'){
							this.iscomment=false;
						}else{
							this.iscomment=true;
						}
						
				})
		   },
		   aboutlist(){
		   		this.$axios.get("http://localhost:3000/about?pic_id="+this.id).then(result=>{
						this.about_list=result.data;
						//console.log(this.about_list);
						
				})
		   }
		}
	}
</script>

<style>
</style>