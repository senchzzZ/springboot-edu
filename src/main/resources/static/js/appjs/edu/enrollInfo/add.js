var nations = ["汉族","蒙古族","回族","藏族","维吾尔族","苗族","彝族","壮族","布依族","朝鲜族","满族","侗族","瑶族","白族","土家族",
    "哈尼族","哈萨克族","傣族","黎族","傈僳族","佤族","畲族","高山族","拉祜族","水族","东乡族","纳西族","景颇族","柯尔克孜族",
    "土族","达斡尔族","仫佬族","羌族","布朗族","撒拉族","毛南族","仡佬族","锡伯族","阿昌族","普米族","塔吉克族","怒族", "乌孜别克族",
    "俄罗斯族","鄂温克族","德昂族","保安族","裕固族","京族","塔塔尔族","独龙族","鄂伦春族","赫哲族","门巴族","珞巴族","基诺族"];


$().ready(function() {
    initNation();
    loadType();
    validateRule();
});

$.validator.setDefaults({
	submitHandler : function() {
		save();
	}
});
function save() {
    var address = $("#a_province").val() + $("#a_city").val() + $("#a_address").val()

	$.ajax({
		cache : true,
		type : "POST",
		url : "/edu/enrollInfo/save",
		data : $('#signupForm').serialize() + "&address=" + address,// 你的formid
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
function initNation(){
	var html = "";
    for ( var i in nations) {
        html += '<option value="' + nations[i] + '">' + nations[i] + '</option>'
    }
    $("#nation").append(html);

    $("#nation").chosen({
        maxHeight : 200
    });
    //点击事件
    $('#nation').on('change', function(e, params) {
        var opt = {
            query : {
                type : params.selected,
            }
        }
        $('#exampleTable').bootstrapTable('refresh', opt);
    });
}
function loadType(){
    /*$.ajax({
        url : '/common/dict/list/sex',
        success : function(data) {
        	var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                //html += '<option value="' + data[i].value + '">' + data[i].name + '</option>'

				html += '<label class="radio-inline"><input type="radio" name="sex" value="' + data[i].value + '"/> ' + data[i].name + '</label>';
            }
            $(".i-checks").append(html);
        }
    });*/
    //学历
    $.ajax({
        url : '/common/dict/list/edu_qualification',
        success : function(data) {
            var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].value + '">' + data[i].name + '</option>'
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
    //报考形式
    $.ajax({
        url : '/common/dict/list/edu_enroll_type',
        success : function(data) {
            var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].value + '">' + data[i].name + '</option>'
            }
            $("#enrollType").append(html);
            $("#enrollType").chosen({
                maxHeight : 200
            });
            //点击事件
            $('#enrollType').on('change', function(e, params) {
                var opt = {
                    query : {
                        type : params.selected,
                    }
                }
                $('#exampleTable').bootstrapTable('refresh', opt);
            });
        }
    });

    //报名类型
    $.ajax({
        url : '/common/dict/list/edu_type',
        success : function(data) {
            var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].value + '">' + data[i].name + '</option>'
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

    //政治面貌
    $.ajax({
        url : '/common/dict/list/edu_political',
        success : function(data) {
            var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].value + '">' + data[i].name + '</option>'
            }
            $("#political").append(html);
            $("#political").chosen({
                maxHeight : 200
            });
            //点击事件
            $('#political').on('change', function(e, params) {
                var opt = {
                    query : {
                        type : params.selected,
                    }
                }
                $('#exampleTable').bootstrapTable('refresh', opt);
            });
        }
    });
	//职业类别
    $.ajax({
        url : '/common/dict/list/edu_occupation_type',
        success : function(data) {
            var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].value + '">' + data[i].name + '</option>'
            }
            $("#occupationType").append(html);
            $("#occupationType").chosen({
                maxHeight : 200
            });
            //点击事件
            $('#occupationType').on('change', function(e, params) {
                var opt = {
                    query : {
                        type : params.selected,
                    }
                }
                $('#exampleTable').bootstrapTable('refresh', opt);
            });
        }
    });
    //照顾对象
    $.ajax({
        url : '/common/dict/list/edu_privilege_type',
        success : function(data) {
            var html = "";
            //加载数据
            for (var i = 0; i < data.length; i++) {
                html += '<option value="' + data[i].value + '">' + data[i].name + '</option>'
            }
            $("#privilegeType").append(html);
            $("#privilegeType").chosen({
                maxHeight : 200
            });
            //点击事件
            $('#privilegeType').on('change', function(e, params) {
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