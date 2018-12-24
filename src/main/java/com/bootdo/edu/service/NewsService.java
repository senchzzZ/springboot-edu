package com.bootdo.edu.service;

import com.bootdo.edu.domain.NewsDO;

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
	
	NewsDO get(Long id);
	
	List<NewsDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(NewsDO news);
	
	int update(NewsDO news);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

    int changeProposal(Long id, int ifProposal);
}
