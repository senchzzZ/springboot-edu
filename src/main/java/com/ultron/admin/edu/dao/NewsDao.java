package com.ultron.admin.edu.dao;

import com.ultron.admin.edu.domain.NewsDO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * 新闻管理
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-24 11:53:57
 */
@Mapper
public interface NewsDao {

	NewsDO get(Long id);
	
	List<NewsDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(NewsDO news);
	
	int update(NewsDO news);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
