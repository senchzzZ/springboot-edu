package com.ultron.frontsite.controller;

import com.ultron.admin.common.domain.DictDO;
import com.ultron.admin.common.service.DictService;
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

    @Autowired
    private DictService dictService;

    //首页推荐位条数
    private static final int INDEX_ITEM_COUNT = 10;


    /**
     * 首页
     * @param model
     * @return
     */
    @GetMapping("/index")
    String index(Model model) {
        try {
            List<University> universityList = universityService.getIndexUniversities(INDEX_ITEM_COUNT);//推荐院校
            List<Specialty> specialtyList = specialtyService.getIndexSpecialties(INDEX_ITEM_COUNT);//推荐专业
            List<Certificate> certificateList = certificateService.getIndexCertificate(INDEX_ITEM_COUNT);//证书
            model.addAttribute("universityList",universityList);
            model.addAttribute("specialtyList",specialtyList);
            model.addAttribute("certificateList",certificateList);
            model.addAttribute("title","奥创教育-一站式继续教育咨询服务中心");

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
            model.addAttribute("title","院校列表");

        }catch (Exception e){
            log.error(ExceptionUtils.getFullStackTrace(e));
        }

        return prefix + "university-list";
    }

    /**
     * 专业列表
     * @param model
     * @return
     */
    @GetMapping("page/specialty/list")
    String specialtyListPage(Model model,Long universityId) {
        try {
            List<University> universityList = universityService.getConditionUniversities(20);//推荐院校
            List<DictDO> specialtyLevels = dictService.listByType("edu_level");//专业层次

            if (universityId != null){
                University chosenUniversity = universityService.get(universityId);
                if (chosenUniversity != null)
                    model.addAttribute("chosenUniversity",chosenUniversity);
            }
            model.addAttribute("universityList",universityList);
            model.addAttribute("specialtyLevels",specialtyLevels);
            model.addAttribute("universityId",universityId);
            model.addAttribute("title","专业列表");

        }catch (Exception e){
            log.error(ExceptionUtils.getFullStackTrace(e));
        }

        return prefix + "specialty-list";
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
