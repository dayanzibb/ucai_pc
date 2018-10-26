<template>
  <div>
      <!--关于优才-->
    <div class="container-fluid" id="about">
        <!--关于优才-->
        <table></table>
        <h1 class="text-center text-white font-weight-bold">关于优才</h1>
        <p class="text-center text-white pt-2">优才，构建以教育为核心的互联网人才生态！</p>  
      <div class="container">
            <div class="d-flex about-uc">
                <div class="d-flex-box1">
                    <img src="img/bj.jpg"/>
                </div>
                <div class="bg-white px-5 pt-5">
                    <h4>优才简介</h4>
                    <p class="mt-4">优才网隶属于北京优才创智科技有限公司，旨在培养优秀的互联网核心岗位人才，以互联网和移动互联网研发人才需求为切入点，通过扎实知识基础、锻炼专业技能、提升职业素养，全面提升人才的核心竞争力。</p>
                    <p class="mt-3">优才集结业界最优秀的讲师和大牛顾问，倾心设计了横跨初、中、高级的全套课程体系，针对即将进入职场的学生和在职提升人群及互联网企业，提供一流的O2O教育和人才服务！</p>
                    <p class="mt-3">优才，构建以教育为核心的互联网人才生态！</p>
                    <ul class="list-unstyled mt-5">
                        <li>中国IT职业教育O2O创新品牌</li>
                        <li>创新工场旗下唯一一家职业教育公司</li>
                        <li>创业公社指定人才孵化战略合作基地</li>
                    </ul>
                </div>
            </div>
              <!--教学生活照片-->  
            <div id="life-photo" class="pt-5">
                <h4 class="text-center pt-4">教学生活照片</h4>
                <p class="text-center mt-3">宽敞的教室，舒适的宿舍，丰富多彩的教学活动</p>
                <div class="d-flex justify-content-between flex-wrap mt-4">
                    <div class="d1 m-auto">
                      <div class="float-left">
                        <div class="position-relative">
                          <img src="img/life.jpg"/>
                          <div class="position-absolute cover h5 text-white">优才总部</div>
                        </div>
                        <div class="mt-3 position-relative">
                          <img src="img/life2.jpg"/>
                          <div class="position-absolute cover h5 text-white">教学环境</div>
                        </div>
                      </div>
                      <div class="float-right position-relative">
                        <img src="img/huodong.jpg"/>
                        <div class="position-absolute cover h5 text-white">活动沙龙</div>
                      </div>
                    </div>
                    <div class="d2 m-auto">
                      <div>
                        <div class="float-left position-relative">
                          <img src="img/life3.jpg" />
                          <div class="position-absolute cover h5 text-white">苹果机房</div>
                        </div>
                        <div class="float-right position-relative">
                        <img src="img/life2.jpg" />
                        <div class="position-absolute cover h5 text-white">学生宿舍</div>
                      </div>
                      </div>
                      <div class="float-left mt-3 position-relative">
                        <img src="img/life6.png"/>
                        <div class="position-absolute cover h5 text-white">学员联谊活动</div>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--资质证书-->
    <div id="honours" class="mt-5">
        <h3 class="text-white">资质证书</h3> 
        <!--循环-->
        <div class="swiper row container">
            <ul class="three-d">
                <li>
                    <img src="img/zhuanli.jpg"/>
                </li>
                <li>
                    <img src="img/zhuanli2.jpg"/>
                </li>
                <li>
                    <img src="img/zhuanli3.jpg"/>
                </li>
                <li>
                    <img src="img/zhuanli4.jpg"/>
                </li>
                <li>
                    <img src="img/zhuanli5.jpg"/>
                </li>
            </ul>
        </div>
    </div>
    <!--乘车线路-->
    <div id="busline" class="mt-5">
      <h4 class="text-center">乘车线路</h4>
      <ul class="list-unstyled d-flex justify-content-center mt-4">
        <li class="bj city_active" data-toggle="item">北京</li>
        <li data-toggle="item">广州</li>
        <li data-toggle="item">成都</li>
        <li data-toggle="item">西安</li>
        <li data-toggle="item">郑州</li>
        <li data-toggle="item" >武汉</li>
        <li data-toggle="item">杭州</li>
        <li data-toggle="item">长沙</li>
        <li class="heb" data-toggle="item">哈尔滨</li>
      </ul>
    </div>
   <div id="map" class="mt-5 position-relative">
        <div class="map_mask position-absolute d-none"></div>
        <div class="map_city position-absolute">
            <!-- <p>点击地址可查询乘车路线</p> -->
            <div class="map_cont">
                <h4>北京总部校区</h4>
                <ul>
                    <li>地址：<a class="ad_end" href="#" target="_blank">北京市石景山区实兴东街11号朗诚大厦北楼2层</a></li>
                    <li>咨询电话：400-058-0010</li>
                    <li>开设课程：Android、iOS、UI、前端、PHP</li>
                </ul>
            </div>
            <div class="map_cont d-none">
                <h4>广州校区</h4>
                <ul>
                    <li>地址1：<a class="ad_end" href="http://j.map.baidu.com/ALQBH" target="_blank">广州市天河区大观中路95号科汇园F栋4楼</a></li>
                    <li>地址2：<a class="ad_end" href="http://j.map.baidu.com/MmQBH" target="_blank">广州市天河区中山大道中1035号盈富商务大楼4楼</a></li>
                    <li>咨询电话：400-058-0010</li>
                    <li>开设课程：Android、UI、前端、PHP</li>
                </ul>
            </div>
            <div class="map_cont d-none">
                <h4>成都校区</h4>
                <ul>
                    <li>地址1：<a class="ad_end" href="http://j.map.baidu.com/nfQBH" target="_blank">成都市龙泉驿区成龙大道1666号经开科技孵化园B2栋404</a></li>
                    <li>地址2：<a class="ad_end" href="http://j.map.baidu.com/7lQBH" target="_blank">成都市成华区339写字楼A座611</a></li>
                    <li>咨询电话：400-058-0010</li>
                    <li>开设课程：Android、UI、前端、PHP</li>
                </ul>
            </div>
            <div class="map_cont d-none">
                <h4>西安校区</h4>
                <ul>
                    <li>地址：<a class="ad_end" href="http://j.map.baidu.com/QW-BH" target="_blank">西安市雁塔区科技五路8号数字大厦1704</a></li>
                    <li>咨询电话：400-058-0010</li>
                    <li>开设课程：Android、UI、前端、PHP</li>
                </ul>
            </div>
            <div class="map_cont d-none">
                <h4>郑州校区</h4>
                <ul>
                    <li>地址：<a class="ad_end" href="http://j.map.baidu.com/kx-BH" target="_blank">
                    郑州市金水区金三路丰产路交汇处财富广场4号楼20层002室</a></li>
                    <li>咨询电话：400-058-0010</li>
                    <li>开设课程：Android、UI、前端、PHP</li>
                </ul>
            </div>
            <div class="map_cont d-none">
                <h4>武汉校区</h4>
                <ul>
                    <li>地址：<a class="ad_end" href="http://j.map.baidu.com/H7-BH" target="_blank">武汉市东湖高新开发区武大园路徽商大厦A座303</a></li>
                    <li>咨询电话：400-058-0010</li>
                    <li>开设课程：Android、UI、前端、PHP</li>
                </ul>
            </div>
            <div class="map_cont d-none">
                <h4>杭州校区</h4>
                <ul>
                    <li>地址：<a class="ad_end" href="http://j.map.baidu.com/BipyH" target="_blank">杭州市经济技术开发区学源街1158号文创大厦9楼901室</a></li>
                    <li>咨询电话：400-058-0010</li>
                    <li>开设课程：Android、UI、前端、PHP</li>
                </ul>
            </div>
            <div class="map_cont d-none">
                <h4>长沙校区</h4>
                <ul>
                    <li>地址：<a class="ad_end" href="http://j.map.baidu.com/zI-BH" target="_blank">长沙市天心区五一大道655号嘉顿新天地大厦1栋11楼1115室</a></li>
                    <li>咨询电话：400-058-0010</li>
                    <li>开设课程：Android、UI、前端、PHP</li>
                </ul>
            </div>
            <div class="map_cont d-none">
                <h4>哈尔滨校区</h4>
                <ul>
                    <li>地址：<a class="ad_end" href="http://j.map.baidu.com/LQ-BH" target="_blank">哈尔滨市长江路130号乐业大厦</a></li>
                    <li>咨询电话：400-058-0010</li>
                    <li>开设课程：Android、UI、前端、PHP</li>
                </ul>
            </div>
            <!-- 搜索框 -->
            <div class="screah">
                <input type="text" placeholder="输入您的位置，规划来校路线">
                <button type="button" class="line_way">规划路线</button>
            </div>
        </div>
        
        <iframe src="http://localhost:3000/map_bj.html" width="100%" height="505px" frameborder="0" scrolling="no"></iframe>
       	<iframe src="http://localhost:3000/map_gz.html" width="100%" height="505px" frameborder="0" scrolling="no"></iframe>
        <iframe src="http://localhost:3000/map_cd.html" width="100%" height="505px" frameborder="0" scrolling="no"></iframe>
        <iframe src="http://localhost:3000/map_xa.html" width="100%" height="505px" frameborder="0" scrolling="no"></iframe>
        <iframe src="http://localhost:3000/map_zz.html" width="100%" height="505px" frameborder="0" scrolling="no"></iframe>
        <iframe src="http://localhost:3000/map_wh.html" width="100%" height="505px" frameborder="0" scrolling="no"></iframe>
        <iframe src="http://localhost:3000/map_hz.html" width="100%" height="505px" frameborder="0" scrolling="no"></iframe>
        <iframe src="http://localhost:3000/map_cs.html" width="100%" height="505px" frameborder="0" scrolling="no"></iframe>
        <iframe src="http://localhost:3000/map_heb.html" width="100%" height="505px" frameborder="0" scrolling="no"></iframe>
        <div id="map_big" class="position-absolute"></div>
        <div id="map_transparent" class="position-absolute">
        </div>		
	  </div>
  </div>
