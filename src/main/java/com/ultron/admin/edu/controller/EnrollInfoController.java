package com.ultron.admin.edu.controller;

import java.util.List;
import java.util.Map;

import com.ultron.admin.common.controller.BaseController;
import com.ultron.admin.common.service.DictService;
import com.ultron.admin.edu.service.EnrollInfoService;
import com.ultron.admin.common.domain.DictDO;
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

import com.ultron.admin.edu.domain.EnrollInfoDO;
import com.ultron.admin.common.utils.PageUtils;
import com.ultron.admin.common.utils.Query;
import com.ultron.admin.common.utils.R;

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
	private static final String prefix = "admin/edu/enrollInfo/";

	@Autowired
	private EnrollInfoService enrollInfoService;

	@Autowired
	private DictService dictService;
	
	@GetMapping()
	@RequiresPermissions("edu:enrollInfo:enrollInfo")
	String EnrollInfo(){
	    return prefix + "enrollInfo";
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
	    return prefix + "add";
	}

	@GetMapping("/edit/{id}")
	@RequiresPermissions("edu:enrollInfo:edit")
	String edit(@PathVariable("id") Long id,Model model){
		EnrollInfoDO enrollInfo = enrollInfoService.get(id);

		List<DictDO> qualifications = dictService.listByType("edu_qualification");//学历
		List<DictDO> enrollTypes = dictService.listByType("edu_enroll_type");//报考形式
		List<DictDO> politicals = dictService.listByType("edu_political");//政治面貌
		List<DictDO> occupationTypes = dictService.listByType("edu_occupation_type");//职业类别
		List<DictDO> privilegeTypes = dictService.listByType("edu_privilege_type");//照顾对象
		List<DictDO> types = dictService.listByType("edu_type");//照顾对象

		model.addAttribute("qualifications", qualifications);
		model.addAttribute("enrollTypes", enrollTypes);
		model.addAttribute("politicals", politicals);
		model.addAttribute("occupationTypes", occupationTypes);
		model.addAttribute("privilegeTypes", privilegeTypes);
		model.addAttribute("types", types);
		model.addAttribute("enrollInfo", enrollInfo);
	    return prefix + "edit";
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

	@GetMapping("/addRemark/{enrollId}")
	//@RequiresPermissions("edu:enrollInfo:edit")
	String addRemark(@PathVariable("enrollId") Long enrollId,Model model){
		EnrollInfoDO enrollInfo = enrollInfoService.get(enrollId);
		model.addAttribute("enrollInfo", enrollInfo);
		return "admin/edu/enrollRemark/add";
	}
	
}
