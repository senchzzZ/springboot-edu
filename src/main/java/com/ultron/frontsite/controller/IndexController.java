package com.ultron.frontsite.controller;

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

    @GetMapping("/1")
    String index1() {
        return "frontsite/index-1";
    }

    @GetMapping("/4")
    String index4() {
        return "frontsite/index-4";
    }
}
