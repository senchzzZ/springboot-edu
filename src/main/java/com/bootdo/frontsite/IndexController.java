package com.bootdo.frontsite;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zhaoshengqi on 2018/12/27.
 */
@RequestMapping("/index")
@Controller
public class IndexController {


    @GetMapping()
    String index() {
        return "frontsite/index";
    }
}
