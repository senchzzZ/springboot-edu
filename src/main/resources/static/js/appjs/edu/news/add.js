$().ready(function() {
    $('.summernote').summernote({
        height : '220px',
        lang : 'zh-CN',
        callbacks: {
            onImageUpload: function(files, editor, $editable) {
                sendFile(files);
            }
        }
    });
    loadType();
	validateRule();
});

$.validator.setDefaults({
	submitHandler : function() {
		save();
	}
});
function save() {
    var introduction_sn = $("#introduction_sn").summernote('code');
    $("#introduction").val(introduction_sn);

    $.ajax({
		cache : true,
		type : "POST",
		url : "/edu/news/save",
		data : $('#signupForm').serialize(),// 你的formid
		async : false,
		error : function(request) {
			parent.layer.alert("Connection error");
		},
		success : function(data) {
			if (data.code == 0) {
				parent.layer.msg("操作成功");
				parent.reLoad();
				var index = parent.layer.getFrameIndex(window.name); // 获取窗口索引
				parent.layer.close(index);

			} else {
				parent.layer.alert(data.msg)
			}

		}
	});

}

layui.use('upload', function(){
    var upload = layui.upload;

    //缩略图注册
    upload.render({
        elem: '#banner_button', //绑定元素
        url: '/common/sysFile/upload', //上传接口
        accept: 'images',
        size: 2048,
        //auto: false,
        //bindAction: '#submit',
        choose: function(obj){
            //预读本地文件示例，不支持ie8
            obj.preview(function(index, file, result){
                $('#banner_img').attr({'src': result,'width':"120px",'height':'120px'}); //图片链接（base64）
            });
        },
        done: function(res){
            //上传完毕回调
            $("#banner").val(res.fileName);
            layer.msg(res.msg);
        }
        ,error: function(){
            //请求异常回调
            layer.alert("上传失败");
        }
    });
    //文件注册
    upload.render({
        elem: '#file_button', //绑定元素
        url: '/common/sysFile/upload', //上传接口
        accept: 'file',
        size: 2048,
        //auto: false,
        //bindAction: '#submit',
        done: function(res){
            //上传完毕回调
            $("#file").val(res.fileName);
            layer.msg(res.msg);
        }
        ,error: function(){
            //请求异常回调
            layer.alert("上传失败");
        }
    });
});


function loadType(){
    //证书类型
    $.ajax({
        url : '/common/dict/list/edu_news_type',
        success : function(data) {
            var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].name + '">' + data[i].name + '</option>'
            }
            $("#newsType").append(html);
            $("#newsType").chosen({
                maxHeight : 200
            });
            //点击事件
            $('#newsType').on('change', function(e, params) {
                var opt = {
                    query : {
                        type : params.selected,
                    }
                }
                $('#exampleTable').bootstrapTable('refresh', opt);
            });
        }
    });
}

function validateRule() {
	var icon = "<i class='fa fa-times-circle'></i> ";
	$("#signupForm").validate({
		rules : {
            title : {
				required : true
			}
		},
		messages : {
            title : {
				required : icon + "请输入标题"
			}
		}
	})
}