</template>

<script>
import "@/assets/css/about.css"
	
	
export default {
	data(){
 		return {}
	},
  mounted(){
    $("#busline>ul").on("click","[data-toggle=item]",function(){
	var i=$("[data-toggle=item]").index($(this));
	$(this)
	.addClass("city_active")
	.siblings()
	.removeClass("city_active")
	.parent()
	.parent()
	.next()
	.children()
	.eq(1)
	.children(".map_cont")
	.addClass("d-none")
	.eq(i)
	.removeClass("d-none")
	.parent()
	.parent()
	.children("iframe")
	.addClass("d-none")
	.eq(i)
	.removeClass("d-none");
});

$("#busline>ul").click(function(){
	$("#map_big").addClass("map_show");
	setTimeout(function(){
	$("#map_big").removeClass("map_show");
	},10000)
})
$("#map").click(function(){
	$("#map_big").addClass(" map_show");
	$("#map_transparent").css("z-index","140").css("pointer-events","none");
	// $("#map_transparent").mouseenter(function(){
	// 	$("#map_big").addClass(" map_show");
	// })
})
$("#map").mouseleave(function(){
	$("#map_big").removeClass("map_show");
	$("#map_transparent").css("z-index","0");
	// window.location.reload();
})
  }
}
</script>
<style scoped>
@media screen and (max-width: 1200px){
  #about{
    margin-bottom:1300px!important;
  }
}

@media screen and (max-width: 768px) {
    #about{
        margin-bottom:1800px!important;
    }
}
</style>
