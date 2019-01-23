package com.ultron.admin.edu.dao;

import com.ultron.admin.edu.domain.News;

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

	News get(Long id);
	
	List<News> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(News news);
	
	int update(News news);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
