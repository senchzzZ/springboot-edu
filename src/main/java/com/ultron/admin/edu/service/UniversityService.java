package com.ultron.admin.edu.service;

import com.ultron.admin.edu.domain.University;
import com.ultron.common.util.PageQuery;

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

	List<University> getIndexUniversities(int itemCount);

    List<University> getUniversityPageList(PageQuery pageQuery);

	Integer getUniversityPageCount(PageQuery pageQuery);

    List<String> getUniversityAreas();

    University getUniversityAndSpecialtyById(Long id);

	List<University> getConditionUniversities(int itemCount);
}
