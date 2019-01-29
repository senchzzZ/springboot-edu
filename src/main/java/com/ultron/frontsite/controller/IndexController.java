package com.ultron.frontsite.controller;

import com.ultron.admin.edu.domain.Certificate;
import com.ultron.admin.edu.domain.Specialty;
import com.ultron.admin.edu.domain.University;
import com.ultron.admin.edu.service.CertificateService;
import com.ultron.admin.edu.service.SpecialtyService;
import com.ultron.admin.edu.service.UniversityService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.exception.ExceptionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 首页
 * Created by zhaoshengqi on 2018/12/27.
 */
@Slf4j
@Controller
public class IndexController {
    private static final String prefix = "frontsite/";

    @Autowired
    private UniversityService universityService;

    @Autowired
    private SpecialtyService specialtyService;

    @Autowired
    private CertificateService certificateService;


    /**
     * 首页
     * @param model
     * @return
     */
    @GetMapping("/index")
    String index(Model model) {
        try {
            List<University> universityList = universityService.getIndexUniversities();
            List<Specialty> specialtyList = specialtyService.getIndexSpecialties();
            List<Certificate> certificateList = certificateService.getIndexCertificate();
            model.addAttribute("universityList",universityList);
            model.addAttribute("specialtyList",specialtyList);
            model.addAttribute("certificateList",certificateList);
        }catch (Exception e){
            log.error(ExceptionUtils.getFullStackTrace(e));
        }

        return prefix + "index";
    }

    /**
     * 院校列表
     * @param model
     * @return
     */
    @GetMapping("page/university/list")
    String universityListPage(Model model) {
        try {
            //加载地区
            List<String> areaList = universityService.getUniversityAreas();

            model.addAttribute("areaList",areaList);

        }catch (Exception e){
            log.error(ExceptionUtils.getFullStackTrace(e));
        }

        return prefix + "university-list";
    }



    @GetMapping("/1")
    String index1() {
        return "frontsite/index-1";
    }

    @GetMapping("/4")
    String index4() {
        return "frontsite/index-4";
    }
}
