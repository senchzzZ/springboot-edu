package com.ultron.admin.edu.service;

import com.ultron.admin.edu.domain.University;

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
	
	University get(Long id);
	
	List<University> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(University university);
	
	int update(University university);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

	int changeProposal(Long id, int ifProposal);

	List<University> getIndexUniversities();
}
