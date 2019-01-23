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
    var introduction = $("#introduction").val();
    $('#introduction_sn').summernote('code', introduction);

    var condition = $("#condition").val();
    $('#condition_sn').summernote('code', condition);

    validateRule();
});

$.validator.setDefaults({
	submitHandler : function() {
		update();
	}
});
function update() {
    var introduction_sn = $("#introduction_sn").summernote('code');
    $("#introduction").val(introduction_sn);

    var condition_sn = $("#condition_sn").summernote('code');
    $("#condition").val(condition_sn);
	$.ajax({
		cache : true,
		type : "POST",
		url : "/edu/university/update",
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

    //执行实例
    var uploadInst = upload.render({
        elem: '#logo_button', //绑定元素
        url: '/common/sysFile/upload', //上传接口
        accept: 'images',
        size: 2048,
        //auto: false,
        //bindAction: '#submit',
        choose: function(obj){
            //预读本地文件示例，不支持ie8
            obj.preview(function(index, file, result){
                $('#logo_img').attr({'src': result,'width':"120px",'height':'120px'}); //图片链接（base64）
            });
        },
        done: function(res){
            //上传完毕回调
            $("#logo").val(res.fileName);
        }
        ,error: function(){
            //请求异常回调
            parent.layer.alert("上传失败");
        }
    });
});

function validateRule() {
	var icon = "<i class='fa fa-times-circle'></i> ";
	$("#signupForm").validate({
		rules : {
			name : {
				required : true
			}
		},
		messages : {
			name : {
				required : icon + "请输入学校名称"
			}
		}
	})
}