package com.forward.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/tag")
public class AdminTagController {
	
	@RequestMapping("/tagList.action")
	public String inTag(){
		return "/admin/tag";
	}
}