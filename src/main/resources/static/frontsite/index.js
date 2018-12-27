$(function() {
    getBottomNewsData(0);
	var $activeMasker = $('.active-masker');
	var d1 = $.Deferred();
	var d2 = $.Deferred();
	var imgSrc = $activeMasker.find("dt").attr("data-src");
	if(imgSrc){
		var img = new Image();
		$(img).one('load',function(){
			d2.resolve({
				width:this.width,
				height:this.height,
				url:this.src
			});
		});
		img.src = imgSrc;
	};
	function changePosit(obj,ele){
		$(ele).css("width",obj['width'] + "px");
		$(ele).css("height",obj['height'] + "px");
		$(ele).css("margin-left","-" + parseInt(obj['width']/2) + "px");
		$(ele).css("margin-top","-" + parseInt(obj['height']/2) + "px");
		$(ele).find("dt").css("background","url("+obj['url']+") center center no-repeat");
	};
	if(is_first_index){
		$.get("/base/findCityList", {}, function(data) {
			if(data.status) {
				$('.area-list').html(data.info);
				$('.area-tap span').removeClass('active');
				$('.aw_city_title_' + data.url).addClass('active');
			}
		});
		$('.aw_index_address').removeClass('aw_hide');
		
	}
	else{
		if(!$.getSession('isMasker')){
			$.when(d2).done(function (data) {
				changePosit(data,"#posterBox");
				var timer = setTimeout(function(){
						console.log(data)
						$.setSession('isMasker',1);
						$activeMasker.show();
						clearTimeout(timer);
					
				},1000);
			});
		}
	};
	$('.guess button').on('click', function () {
		$('.aw_index_address').addClass('aw_hide');
		$.setSession('isMasker',1);
		$.when(d2).done(function (data) {
			changePosit(data,"#posterBox");
			var timer = setTimeout(function(){
					console.log(data);
					$activeMasker.show();
					clearTimeout(timer);
				
			},3000);
		});
	});
	$("body").on('click',".select-area-box table i",function(){
		$.when(d1,d2).done(function (data,datas) {
			changePosit(datas,"#posterBox");
	    	$.setSession('isMasker',1);
			var timer = setTimeout(function(){
				$activeMasker.show();
				clearTimeout(timer);
			},3000);
		});
	});
	$("body").on("click","#closeActiveModal",function(){
		$activeMasker.hide();
	});
	$("body").on("click",".active-masker .iconfont",function(){
		$activeMasker.hide();
	});
	$("body").on("click",".active-masker .btn",function(){
		$activeMasker.hide();
	});
	/*城市切换 重新请求数据--开始*/
	var city_id;
	//选择城市
	init_select_city({
		aw_top_city_select_before:function () {
			$('.aw_make_spinner').removeClass('aw_hide');
		},
		aw_top_city_select_after: function(id) {
			city_id = id;
			section_city(city_id);
		},
		aw_first_city_select_after:function () {
			$('.aw_index_address').addClass('aw_hide');
			$('.aw_make_spinner').addClass('aw_hide');
			d1.resolve();
		}
	});
	section_city(cityId);
	function section_city(city_id){
		//合作院校
		$.get("/Index/parternerSchool", {
			section_id: 4,
			city_code: city_id
		}, function(data) {
			if(data.status) {
				//console.log(city_id);
				$('.aw_parternerSchool').html(data.info);
				/*院校轮播图初始化--开始*/
				$('#flexslider2').flexslider({
					itemWidth:372,
					controlNav:false,
					itemMargin:12,
					animation: "slide",
					animationLoop:true,
					directionNav: true,
					pauseOnAction: false,
					slideshowSpeed:3000
				});
				/*院校轮播图初始化--结束*/
			}
		});
		$.get("/Index/sectionList", {
			city_code: city_id
		}, function(data) {
			//console.log(city_id);
			if(data.status) {
				$('.aw_sectionList1').html(data.info.con1);
				lazyImg('lazy-two');
			}
		});
		$.get("/Index/sectionList", {
			city_code: city_id
		}, function(data) {
			if(data.status) {
				$('.aw_sectionList2').html(data.info.con2);
				lazyImg('lazy-three');
			}
		});
		$.get("/Index/sectionList", {
			city_code: city_id
		}, function(data) {
			if(data.status) {
				$('.aw_sectionList3').html(data.info.con3);
				lazyImg('lazy-four');
			}
		});
	}
	
	/*城市切换 重新请求数据--结束*/
	/*轮播图banner初始化 开始*/
	$('#flexslider1').flexslider({
		animation: "fade",
		directionNav: true,
		pauseOnAction: false,
		pauseOnHover:true,
		slideshowSpeed: 7000,
		smoothHeight:true,
		manualControlEvent:"hover"
	});
	/*轮播图banner初始化--结束*/
	/*图片懒加载--开始*/
	lazyImg('lazy-one');
	/*图片懒加载--结束*/

	var $schoolListEle = $(".school-select");
	var $leftNavEle = $(".leftnav");
	/*二级菜单--鼠标悬停--开始*/
	$('body').on('mousemove', '.over-class', function(event) {
		$schoolListEle.hide();
		var num = $(this).attr("data-num");
		$leftNavEle.addClass('show-sel-list');
		$($schoolListEle[num]).show();
	})

	/*二级菜单--鼠标悬停--结束*/

	/*二级菜单--鼠标离开 --开始*/
	$('body').on('mouseleave', '.leftnav', function(e) {
		$leftNavEle.removeClass('show-sel-list');
		$schoolListEle.hide();

	})
	/*二级菜单--鼠标离开--结束*/

	$('body').on('mouseenter', '.leave-class', function(e) {
		$leftNavEle.removeClass('show-sel-list');
		$schoolListEle.hide();

	})
	var $videoBox = $(".video-img");
	/*视频播放切换--开始*/
	$('body').on('click','.video-list li',function(){
		var link = $(this).attr('data-type');
		var str = '';
		str+= '<video preload="meta" class="videoCon" src="'+ link +'" controls style="height: 100%;width: 100%;">';
		str+= '<embed class="videoCon"  autostart=false  src="'+ link +'" allowFullScreen="true" quality="high" wmode="transparent" width="498" height="290" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>';
		str+='</video>';
		$videoBox.empty();
		$videoBox.append(str);
		
	})

	/*视频播放切换--结束*/
	$("body").on('click','.closeActive',function(){
		$(this).parents('.avtiveParent').slideUp();
	});
	$("body").on("click","#oranger a",function(){
		$(this).siblings().removeClass("hover");
		$(this).addClass("hover");
        var index = $(this).index();
		getBottomNewsData(index);
	});

	function getBottomNewsData(index)
	{
        $.get("/Index/getEducationNews", {
            index: index
        }, function(data) {
            console.log(index);
            if(data.status) {
                //console.log(111);
                $('.aw_indexnews').html(data.info);
                  lazyImg('lazy-two');
            }
        });
	}

	var windowHeight = $(document.body).height() + $(".copyright").outerHeight();
	$activeFooterBox = $(".active-footer-box");
	console.log(windowHeight)
	var $hideScroll = $("#hideScroll");
	$(window).scroll(function() {
		var scrollTop =$hideScroll.offset().top - $(this).scrollTop();
		console.log(scrollTop)
		if(scrollTop < windowHeight) {
			$activeFooterBox.css("position","relative");
		} else {
			$activeFooterBox.css("position","fixed");
		}
	})
})