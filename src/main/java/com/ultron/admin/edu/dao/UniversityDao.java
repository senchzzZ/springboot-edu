package com.ultron.admin.edu.dao;

import com.ultron.admin.edu.domain.UniversityDO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * 学校管理
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-05 16:25:20
 */
@Mapper
public interface UniversityDao {

	UniversityDO get(Long id);
	
	List<UniversityDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(UniversityDO university);
	
	int update(UniversityDO university);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

	List<UniversityDO> getIndexUniversities();
}
