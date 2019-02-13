package com.ultron.admin.edu.dao;

import com.ultron.admin.edu.domain.Specialty;

import java.util.List;
import java.util.Map;

import com.ultron.common.util.PageQuery;
import org.apache.ibatis.annotations.Mapper;

/**
 * 专业管理
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-10 17:27:33
 */
@Mapper
public interface SpecialtyDao {

	Specialty get(Long id);
	
	List<Specialty> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(Specialty specialty);
	
	int update(Specialty specialty);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

	List<Specialty> getIndexSpecialties(int itemCount);

	List<Specialty> getSpecialtyPageList(PageQuery pageQuery);

	Integer getSpecialtyPageCount(PageQuery pageQuery);
}
