package com.ultron.admin.edu.service.impl;

import com.ultron.admin.edu.dao.CertificateDao;
import com.ultron.admin.edu.domain.Certificate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ultron.admin.edu.service.CertificateService;



@Service
public class CertificateServiceImpl implements CertificateService {
	@Autowired
	private CertificateDao certificateDao;
	
	@Override
	public Certificate get(Long id){
		return certificateDao.get(id);
	}
	
	@Override
	public List<Certificate> list(Map<String, Object> map){
		return certificateDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return certificateDao.count(map);
	}
	
	@Override
	public int save(Certificate certificate){
		certificate.setCreateTime(new Date());
		certificate.setUpdateTime(new Date());

		return certificateDao.save(certificate);
	}
	
	@Override
	public int update(Certificate certificate){
		certificate.setUpdateTime(new Date());

		return certificateDao.update(certificate);
	}
	
	@Override
	public int remove(Long id){
		return certificateDao.remove(id);
	}
	
	@Override
	public int batchRemove(Long[] ids){
		return certificateDao.batchRemove(ids);
	}

	@Override
	public int changeProposal(Long id, int ifProposal) {
		Certificate certificate = new Certificate();
		certificate.setId(id);
		certificate.setIfProposal(ifProposal);
		return certificateDao.update(certificate);
	}

}
