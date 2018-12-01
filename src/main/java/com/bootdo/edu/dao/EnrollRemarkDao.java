package com.bootdo.edu.dao;

import com.bootdo.edu.domain.EnrollRemarkDO;

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

	EnrollRemarkDO get(Long id);
	
	List<EnrollRemarkDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(EnrollRemarkDO enrollRemark);
	
	int update(EnrollRemarkDO enrollRemark);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
