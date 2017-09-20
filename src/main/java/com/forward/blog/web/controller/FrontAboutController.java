package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.model.User;
import com.forward.blog.service.AlbumService;
import com.forward.blog.service.PostService;
import com.forward.blog.service.UserService;

@Controller
@RequestMapping("/front/about")
public class FrontAboutController {
	
	@Autowired
	PostService postService;
	@Autowired
	AlbumService albumService;
	@Autowired
	UserService userService;
	
	@RequestMapping("/about.action")
	public String inAbout(Model m){
		User user = userService.selectUserInfo();
		user.setUpassword("");
		user.setUemail("1300902228@qq.com");
		m.addAttribute("user", user);
		m.addAttribute("latestPostList", postService.selectlatestPost());
		m.addAttribute("albumSharingList", albumService.selectAlbumPartList());
		return "/front/about";
	}
}
