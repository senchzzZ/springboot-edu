package com.ultron.admin.edu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ultron.admin.edu.dao.EnrollRemarkDao;
import com.ultron.admin.edu.domain.EnrollRemark;
import com.ultron.admin.edu.service.EnrollRemarkService;



@Service
public class EnrollRemarkServiceImpl implements EnrollRemarkService {
	@Autowired
	private EnrollRemarkDao enrollRemarkDao;
	
	@Override
	public EnrollRemark get(Long id){
		return enrollRemarkDao.get(id);
	}
	
	@Override
	public List<EnrollRemark> list(Map<String, Object> map){
		return enrollRemarkDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return enrollRemarkDao.count(map);
	}
	
	@Override
	public int save(EnrollRemark enrollRemark){
		enrollRemark.setCreateTime(new Date());
		enrollRemark.setUpdateTime(new Date());
		return enrollRemarkDao.save(enrollRemark);
	}
	
	@Override
	public int update(EnrollRemark enrollRemark){
		enrollRemark.setUpdateTime(new Date());
		return enrollRemarkDao.update(enrollRemark);
	}
	
	@Override
	public int remove(Long id){
		return enrollRemarkDao.remove(id);
	}
	
	@Override
	public int batchRemove(Long[] ids){
		return enrollRemarkDao.batchRemove(ids);
	}
	
}
