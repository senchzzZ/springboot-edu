package com.ultron.admin.edu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ultron.admin.edu.dao.UniversityDao;
import com.ultron.admin.edu.domain.UniversityDO;
import com.ultron.admin.edu.service.UniversityService;



@Service
public class UniversityServiceImpl implements UniversityService {
	@Autowired
	private UniversityDao universityDao;
	
	@Override
	public UniversityDO get(Long id){
		return universityDao.get(id);
	}
	
	@Override
	public List<UniversityDO> list(Map<String, Object> map){
		return universityDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return universityDao.count(map);
	}
	
	@Override
	public int save(UniversityDO university){
		university.setCreateTime(new Date());
		university.setUpdateTime(new Date());
		return universityDao.save(university);
	}
	
	@Override
	public int update(UniversityDO university){
		university.setUpdateTime(new Date());
		return universityDao.update(university);
	}
	
	@Override
	public int remove(Long id){
		return universityDao.remove(id);
	}
	
	@Override
	public int batchRemove(Long[] ids){
		return universityDao.batchRemove(ids);
	}

	@Override
	public int changeProposal(Long id, int ifProposal) {
		UniversityDO universityDO = new UniversityDO();
		universityDO.setId(id);
		universityDO.setIfProposal(ifProposal);
		return universityDao.update(universityDO);
	}

	@Override
	public List<UniversityDO> getIndexUniversities() {
		return universityDao.getIndexUniversities();
	}

}
