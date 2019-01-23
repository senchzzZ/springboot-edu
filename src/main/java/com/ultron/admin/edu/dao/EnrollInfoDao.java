package com.ultron.admin.edu.dao;

import com.ultron.admin.edu.domain.EnrollInfo;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * 报名管理
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-11-23 17:18:28
 */
@Mapper
public interface EnrollInfoDao {

	EnrollInfo get(Long id);
	
	List<EnrollInfo> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(EnrollInfo enrollInfo);
	
	int update(EnrollInfo enrollInfo);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
