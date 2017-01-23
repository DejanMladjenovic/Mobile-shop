package org.bildit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value="/")
	public String getIndex() {
		return "index";
	}
	
	@RequestMapping(value="/index")
	public String getIndex1() {
		return "index";
	}
	
	@RequestMapping(value="/userProfile")
	public String toUserprofilePage() {
		return "userProfile";
	}

}
