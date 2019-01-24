var prefix = "/university";


$('.category-menu-list').hide();

$(function() {
    load(1);
});

function orderLoad(orderMark) {
    var sort;
    if (orderMark == 0){//最新
        sort = 'create_time';
    } else {
        sort = 'if_proposal';
        $('.latest').removeClass("active");
    }
    load(1,null,sort,null,);
}

function load(page,area,sort,keyword){
    var limit = 20;
    $.ajax({
        url : prefix + "/pageList",
        async : true,
        type : "POST",
        data : {
            "page" : page,
            "limit" : limit,
            "area" : area,
            "sort" : sort,
            "keyword" : keyword
        },
        dataType : "json",
        success : function (r) {
            //alert(r);
            if (r.code == 200){
                var universities = r.data;
                var e = '';
                for (var i = 0;i < universities.length;i++){
                    var data = universities[i];
                    var s = '';
                    var specialties = data.specialties;
                    if (specialties && specialties.length > 0){
                        for (var j = 0;j < specialties.length;j++){
                            s += '<li><a href="/specialty/get/' + specialties[j].id + '">' + specialties[j].name + '</a></li>\n';
                        }
                    }

                    e += '<div class="product-list-item mb-40">\n' +
                        '    <div class="row">\n' +
                        '        <!--Single List Product Start-->\n' +
                        '        <div class="col-md-4">\n' +
                        '            <div class="single-product">\n' +
                        '                <div class="product-img">\n' +
                        '                    <a href="single-product.html">\n' +
                        '                            <img class="first-img" src="'+ data.logo +'" alt="">\n' +
                        //'                            <img class="hover-img" src="img/product/product7.jpg" alt="">\n' +
                        '                        </a>\n' +
                        '                        <span class="sticker">New</span>\n' +
                        '                </div>\n' +
                        '            </div>\n' +
                        '        </div>\n' +
                        '        <div class="row col-md-8">\n' +
                        '            <div class="product-content shop-list col-md-6">\n' +
                        '                <h4><a href="single-product.html">' + data.name + '</a></h4>\n' +
                        '                    <div class="product-price">\n' +
                        '                        <span class="blog-post-date">' + data.keyword + '</span>\n' +
                        '                    </div>\n' +
                        '                    <div class="product-reviews">\n' +
                        '                        <i class="ion-android-star"></i>\n' +
                        '                        <i class="ion-android-star"></i>\n' +
                        '                        <i class="ion-android-star"></i>\n' +
                        '                        <i class="ion-android-star"></i>\n' +
                        '                        <i class="ion-android-star"></i>\n' +
                        '                    </div>\n' +
                        '                    <div class="product-description">\n' +
                        '                        <p>' + data.description + '</p>\n' +
                        '                    </div>\n' +
                        '                    <div class="product-list-action">\n' +
                        '                        <ul>\n' +
                        '                            <li><a class="pro-add-btn" href="#"><i class="ion-heart"></i>立即报名</a></li>\n' +
                        '                            <li><a class="pro-add-btn" href="#open-modal"><i class="ion-chatbubble-working"></i>咨询</a></li>\n' +
                        '                            <!--<li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>-->\n' +
                        '                        </ul>\n' +
                        '                    </div>\n' +
                        '            </div>\n' +
                        '            <div class="product-content shop-list col-md-6 border-left-1">\n' +
                        '                <h4>推荐专业</h4>\n' +
                        '                <div class="specialty-tag-block blog-tag">\n' +
                        '                    <ul>\n' +
                        s +
                        /*'                        <li><a href="#">brand</a></li>\n' +
                        '                        <li><a href="#">black</a></li>\n' +
                        '                        <li><a href="#">white</a></li>\n' +
                        '                        <li><a href="#">chire</a></li>\n' +
                        '                        <li><a href="#">table</a></li>\n' +
                        '                        <li><a href="#">Lorem</a></li>\n' +
                        '                        <li><a href="#">ipsum</a></li>\n' +
                        '                        <li><a href="#">dolor</a></li>\n' +
                        '                        <li><a href="#">sit</a></li>\n' +
                        '                        <li><a href="#">amet</a></li>\n' +*/
                        '                    </ul>\n' +
                        '                </div>\n' +
                        '            </div>' +
                        '        </div>\n' +
                        '        <!--Single List Product End-->\n' +
                        '    </div>\n' +
                        '</div>';
                }

                //alert(e);
                $(".product-list-view").html(e);
            }
        },
        error : function() {
            //layer.msg("请求失败");
            //todo 无数据样式
        }
    });
}
//分页
layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function() {
    var laypage = layui.laypage //分页
        , layer = layui.layer //弹层

    var count = 0;
    //向世界问个好
    //layer.msg('Hello World');
    var area;
    var keyword;
    $.ajax({
        url: prefix + "/pageCount",
        type: "post",
        async: false,
        data : {
            "area" : area,
            "keyword" : keyword
        },
        success: function (r) {
            if (r.code == 200) {
                count = r.data;
            }
        }
    });
    //分页
    laypage.render({
        elem: 'pageDemo' //分页容器的id
        ,count: count //总页数
        ,layout: ['count', 'prev', 'page', 'next']
        ,limit: 20
        ,theme: '#ff6d00' //自定义选中色值
        //,skip: true //开启跳页
        ,jump: function(obj, first){
            if(!first){
                var keyword = '';
                var area = '';
                load(obj.curr);
                layer.msg('第'+ obj.curr +'页', {offset: 'b'});
            }
        }
    });
});