package com.bootdo.edu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.bootdo.edu.dao.CertificateDao;
import com.bootdo.edu.domain.CertificateDO;
import com.bootdo.edu.service.CertificateService;



@Service
public class CertificateServiceImpl implements CertificateService {
	@Autowired
	private CertificateDao certificateDao;
	
	@Override
	public CertificateDO get(Long id){
		return certificateDao.get(id);
	}
	
	@Override
	public List<CertificateDO> list(Map<String, Object> map){
		return certificateDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return certificateDao.count(map);
	}
	
	@Override
	public int save(CertificateDO certificate){
		certificate.setCreateTime(new Date());
		certificate.setUpdateTime(new Date());

		return certificateDao.save(certificate);
	}
	
	@Override
	public int update(CertificateDO certificate){
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
		CertificateDO certificateDO = new CertificateDO();
		certificateDO.setId(id);
		certificateDO.setIfProposal(ifProposal);
		return certificateDao.update(certificateDO);
	}

}
