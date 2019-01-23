package com.ultron.admin.edu.dao;

import com.ultron.admin.edu.domain.Certificate;

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

	Certificate get(Long id);
	
	List<Certificate> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(Certificate certificate);
	
	int update(Certificate certificate);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

    List<Certificate> getIndexCertificate();
}
