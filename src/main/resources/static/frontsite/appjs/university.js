$('.category-menu-list').hide();

layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function() {
    var laydate = layui.laydate //日期
        , laypage = layui.laypage //分页
        , layer = layui.layer //弹层
        , table = layui.table //表格
        , carousel = layui.carousel //轮播
        , upload = layui.upload //上传
        , element = layui.element //元素操作
        , slider = layui.slider //滑块

    //向世界问个好
    layer.msg('Hello World');

    //分页
    laypage.render({
        elem: 'pageDemo' //分页容器的id
        ,count: 100 //总页数
        ,layout: ['count', 'prev', 'page', 'next', 'refresh']
        ,limit: 20
        ,theme: '#ff6d00' //自定义选中色值
        //,skip: true //开启跳页
        ,jump: function(obj, first){
            if(!first){
                layer.msg('第'+ obj.curr +'页', {offset: 'b'});
            }
        }
    });
});