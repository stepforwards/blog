package com.forward.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/front/about")
public class FrontAboutController {
	
	@RequestMapping("/about.action")
	public String inAbout(){
		return "/front/about";
	}
}
