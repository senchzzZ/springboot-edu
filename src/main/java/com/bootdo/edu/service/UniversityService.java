package com.bootdo.edu.service;

import com.bootdo.edu.domain.UniversityDO;

import java.util.List;
import java.util.Map;

/**
 * 学校管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-05 16:25:20
 */
public interface UniversityService {
	
	UniversityDO get(Long id);
	
	List<UniversityDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(UniversityDO university);
	
	int update(UniversityDO university);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

	int changeProposal(Long id, int ifProposal);
}
