package com.bootdo.edu.controller;

import java.util.List;
import java.util.Map;

import com.bootdo.common.controller.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bootdo.edu.domain.EnrollInfoDO;
import com.bootdo.edu.service.EnrollInfoService;
import com.bootdo.common.utils.PageUtils;
import com.bootdo.common.utils.Query;
import com.bootdo.common.utils.R;

/**
 * 报名管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-11-23 17:18:28
 */
 
@Controller
@RequestMapping("/edu/enrollInfo")
public class EnrollInfoController extends BaseController {
	@Autowired
	private EnrollInfoService enrollInfoService;
	
	@GetMapping()
	@RequiresPermissions("edu:enrollInfo:enrollInfo")
	String EnrollInfo(){
	    return "edu/enrollInfo/enrollInfo";
	}
	
	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("edu:enrollInfo:enrollInfo")
	public PageUtils list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);
		List<EnrollInfoDO> enrollInfoList = enrollInfoService.list(query);
		int total = enrollInfoService.count(query);
		PageUtils pageUtils = new PageUtils(enrollInfoList, total);
		return pageUtils;
	}
	
	@GetMapping("/add")
	@RequiresPermissions("edu:enrollInfo:add")
	String add(){
	    return "edu/enrollInfo/add";
	}

	@GetMapping("/edit/{id}")
	@RequiresPermissions("edu:enrollInfo:edit")
	String edit(@PathVariable("id") Long id,Model model){
		EnrollInfoDO enrollInfo = enrollInfoService.get(id);
		model.addAttribute("enrollInfo", enrollInfo);
	    return "edu/enrollInfo/edit";
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@PostMapping("/save")
	@RequiresPermissions("edu:enrollInfo:add")
	public R save( EnrollInfoDO enrollInfo){
		if(enrollInfoService.save(enrollInfo)>0){
			return R.ok();
		}
		return R.error();
	}
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("edu:enrollInfo:edit")
	public R update( EnrollInfoDO enrollInfo){
		enrollInfoService.update(enrollInfo);
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/remove")
	@ResponseBody
	@RequiresPermissions("edu:enrollInfo:remove")
	public R remove( Long id){
		if(enrollInfoService.remove(id)>0){
		return R.ok();
		}
		return R.error();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/batchRemove")
	@ResponseBody
	@RequiresPermissions("edu:enrollInfo:batchRemove")
	public R remove(@RequestParam("ids[]") Long[] ids){
		enrollInfoService.batchRemove(ids);
		return R.ok();
	}

	@GetMapping("/addRemark/{id}")
	//@RequiresPermissions("edu:enrollInfo:edit")
	String addRemark(@PathVariable("id") Long id,Model model){
		EnrollInfoDO enrollInfo = enrollInfoService.get(id);
		model.addAttribute("enrollInfo", enrollInfo);
		return "edu/enrollRemark/add";
	}
	
}
