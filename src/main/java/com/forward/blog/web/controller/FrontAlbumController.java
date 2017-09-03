package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.service.PostService;

@Controller
@RequestMapping("/front/album")
public class FrontAlbumController {
	
	@Autowired
	PostService postService;
	
	@RequestMapping("/album.action")
	public String inAlbum(Model m){
		m.addAttribute("latestPostList", postService.selectlatestPost());
		return "/front/album";
	}
}
