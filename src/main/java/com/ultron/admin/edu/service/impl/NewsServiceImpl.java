package com.ultron.admin.edu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ultron.admin.edu.dao.NewsDao;
import com.ultron.admin.edu.domain.News;
import com.ultron.admin.edu.service.NewsService;



@Service
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsDao newsDao;
	
	@Override
	public News get(Long id){
		return newsDao.get(id);
	}
	
	@Override
	public List<News> list(Map<String, Object> map){
		return newsDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return newsDao.count(map);
	}
	
	@Override
	public int save(News news){
		news.setCreateTime(new Date());
		news.setUpdateTime(new Date());
		return newsDao.save(news);
	}
	
	@Override
	public int update(News news){
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
		News news = new News();
		news.setId(id);
		news.setIfProposal(ifProposal);
		return newsDao.update(news);
	}

}
