package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.service.AlbumService;
import com.forward.blog.service.PostService;
import com.forward.blog.service.UserService;

@Controller
@RequestMapping("/front/home")
public class FrontHomeController {
	
	@Autowired
	PostService postService;
	@Autowired
	AlbumService albumService;
	@Autowired
	UserService userService;
	
	@RequestMapping("/index.action")
	public String goIndex(Model m){
		m.addAttribute("uhobby", userService.selectUserInfo().getUhobby());
		m.addAttribute("latestPostList", postService.selectlatestPost());
		m.addAttribute("finePostList", postService.selectFinePostList());
		m.addAttribute("albumSharingList", albumService.selectAlbumPartList());
		return "/front/index";
	}
}
