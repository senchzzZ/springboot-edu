package com.ultron.admin.edu.service;

import com.ultron.admin.edu.domain.Certificate;

import java.util.List;
import java.util.Map;

/**
 * 证书管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-21 16:17:26
 */
public interface CertificateService {
	
	Certificate get(Long id);
	
	List<Certificate> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(Certificate certificate);
	
	int update(Certificate certificate);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

	int changeProposal(Long id, int ifProposal);

    List<Certificate> getIndexCertificate(int itemCount);
}
