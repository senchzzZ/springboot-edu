package com.bootdo.edu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.bootdo.edu.dao.EnrollRemarkDao;
import com.bootdo.edu.domain.EnrollRemarkDO;
import com.bootdo.edu.service.EnrollRemarkService;



@Service
public class EnrollRemarkServiceImpl implements EnrollRemarkService {
	@Autowired
	private EnrollRemarkDao enrollRemarkDao;
	
	@Override
	public EnrollRemarkDO get(Long id){
		return enrollRemarkDao.get(id);
	}
	
	@Override
	public List<EnrollRemarkDO> list(Map<String, Object> map){
		return enrollRemarkDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return enrollRemarkDao.count(map);
	}
	
	@Override
	public int save(EnrollRemarkDO enrollRemark){
		return enrollRemarkDao.save(enrollRemark);
	}
	
	@Override
	public int update(EnrollRemarkDO enrollRemark){
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
