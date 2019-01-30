package com.ultron.frontsite.controller;

import com.ultron.admin.edu.domain.University;
import com.ultron.admin.edu.service.UniversityService;
import com.ultron.common.response.Response;
import com.ultron.common.util.PageQuery;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * Created by zhaoshengqi on 2019/1/23.
 */
@Slf4j
@Controller
@RequestMapping("/page/university")
public class UniversityPageController {
    private static final String prefix = "frontsite/";

    @Autowired
    private UniversityService universityService;

    /**
     * 院校列表
     * @param params
     * @return
     */
    @PostMapping("/pageList")
    @ResponseBody
    Response<List<University>> pageList(@RequestParam Map<String, Object> params) {
        try {
            System.out.println(params);
            PageQuery pageQuery = new PageQuery(params);
            return Response.success(universityService.getUniversityPageList(pageQuery));
        }catch (Exception e){
            log.error(ExceptionUtils.getFullStackTrace(e));
        }
        return null;
    }

    /**
     * 院校总数
     * @param params
     * @return
     */
    @PostMapping("/pageCount")
    @ResponseBody
    Response<Integer> pageCount(@RequestParam Map<String, Object> params) {
        try {
            System.out.println(params);
            PageQuery pageQuery = new PageQuery(params);
            //List<University> universityList = universityService.getUniversityPageList(pageQuery);
            return Response.success(universityService.getUniversityPageCount(pageQuery));
        }catch (Exception e){
            log.error(ExceptionUtils.getFullStackTrace(e));
        }
        return null;
    }

    /**
     * 院校详情页
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/get/{id}")
    String get(@PathVariable("id") Long id,Model model){

        University university = universityService.getUniversityAndSpecialtyById(id);
        //推荐院校
        List<University> universityList = universityService.getIndexUniversities();
        model.addAttribute("universityList",universityList);
        model.addAttribute("university", university);
        return prefix + "single-university";
    }
}
