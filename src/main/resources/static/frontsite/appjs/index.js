var prefix = "/edu/university";

$(function() {
    load();
});

function load() {
    //alert('ajax请求之前');
    $.ajax({
        url : prefix + "/getIndexUniversities",
        async : true,
        type : "POST",
        /*data : {
            "type" : "query",
            "id" : id
        },*/
        //dataType : "json",
        success : function (r) {
            if (r.code == 200){
                var universities = r.data;
                var e = '';
                for (var i = 0;i < universities.length;i++){
                    var data = universities[i];
                    e += '<div class="col-md-12">\n' +
                        '    <div class="single-product">\n' +
                        '        <div class="product-img">\n' +
                        '            <a href="single-product.html">\n' +
                        '                <img class="first-img" src="/frontsite/img/product/product1.jpg" alt="">\n' +
                        '            </a>\n' +
                        '            <span class="sticker">Hot</span>\n' +
                        '            <div class="product-action">\n' +
                        '                <ul>\n' +
                        '                    <li><a href="cart.html"><i class="ion-bag"></i></a></li>\n' +
                        '                    <li><a href="#open-modal" data-toggle="modal"><i class="ion-eye"></i></a></li>\n' +
                        '                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>\n' +
                        '                </ul>\n' +
                        '            </div>\n' +
                        '        </div>\n' +
                        '        <div class="product-content">\n' +
                        '            <h4><a href="single-product.html">' + data.name + '</a></h4>\n' +
                        '            <span class="blog-post-date">' + data.keyword + ' </span>\n' +
                        //'            <span class="post-separator">|</span>\n' +
                        //'            <span class="blog-post-date">3年 </span>\n' +
                        '        </div>\n' +
                        '    </div>\n' +
                        '</div>';
                }

                //alert(e);
                //$(".university-area").find('.bestsellerSlide').html(e);
            }
        },
        error : function() {
            alert("请求失败");
        }
    });
}