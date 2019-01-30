package com.ultron.admin.edu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ultron.admin.common.domain.DictDO;
import com.ultron.admin.common.service.DictService;
import com.ultron.admin.common.utils.PageUtils;
import com.ultron.admin.common.utils.Query;
import com.ultron.admin.common.utils.R;
import com.ultron.admin.edu.domain.Specialty;
import com.ultron.admin.edu.service.SpecialtyService;
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

import org.springframework.web.multipart.MultipartFile;

/**
 * 专业管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-10 17:27:33
 */

@Slf4j
@Controller
@RequestMapping("/edu/specialty")
public class SpecialtyController {
	private static final String prefix = "admin/edu/specialty/";

	@Autowired
	private SpecialtyService specialtyService;

	@Autowired
	private DictService dictService;
	
	@GetMapping()
	@RequiresPermissions("edu:specialty:specialty")
	String Specialty(Model model){
		List<DictDO> qualifications = dictService.listByType("edu_qualification");//学历
		List<DictDO> specialtyTypes = dictService.listByType("edu_specialty_type");//专业类型

		model.addAttribute("qualifications", qualifications);
		model.addAttribute("specialtyTypes", specialtyTypes);
		return prefix + "specialty";
	}
	
	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("edu:specialty:specialty")
	public PageUtils list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);
		List<Specialty> specialtyList = specialtyService.list(query);
		int total = specialtyService.count(query);
		PageUtils pageUtils = new PageUtils(specialtyList, total);
		return pageUtils;
	}

	@GetMapping("/viewSpecialties/{universityId}")
	String viewRemarks(@PathVariable("universityId") Long universityId,Model model){
		//查询列表数据
		Map<String, Object> params = new HashMap<>();
		params.put("universityId",universityId);
		//Query query = new Query(params);
		List<Specialty> specialtyList = specialtyService.list(params);
		//int total = enrollRemarkService.count(query);
		//PageUtils pageUtils = new PageUtils(enrollRemarkList, total);
		model.addAttribute("specialtyList",specialtyList);
		return prefix + "specialtyFrame";
	}

	@GetMapping("/add")
	@RequiresPermissions("edu:specialty:add")
	String add(){
	    return prefix + "add";
	}

	@GetMapping("/edit/{id}")
	@RequiresPermissions("edu:specialty:edit")
	String edit(@PathVariable("id") Long id,Model model){
		List<DictDO> qualifications = dictService.listByType("edu_qualification");//学历
		List<DictDO> specialtyTypes = dictService.listByType("edu_specialty_type");//专业类型

		Specialty specialty = specialtyService.get(id);
		model.addAttribute("specialty", specialty);
		model.addAttribute("qualifications", qualifications);
		model.addAttribute("specialtyTypes", specialtyTypes);
	    return prefix + "edit";
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@PostMapping("/save")
	@RequiresPermissions("edu:specialty:add")
	public R save(Specialty specialty){
		if(specialtyService.save(specialty)>0){
			return R.ok();
		}
		return R.error();
	}
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("edu:specialty:edit")
	public R update( Specialty specialty){
		specialtyService.update(specialty);
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/remove")
	@ResponseBody
	@RequiresPermissions("edu:specialty:remove")
	public R remove( Long id){
		if(specialtyService.remove(id)>0){
		return R.ok();
		}
		return R.error();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/batchRemove")
	@ResponseBody
	@RequiresPermissions("edu:specialty:batchRemove")
	public R remove(@RequestParam("ids[]") Long[] ids){
		specialtyService.batchRemove(ids);
		return R.ok();
	}

	/**
	 * 批量导入
	 * @param file
	 * @param universityId
	 * @return
	 */
	@ResponseBody
	@PostMapping("/batchImport")
	public R batchImport( @RequestParam ("file") MultipartFile file, Long universityId) {
		if (universityId == null )
			return R.error("未指定学校");
		String fileName = file.getOriginalFilename();
		if (!fileName.matches("^.+\\.(?i)(xls)$") && !fileName.matches("^.+\\.(?i)(xlsx)$")) {
			return R.error("文件格式不正确");
		}

		try {
			String result = specialtyService.batchImport(fileName, file, universityId);
			return R.ok(result);
		} catch (Exception e) {
			log.error(ExceptionUtils.getFullStackTrace(e));
			return R.error(e.getMessage());
		}
	}
	
}
