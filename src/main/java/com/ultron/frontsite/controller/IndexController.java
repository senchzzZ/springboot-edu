package com.ultron.frontsite.controller;

import com.ultron.admin.edu.domain.Specialty;
import com.ultron.admin.edu.domain.University;
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
 * Created by zhaoshengqi on 2018/12/27.
 */
@Slf4j
@RequestMapping("/index")
@Controller
public class IndexController {
    private static final String prefix = "frontsite/";

    @Autowired
    private UniversityService universityService;

    @Autowired
    private SpecialtyService specialtyService;


    @GetMapping()
    String index(Model model) {
        try {
            List<University> universityList = universityService.getIndexUniversities();
            List<Specialty> specialtyList = specialtyService.getIndexSpecialties();
            model.addAttribute("universityList",universityList);
            model.addAttribute("specialtyList",specialtyList);
        }catch (Exception e){
            log.error(ExceptionUtils.getFullStackTrace(e));
        }

        return prefix + "index";
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
