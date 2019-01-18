package com.ultron.admin.edu.service;

import com.ultron.admin.edu.domain.News;

import java.util.List;
import java.util.Map;

/**
 * 新闻管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-24 11:53:57
 */
public interface NewsService {
	
	News get(Long id);
	
	List<News> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(News news);
	
	int update(News news);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

    int changeProposal(Long id, int ifProposal);
}
