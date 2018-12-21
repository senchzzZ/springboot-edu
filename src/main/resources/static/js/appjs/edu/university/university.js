
var prefix = "/edu/university";
var prefixSpecialty = "/edu/specialty";
$(function() {
	load();

});

function load() {
	$('#exampleTable')
			.bootstrapTable(
					{
						method : 'get', // 服务器数据的请求方式 get or post
						url : prefix + "/list", // 服务器数据的加载地址
					//	showRefresh : true,
					//	showToggle : true,
						showColumns : true,
						iconSize : 'outline',
						toolbar : '#exampleToolbar',
						striped : true, // 设置为true会有隔行变色效果
						dataType : "json", // 服务器返回的数据类型
						pagination : true, // 设置为true会在底部显示分页条
						// queryParamsType : "limit",
						// //设置为limit则会发送符合RESTFull格式的参数
						singleSelect : false, // 设置为true将禁止多选
						// contentType : "application/x-www-form-urlencoded",
						// //发送到服务器的数据编码类型
						pageSize : 10, // 如果设置了分页，每页数据条数
						pageNumber : 1, // 如果设置了分布，首页页码
						//search : true, // 是否显示搜索框
						//showColumns : false, // 是否显示内容下拉框（选择显示的列）
						sidePagination : "server", // 设置在哪里进行分页，可选值为"client" 或者 "server"
						queryParams : function(params) {
							return {
								//说明：传入后台的参数包括offset开始索引，limit步长，sort排序列，order：desc或者,以及所有列的键值对
								limit: params.limit,
								offset:params.offset,
					            name:$('#searchName').val(),
					            area:$('#searchArea').val(),
					            type:$('#searchType').val()
							};
						},
						// //请求服务器数据时，你可以通过重写参数的方式添加一些额外的参数，例如 toolbar 中的参数 如果
						// queryParamsType = 'limit' ,返回参数必须包含
						// limit, offset, search, sort, order 否则, 需要包含:
						// pageSize, pageNumber, searchText, sortName,
						// sortOrder.
						// 返回false将会终止请求
						columns : [
								{
									checkbox : true
								},
																{
									field : 'id',
									title : 'ID'
								},
																{
									field : 'name',
									title : '学校名称'
								},
																{
									field : 'teacher',
									title : '老师'
								},
																{
									field : 'phone',
									title : '电话'
								},
																/*{
									field : 'qq',
									title : 'QQ'
								},*/
																{
									field : 'email',
									title : '邮箱'
								},
																{
									field : 'wechat',
									title : '微信'
								},
																{
									field : 'type',
									title : '学校类型' ,
									formatter : function(value, row, index){
										if(value==0){
											return '<span class="label label-primary">成教</span>';
										}else if(value==1){
											return '<span class="label label-success">网教</span>';
										}else{
											return '<span class="label label-danger">未指定</span>';
										}
									}
								},
																{
									field : 'area',
									title : '地区'
								},
																{
									field : 'ifProposal',
									title : '是否推荐',
									formatter: function (value, row, index) {
										var e = '<a class="btn btn-success btn-xs" href="#" mce_href="#" title="点击推荐" onclick="changeProposal(\''
											+ row.id + '\',\'' + 1
											+ '\')"><i class="fa fa-thumbs-up"></i>推荐</a> ';
										var f = '<a class="btn btn-danger btn-xs" href="#" mce_href="#" title="点击关闭" onclick="changeProposal(\''
											+ row.id + '\',\'' + 0
											+ '\')"><i class="fa fa-thumbs-down">关闭</i></a> ';
										if (value == 1) {
											return f;
										} else {
											return e;
										}

									}
								},
																{
									field : 'createTime',
									title : '创建时间'
								},
																{
									field : 'remark',
									title : '备注'
								},
																{
									title : '操作',
									field : 'id',
									align : 'center',
									formatter : function(value, row, index) {
										var e = '<a class="btn btn-primary btn-sm '+s_edit_h+'" href="#" mce_href="#" title="编辑" onclick="edit(\''
												+ row.id
												+ '\')"><i class="fa fa-edit"></i></a> ';
										var d = '<a class="btn btn-warning btn-sm '+s_remove_h+'" href="#" title="删除"  mce_href="#" onclick="remove(\''
												+ row.id
												+ '\')"><i class="fa fa-remove"></i></a> ';
                                        var f = '<a class="btn btn-success btn-sm" href="#" title="添加专业"  mce_href="#" onclick="addSpecialty(\''
                                            + row.id
                                            + '\')"><i class="fa fa-plus"></i></a> ';
                                        var g = '<a class="btn btn-success btn-sm" href="#" title="查看专业"  mce_href="#" onclick="viewSpecialty(\''
                                            + row.id
                                            + '\')"><i class="fa fa-book"></i></a> ';
                                        /*var h = //'<input type="file" style="display: none" id="choseFile"> ' +
											'<a class="btn btn-success btn-sm batch-import" href="#" title="导入专业" lay-data="{url: \'/edu/specialty/batchImport\'}" mce_href="#" onclick="importSpecialty(\''
                                            + row.id
                                            + '\')"> <i class="fa fa-cloud-upload"></i></a> ';*/
                                        var h = '<a class="btn btn-success btn-sm batch-import" href="#" title="导入专业" ' +
											'lay-data="{url: \'/edu/specialty/batchImport?universityId='+row.id+'\'}" mce_href="#"><i class="fa fa-cloud-upload"></i></a> ';
                                        return e + d + f + g + h ;
									}
								} ],
                        onLoadSuccess: function (number, size) {
                            layui.use('upload', function(){

                                var upload = layui.upload;

								upload.render({
									elem: '.batch-import',
                                    //url: '/edu/specialty/batchImport', //上传接口
									accept: 'file',
									size: 2048,
									//data: data,
									before: function(){
										//layer.tips('接口地址：'+ this.url, this.item, {tips: 1});
									},
									done: function(res, index, upload){
										//var item = this.item;
										//console.log(item); //获取当前触发上传的元素，layui 2.1.0 新增
										layer.msg(res.msg);
									}
								});

                            });
                        }

					});

}

