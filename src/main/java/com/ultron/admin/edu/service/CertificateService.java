package com.ultron.admin.edu.service;

import com.ultron.admin.edu.domain.CertificateDO;

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
	
	CertificateDO get(Long id);
	
	List<CertificateDO> list(Map<String, Object> map);
	
	int count(Map<String, Object> map);
	
	int save(CertificateDO certificate);
	
	int update(CertificateDO certificate);
	
	int remove(Long id);
	
	int batchRemove(Long[] ids);

	int changeProposal(Long id, int ifProposal);
}
