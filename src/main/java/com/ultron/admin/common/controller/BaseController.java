package com.ultron.admin.common.controller;

import com.ultron.admin.system.domain.UserDO;
import org.springframework.stereotype.Controller;
import com.ultron.admin.common.utils.ShiroUtils;

@Controller
public class BaseController {
	public UserDO getUser() {
		return ShiroUtils.getUser();
	}

	public Long getUserId() {
		return getUser().getUserId();
	}

	public String getUsername() {
		return getUser().getUsername();
	}
}