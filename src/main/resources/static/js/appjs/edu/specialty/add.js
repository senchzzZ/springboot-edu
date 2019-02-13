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
		url : "/edu/specialty/save",
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
    //学历
    $.ajax({
        url : '/common/dict/list/edu_level',
        success : function(data) {
            var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].name + '">' + data[i].name + '</option>'
            }
            $("#qualification").append(html);
            $("#qualification").chosen({
                maxHeight : 200
            });
            //点击事件
            $('#qualification').on('change', function(e, params) {
                var opt = {
                    query : {
                        type : params.selected,
                    }
                }
                $('#exampleTable').bootstrapTable('refresh', opt);
            });
        }
    });

    //专业类型
    $.ajax({
        url : '/common/dict/list/edu_specialty_type',
        success : function(data) {
            var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].name + '">' + data[i].name + '</option>'
            }
            $("#type").append(html);
            $("#type").chosen({
                maxHeight : 200
            });
            //点击事件
            $('#type').on('change', function(e, params) {
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