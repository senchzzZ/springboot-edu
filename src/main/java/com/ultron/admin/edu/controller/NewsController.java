package com.ultron.admin.edu.controller;

import java.util.List;
import java.util.Map;

import com.ultron.admin.common.domain.DictDO;
import com.ultron.admin.common.service.DictService;
import com.ultron.admin.edu.domain.News;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ultron.admin.edu.service.NewsService;
import com.ultron.admin.common.utils.PageUtils;
import com.ultron.admin.common.utils.Query;
import com.ultron.admin.common.utils.R;

/**
 * 新闻管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-24 11:53:57
 */

@Slf4j
@Controller
@RequestMapping("/edu/news")
public class NewsController {
	private static final String prefix = "admin/edu/news/";

	@Autowired
	private NewsService newsService;

	@Autowired
	private DictService dictService;
	
	@GetMapping()
	@RequiresPermissions("edu:news:news")
	String News(Model model){
		List<DictDO> newsTypes = dictService.listByType("edu_news_type");//证书类别

		model.addAttribute("newsTypes", newsTypes);
		return prefix + "news";
	}
	
	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("edu:news:news")
	public PageUtils list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);
		List<News> newsList = newsService.list(query);
		int total = newsService.count(query);
		PageUtils pageUtils = new PageUtils(newsList, total);
		return pageUtils;
	}
	
	@GetMapping("/add")
	@RequiresPermissions("edu:news:add")
	String add(){
	    return prefix + "add";
	}

	@GetMapping("/edit/{id}")
	@RequiresPermissions("edu:news:edit")
	String edit(@PathVariable("id") Long id,Model model){
		List<DictDO> newsTypes = dictService.listByType("edu_news_type");//证书类别

		News news = newsService.get(id);
		model.addAttribute("news", news);
		model.addAttribute("newsTypes", newsTypes);
	    return prefix + "edit";
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@PostMapping("/save")
	@RequiresPermissions("edu:news:add")
	public R save( News news){
		if(newsService.save(news)>0){
			return R.ok();
		}
		return R.error();
	}
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("edu:news:edit")
	public R update( News news){
		newsService.update(news);
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/remove")
	@ResponseBody
	@RequiresPermissions("edu:news:remove")
	public R remove( Long id){
		if(newsService.remove(id)>0){
		return R.ok();
		}
		return R.error();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/batchRemove")
	@ResponseBody
	@RequiresPermissions("edu:news:batchRemove")
	public R remove(@RequestParam("ids[]") Long[] ids){
		newsService.batchRemove(ids);
		return R.ok();
	}

	/**
	 * 开启/关闭推荐
	 * @param id
	 * @param ifProposal
	 * @return
	 */
	@PostMapping(value = "/changeProposal")
	@ResponseBody
	public R changeProposal(Long id,int ifProposal) {
		try {
			newsService.changeProposal(id, ifProposal);
			return R.ok("成功");
		} catch (Exception e) {
			log.warn(ExceptionUtils.getFullStackTrace(e));
		}
		return R.ok("失败");
	}
	
}
