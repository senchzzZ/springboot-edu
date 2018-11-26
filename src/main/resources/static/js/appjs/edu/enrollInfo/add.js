$().ready(function() {
    loadType();
	validateRule();
});

$.validator.setDefaults({
	submitHandler : function() {
		save();
	}
});
function save() {
	$.ajax({
		cache : true,
		type : "POST",
		url : "/edu/enrollInfo/save",
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
function loadType(){
    var html = "";
    $.ajax({
        url : '/common/dict/list/sex',
        success : function(data) {
            //加载数据
            for (var i = 0; i < data.length; i++) {
                //html += '<option value="' + data[i].value + '">' + data[i].name + '</option>'

				html += '<label class="radio-inline"><input type="radio" name="sex" value="' + data[i].value + '"/> ' + data[i].name + '</label>';
            }
            $(".i-checks").append(html);
            /*$(".chosen-select").chosen({
                maxHeight : 200
            });*/
            //点击事件
            /*$('.chosen-select').on('change', function(e, params) {
                console.log(params.selected);
                var opt = {
                    query : {
                        type : params.selected,
                    }
                }
                $('#exampleTable').bootstrapTable('refresh', opt);
            });*/
        }
    });
}

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
				required : icon + "请输入姓名"
			}
		}
	})
}