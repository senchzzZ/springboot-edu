package com.ultron.admin.edu.controller;

import java.util.List;
import java.util.Map;
import com.ultron.admin.common.controller.BaseController;
import com.ultron.common.response.Response;
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

import com.ultron.admin.edu.domain.University;
import com.ultron.admin.edu.service.UniversityService;
import com.ultron.admin.common.utils.PageUtils;
import com.ultron.admin.common.utils.Query;
import com.ultron.admin.common.utils.R;

/**
 * 学校管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-05 16:25:20
 */
@Slf4j
@Controller
@RequestMapping("/edu/university")
public class UniversityController extends BaseController {
	private static final String prefix = "admin/edu/university/";

	@Autowired
	private UniversityService universityService;
	
	@GetMapping()
	@RequiresPermissions("edu:university:university")
	String University(){
	    return prefix + "university";
	}
	
	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("edu:university:university")
	public PageUtils list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);
		List<University> universityList = universityService.list(query);
		int total = universityService.count(query);
		PageUtils pageUtils = new PageUtils(universityList, total);
		return pageUtils;
	}
	
	@GetMapping("/add")
	@RequiresPermissions("edu:university:add")
	String add(){
	    return prefix + "add";
	}

	@GetMapping("/edit/{id}")
	@RequiresPermissions("edu:university:edit")
	String edit(@PathVariable("id") Long id,Model model){
		University university = universityService.get(id);
		model.addAttribute("university", university);
	    return prefix + "edit";
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@PostMapping("/save")
	@RequiresPermissions("edu:university:add")
	public R save( University university){
		if(universityService.save(university)>0){
			return R.ok();
		}
		return R.error();
	}
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("edu:university:edit")
	public R update( University university){
		universityService.update(university);
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/remove")
	@ResponseBody
	@RequiresPermissions("edu:university:remove")
	public R remove( Long id){
		if(universityService.remove(id)>0){
		return R.ok();
		}
		return R.error();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/batchRemove")
	@ResponseBody
	@RequiresPermissions("edu:university:batchRemove")
	public R remove(@RequestParam("ids[]") Long[] ids){
		universityService.batchRemove(ids);
		return R.ok();
	}

	@PostMapping(value = "/changeProposal")
	@ResponseBody
	public R changeProposal(Long id,int ifProposal) {
		try {
			universityService.changeProposal(id, ifProposal);
			return R.ok("成功");
		} catch (Exception e) {
			log.warn(ExceptionUtils.getFullStackTrace(e));
		}
		return R.ok("失败");
	}

	@GetMapping("/addSpecialty/{universityId}")
	String addSpecialty(@PathVariable("universityId") Long universityId,Model model){
		University university = universityService.get(universityId);
		model.addAttribute("university", university);
		return "admin/edu/specialty/add";
	}


	/**
	 * 获取首页数据(前10条)
	 * @return
	 */
	@PostMapping(value = "/getIndexUniversities")
	@ResponseBody
	public Response<List<University>> getIndexUniversities() {
		try {
			return Response.success(universityService.getIndexUniversities());
		} catch (Exception e) {
			log.warn(ExceptionUtils.getFullStackTrace(e));
			return Response.error(e.getMessage());
		}
	}
	
}
