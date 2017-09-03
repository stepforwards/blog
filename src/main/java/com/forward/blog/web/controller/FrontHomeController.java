package com.forward.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/front/home")
public class FrontHomeController {
	
	@RequestMapping("/index.action")
	public String goIndex(){
		return "/front/index";
	}
}
