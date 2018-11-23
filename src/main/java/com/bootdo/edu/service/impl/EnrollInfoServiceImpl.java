package com.bootdo.edu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.bootdo.edu.dao.EnrollInfoDao;
import com.bootdo.edu.domain.EnrollInfoDO;
import com.bootdo.edu.service.EnrollInfoService;



@Service
public class EnrollInfoServiceImpl implements EnrollInfoService {
	@Autowired
	private EnrollInfoDao enrollInfoDao;
	
	@Override
	public EnrollInfoDO get(Long id){
		return enrollInfoDao.get(id);
	}
	
	@Override
	public List<EnrollInfoDO> list(Map<String, Object> map){
		return enrollInfoDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return enrollInfoDao.count(map);
	}
	
	@Override
	public int save(EnrollInfoDO enrollInfo){
		return enrollInfoDao.save(enrollInfo);
	}
	
	@Override
	public int update(EnrollInfoDO enrollInfo){
		return enrollInfoDao.update(enrollInfo);
	}
	
	@Override
	public int remove(Long id){
		return enrollInfoDao.remove(id);
	}
	
	@Override
	public int batchRemove(Long[] ids){
		return enrollInfoDao.batchRemove(ids);
	}
	
}
