package com.ultron.admin.edu.controller;

import java.util.List;
import java.util.Map;

import com.ultron.admin.common.domain.DictDO;
import com.ultron.admin.common.service.DictService;
import com.ultron.admin.common.utils.PageUtils;
import com.ultron.admin.common.utils.Query;
import com.ultron.admin.common.utils.R;
import com.ultron.admin.edu.domain.Certificate;
import com.ultron.admin.edu.service.CertificateService;
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

/**
 * 证书管理
 * 
 * @author zhaoshengqi
 * @email sench.zhao@gmail.com
 * @date 2018-12-21 16:17:26
 */

@Slf4j
@Controller
@RequestMapping("/edu/certificate")
public class CertificateController {
	private static final String prefix = "admin/edu/certificate/";
	@Autowired
	private CertificateService certificateService;

	@Autowired
	private DictService dictService;
	
	@GetMapping()
	@RequiresPermissions("edu:certificate:certificate")
	String Certificate(Model model){
		List<DictDO> certificateTypes = dictService.listByType("edu_certificate_type");//类别
		model.addAttribute("certificateTypes", certificateTypes);

		return prefix + "certificate";
	}
	
	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("edu:certificate:certificate")
	public PageUtils list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);
		List<Certificate> certificateList = certificateService.list(query);
		int total = certificateService.count(query);
		PageUtils pageUtils = new PageUtils(certificateList, total);
		return pageUtils;
	}
	
	@GetMapping("/add")
	@RequiresPermissions("edu:certificate:add")
	String add(){
	    return prefix + "add";
	}

	@GetMapping("/edit/{id}")
	@RequiresPermissions("edu:certificate:edit")
	String edit(@PathVariable("id") Long id,Model model){
		List<DictDO> certificateTypes = dictService.listByType("edu_certificate_type");//证书类别

		Certificate certificate = certificateService.get(id);
		model.addAttribute("certificate", certificate);
		model.addAttribute("certificateTypes", certificateTypes);
	    return prefix + "edit";
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@PostMapping("/save")
	@RequiresPermissions("edu:certificate:add")
	public R save(Certificate certificate){
		if(certificateService.save(certificate)>0){
			return R.ok();
		}
		return R.error();
	}
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("edu:certificate:edit")
	public R update( Certificate certificate){
		certificateService.update(certificate);
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/remove")
	@ResponseBody
	@RequiresPermissions("edu:certificate:remove")
	public R remove( Long id){
		if(certificateService.remove(id)>0){
		return R.ok();
		}
		return R.error();
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
			certificateService.changeProposal(id, ifProposal);
			return R.ok("成功");
		} catch (Exception e) {
			log.warn(ExceptionUtils.getFullStackTrace(e));
		}
		return R.ok("失败");
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/batchRemove")
	@ResponseBody
	@RequiresPermissions("edu:certificate:batchRemove")
	public R remove(@RequestParam("ids[]") Long[] ids){
		certificateService.batchRemove(ids);
		return R.ok();
	}
	
}
