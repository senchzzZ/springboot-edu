package com.bootdo.edu.dao;

import com.bootdo.edu.domain.CertificateDO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

/**
 * 证书管理
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-21 16:17:26
 */
@Mapper
public interface CertificateDao {

	CertificateDO get(Long id);
	
	List<CertificateDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(CertificateDO certificate);
	
	int update(CertificateDO certificate);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);
}
