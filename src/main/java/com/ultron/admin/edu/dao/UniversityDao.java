package com.ultron.admin.edu.dao;

import com.ultron.admin.edu.domain.University;

import java.util.List;
import java.util.Map;

import com.ultron.common.util.PageQuery;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Results;

/**
 * 学校管理
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-05 16:25:20
 */
@Mapper
public interface UniversityDao {

	University get(Long id);
	
	List<University> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(University university);
	
	int update(University university);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

	List<University> getIndexUniversities();

    List<University> getUniversityPageList(PageQuery pageQuery);

	Integer getUniversityPageCount(PageQuery pageQuery);
}
