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



