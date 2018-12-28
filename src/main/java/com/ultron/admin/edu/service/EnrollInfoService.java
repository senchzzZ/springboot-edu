package com.ultron.admin.edu.service;

import com.ultron.admin.edu.domain.EnrollInfoDO;

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
	
	EnrollInfoDO get(Long id);
	
	List<EnrollInfoDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(EnrollInfoDO enrollInfo);
	
	int update(EnrollInfoDO enrollInfo);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
