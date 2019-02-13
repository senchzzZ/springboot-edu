package com.ultron.frontsite.controller;

import com.ultron.admin.edu.domain.Specialty;
import com.ultron.admin.edu.domain.University;
import com.ultron.admin.edu.service.SpecialtyService;
import com.ultron.admin.edu.service.UniversityService;
import com.ultron.common.response.Response;
import com.ultron.common.util.PageQuery;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.exception.ExceptionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 专业
 * Created by zhaoshengqi on 2019/1/23.
 */
@Slf4j
@Controller
@RequestMapping("/page/specialty")
public class SpecialtyPageController {
    private static final String prefix = "frontsite/";

    @Autowired
    private UniversityService universityService;

    @Autowired
    private SpecialtyService specialtyService;

    /**
     * 专业列表
     * @param params
     * @return
     */
    @PostMapping("/pageList")
    @ResponseBody
    Response<List<Specialty>> pageList(@RequestParam Map<String, Object> params) {
        try {
            PageQuery pageQuery = new PageQuery(params);
            return Response.success(specialtyService.getSpecialtyPageList(pageQuery));
        }catch (Exception e){
            log.error(ExceptionUtils.getFullStackTrace(e));
        }
        return null;
    }

    /**
     * 专业总数
     * @param params
     * @return
     */
    @PostMapping("/pageCount")
    @ResponseBody
    Response<Integer> pageCount(@RequestParam Map<String, Object> params) {
        try {
            PageQuery pageQuery = new PageQuery(params);
            //List<University> universityList = universityService.getUniversityPageList(pageQuery);
            return Response.success(specialtyService.getSpecialtyPageCount(pageQuery));
        }catch (Exception e){
            log.error(ExceptionUtils.getFullStackTrace(e));
        }
        return null;
    }

    /**
     * 专业详情页
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/get/{id}")
    String get(@PathVariable("id") Long id,Model model){

        University university = universityService.getUniversityAndSpecialtyById(id);
        //推荐院校
        List<University> universityList = universityService.getIndexUniversities(10);
        model.addAttribute("universityList",universityList);
        model.addAttribute("university", university);
        model.addAttribute("title","专业详情");

        return prefix + "single-specialty";
    }
}
