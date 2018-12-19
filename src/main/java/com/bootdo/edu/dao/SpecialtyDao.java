package com.bootdo.edu.dao;

import com.bootdo.edu.domain.SpecialtyDO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * 专业管理
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-10 17:27:33
 */
@Mapper
public interface SpecialtyDao {

	SpecialtyDO get(Long id);
	
	List<SpecialtyDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(SpecialtyDO specialty);
	
	int update(SpecialtyDO specialty);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
