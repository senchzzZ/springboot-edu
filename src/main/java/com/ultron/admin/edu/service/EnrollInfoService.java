package com.ultron.admin.edu.service;

import com.ultron.admin.edu.domain.EnrollInfo;

import java.util.List;
import java.util.Map;

/**
 * 报名管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-11-23 17:18:28
 */
public interface EnrollInfoService {
	
	EnrollInfo get(Long id);
	
	List<EnrollInfo> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(EnrollInfo enrollInfo);
	
	int update(EnrollInfo enrollInfo);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
