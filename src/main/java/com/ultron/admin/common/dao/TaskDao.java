package com.ultron.admin.common.dao;

import com.ultron.admin.common.domain.TaskDO;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2017-10-03 15:45:42
 */
public interface TaskDao {

	TaskDO get(Long id);
	
	List<TaskDO> list(Map<String,Object> map);
	
	int count(Map<String,Object> map);
	
	int save(TaskDO task);
	
	int update(TaskDO task);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
