package com.ultron.admin.edu.service.impl;

import com.ultron.admin.edu.domain.University;
import com.ultron.common.util.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ultron.admin.edu.dao.UniversityDao;
import com.ultron.admin.edu.service.UniversityService;



@Service
public class UniversityServiceImpl implements UniversityService {
	@Autowired
	private UniversityDao universityDao;
	
	@Override
	public University get(Long id){
		return universityDao.get(id);
	}
	
	@Override
	public List<University> list(Map<String, Object> map){
		return universityDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return universityDao.count(map);
	}
	
	@Override
	public int save(University university){
		university.setCreateTime(new Date());
		university.setUpdateTime(new Date());
		return universityDao.save(university);
	}
	
	@Override
	public int update(University university){
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
		University university = new University();
		university.setId(id);
		university.setIfProposal(ifProposal);
		return universityDao.update(university);
	}

	@Override
	public List<University> getIndexUniversities() {
		return universityDao.getIndexUniversities();
	}

	@Override
	public List<University> getUniversityPageList(PageQuery pageQuery) {
		return universityDao.getUniversityPageList(pageQuery);
	}

	@Override
	public Integer getUniversityPageCount(PageQuery pageQuery) {
		return universityDao.getUniversityPageCount(pageQuery);
	}

	@Override
	public List<String> getUniversityAreas() {
		return universityDao.getUniversityAreas();
	}

}
