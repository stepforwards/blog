package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.service.PostService;

@Controller
@RequestMapping("/front/home")
public class FrontHomeController {
	
	@Autowired
	PostService postService;
	
	@RequestMapping("/index.action")
	public String goIndex(Model m){
		m.addAttribute("latestPostList", postService.selectlatestPost());
		m.addAttribute("finePostList", postService.selectFinePostList());
		return "/front/index";
	}
}
