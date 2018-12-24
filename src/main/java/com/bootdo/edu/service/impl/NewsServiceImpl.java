package com.bootdo.edu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.bootdo.edu.dao.NewsDao;
import com.bootdo.edu.domain.NewsDO;
import com.bootdo.edu.service.NewsService;



@Service
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsDao newsDao;
	
	@Override
	public NewsDO get(Long id){
		return newsDao.get(id);
	}
	
	@Override
	public List<NewsDO> list(Map<String, Object> map){
		return newsDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return newsDao.count(map);
	}
	
	@Override
	public int save(NewsDO news){
		news.setCreateTime(new Date());
		news.setUpdateTime(new Date());
		return newsDao.save(news);
	}
	
	@Override
	public int update(NewsDO news){
		news.setUpdateTime(new Date());

		return newsDao.update(news);
	}
	
	@Override
	public int remove(Long id){
		return newsDao.remove(id);
	}
	
	@Override
	public int batchRemove(Long[] ids){
		return newsDao.batchRemove(ids);
	}

	@Override
	public int changeProposal(Long id, int ifProposal) {
		NewsDO newsDO = new NewsDO();
		newsDO.setId(id);
		newsDO.setIfProposal(ifProposal);
		return newsDao.update(newsDO);
	}

}
