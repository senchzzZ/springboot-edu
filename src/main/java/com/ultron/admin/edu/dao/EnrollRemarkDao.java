package com.ultron.admin.edu.dao;

import com.ultron.admin.edu.domain.EnrollRemark;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * 报名备注信息
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-01 18:06:58
 */
@Mapper
public interface EnrollRemarkDao {

	EnrollRemark get(Long id);
	
	List<EnrollRemark> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(EnrollRemark enrollRemark);
	
	int update(EnrollRemark enrollRemark);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