function reLoad() {
	$('#exampleTable').bootstrapTable('refresh');
}

$(".chosen-select").change(function(){
    $('#exampleTable').bootstrapTable('refresh');
});

function changeProposal(id, status) {
    var actCh;
    //var cmd;
    if (status == 0) {
        //cmd = 'start';
        actCh = "确认要关闭推荐吗？";
    } else {
        //cmd = 'stop';
        actCh = "确认要推荐吗？";
    }
    layer.confirm(actCh, {
        btn: ['确定', '取消']
    }, function () {
        $.ajax({
            url: prefix + "/changeProposal",
            type: "post",
            data: {
                'id': id,
                'ifProposal': status
            },
            success: function (r) {
                if (r.code == 0) {
                    layer.msg(r.msg);
                    reLoad();
                } else {
                    layer.msg(r.msg);
                }
            }
        });
    })
}

function add() {
    var addPage = layer.open({
		type : 2,
		title : '添加学校',
		maxmin : false,
		shadeClose : false, // 点击遮罩关闭层
		area : [ '800px', '520px' ],
		content : prefix + '/add' // iframe的url
	});
    layer.full(addPage);
}
function edit(id) {
	var editPage = layer.open({
		type : 2,
		title : '编辑',
		maxmin : false,
		shadeClose : false, // 点击遮罩关闭层
		area : [ '800px', '520px' ],
		content : prefix + '/edit/' + id // iframe的url
	});
    layer.full(editPage);
}

//添加专业
function addSpecialty(universityId) {
    layer.open({
        type : 2,
        title : '添加专业',
        maxmin : true,
        shadeClose : false, // 点击遮罩关闭层
        area : [ '800px', '520px' ],
        content : prefix + '/addSpecialty/' + universityId // iframe的url
    });
}
//查看专业
function viewSpecialty(universityId) {
    layer.open({
        type : 2,
        title : '查看专业',
        maxmin : true,
        shadeClose : false, // 点击遮罩关闭层
        area : [ '800px', '520px' ],
        content : prefixSpecialty + '/viewSpecialties/' + universityId // iframe的url
    });
}

function remove(id) {
	layer.confirm('确定要删除选中的记录？', {
		btn : [ '确定', '取消' ]
	}, function() {
		$.ajax({
			url : prefix+"/remove",
			type : "post",
			data : {
				'id' : id
			},
			success : function(r) {
				if (r.code==0) {
					layer.msg(r.msg);
					reLoad();
				}else{
					layer.msg(r.msg);
				}
			}
		});
	})
}

function resetPwd(id) {
}
function batchRemove() {
	var rows = $('#exampleTable').bootstrapTable('getSelections'); // 返回所有选择的行，当没有选择的记录时，返回一个空数组
	if (rows.length == 0) {
		layer.msg("请选择要删除的数据");
		return;
	}
	layer.confirm("确认要删除选中的'" + rows.length + "'条数据吗?", {
		btn : [ '确定', '取消' ]
	// 按钮
	}, function() {
		var ids = new Array();
		// 遍历所有选择的行数据，取每条数据对应的ID
		$.each(rows, function(i, row) {
			ids[i] = row['id'];
		});
		$.ajax({
			type : 'POST',
			data : {
				"ids" : ids
			},
			url : prefix + '/batchRemove',
			success : function(r) {
				if (r.code == 0) {
					layer.msg(r.msg);
					reLoad();
				} else {
					layer.msg(r.msg);
				}
			}
		});
	}, function() {

	});
}