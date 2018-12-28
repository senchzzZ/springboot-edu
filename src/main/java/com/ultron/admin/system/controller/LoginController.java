package com.ultron.admin.system.controller;

import com.ultron.admin.common.annotation.Log;
import com.ultron.admin.common.config.BootdoConfig;
import com.ultron.admin.common.controller.BaseController;
import com.ultron.admin.common.domain.FileDO;
import com.ultron.admin.common.domain.Tree;
import com.ultron.admin.common.service.FileService;
import com.ultron.admin.common.utils.MD5Utils;
import com.ultron.admin.common.utils.R;
import com.ultron.admin.common.utils.ShiroUtils;
import com.ultron.admin.system.domain.MenuDO;
import com.ultron.admin.system.domain.UserDO;
import com.ultron.admin.system.service.MenuService;
import com.ultron.admin.system.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class LoginController extends BaseController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    MenuService menuService;
    @Autowired
    FileService fileService;
    @Autowired
    BootdoConfig bootdoConfig;
    @Autowired
    UserService userService;

    @GetMapping({"/", ""})
    String welcome(Model model) {

        return "redirect:/admin/login";
    }

    @Log("请求访问主页")
    @GetMapping({"/admin/index"})
    String index(Model model) {
        List<Tree<MenuDO>> menus = menuService.listMenuTree(getUserId());
        model.addAttribute("menus", menus);
        model.addAttribute("name", getUser().getName());
        FileDO fileDO = fileService.get(getUser().getPicId());
        if (fileDO != null && fileDO.getUrl() != null) {
            if (fileService.isExist(fileDO.getUrl())) {
                model.addAttribute("picUrl", fileDO.getUrl());
            } else {
                model.addAttribute("picUrl", "/img/photo_s.jpg");
            }
        } else {
            model.addAttribute("picUrl", "/img/photo_s.jpg");
        }
        model.addAttribute("username", getUser().getUsername());
        return "admin/index_v1";
    }

    @GetMapping("/admin/login")
    String login(Model model) {
        //model.addAttribute("username", bootdoConfig.getUsername());
        //model.addAttribute("password", bootdoConfig.getPassword());
        return "admin/login";
    }

    @Log("登录")
    @PostMapping("/admin/login")
    @ResponseBody
    R ajaxLogin(String username, String password) {

        password = MD5Utils.encrypt(username, password);
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
            return R.ok();
        } catch (AuthenticationException e) {
            return R.error("用户或密码错误");
        }
    }

    @GetMapping("/logout")
    String logout() {
        ShiroUtils.logout();
        return "redirect:/admin/login";
    }

    @GetMapping("/main")
    String main(Model model) {
        UserDO userDO  = userService.get(getUserId());
        model.addAttribute("user",userDO);

        return "admin/main";
    }

}
