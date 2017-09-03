package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.service.PostService;

@Controller
@RequestMapping("/front/about")
public class FrontAboutController {
	
	@Autowired
	PostService postService;
	
	@RequestMapping("/about.action")
	public String inAbout(Model m){
		m.addAttribute("latestPostList", postService.selectlatestPost());
		return "/front/about";
	}
}
