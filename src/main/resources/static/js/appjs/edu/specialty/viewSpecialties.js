
var prefix = "/edu/specialty"


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
					//reLoad();
                    $("[data-index="+id+"]").remove();
                }else{
					layer.msg(r.msg);
				}
			}
		});
	})
}

function reLoad() {
    $('#exampleTable').bootstrapTable('refresh');
}

