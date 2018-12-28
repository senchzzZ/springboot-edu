package com.bootdo.edu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.bootdo.edu.domain.EnrollRemarkDO;
import com.bootdo.edu.service.EnrollRemarkService;
import com.bootdo.common.utils.PageUtils;
import com.bootdo.common.utils.Query;
import com.bootdo.common.utils.R;

/**
 * 报名备注信息
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-01 18:06:58
 */
 
@Controller
@RequestMapping("/edu/enrollRemark")
public class EnrollRemarkController {
	private static final String prefix = "admin/edu/enrollRemark/";

	@Autowired
	private EnrollRemarkService enrollRemarkService;
	
	@GetMapping()
	@RequiresPermissions("edu:enrollRemark:enrollRemark")
	String EnrollRemark(){
	    return prefix + "enrollRemark";
	}
	
	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("edu:enrollRemark:enrollRemark")
	public PageUtils list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);
		List<EnrollRemarkDO> enrollRemarkList = enrollRemarkService.list(query);
		int total = enrollRemarkService.count(query);
		PageUtils pageUtils = new PageUtils(enrollRemarkList, total);
		return pageUtils;
	}

	//@ResponseBody
	@GetMapping("/viewRemarks/{enrollId}")
	String viewRemarks(@PathVariable("enrollId") Long enrollId,Model model){
		//查询列表数据
		Map<String, Object> params = new HashMap<>();
		params.put("enrollId",enrollId);
		//Query query = new Query(params);
		List<EnrollRemarkDO> enrollRemarkList = enrollRemarkService.list(params);
		//int total = enrollRemarkService.count(query);
		//PageUtils pageUtils = new PageUtils(enrollRemarkList, total);
		model.addAttribute("enrollRemarkList",enrollRemarkList);
		return prefix + "enrollRemarkFrame";
	}

	@GetMapping("/add")
	@RequiresPermissions("edu:enrollRemark:add")
	String add(){
	    return prefix + "add";
	}

	@GetMapping("/edit/{id}")
	@RequiresPermissions("edu:enrollRemark:edit")
	String edit(@PathVariable("id") Long id,Model model){
		EnrollRemarkDO enrollRemark = enrollRemarkService.get(id);
		model.addAttribute("enrollRemark", enrollRemark);
	    return prefix + "edit";
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@PostMapping("/save")
	//@RequiresPermissions("edu:enrollRemark:add")
	public R save( EnrollRemarkDO enrollRemark){
		if(enrollRemarkService.save(enrollRemark)>0){
			return R.ok();
		}
		return R.error();
	}
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("edu:enrollRemark:edit")
	public R update( EnrollRemarkDO enrollRemark){
		enrollRemarkService.update(enrollRemark);
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/remove")
	@ResponseBody
	public R remove( Long id){
		if(enrollRemarkService.remove(id)>0){
		return R.ok();
		}
		return R.error();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/batchRemove")
	@ResponseBody
	@RequiresPermissions("edu:enrollRemark:batchRemove")
	public R remove(@RequestParam("ids[]") Long[] ids){
		enrollRemarkService.batchRemove(ids);
		return R.ok();
	}
	
}
