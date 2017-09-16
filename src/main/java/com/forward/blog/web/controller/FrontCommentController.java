package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.service.AlbumService;
import com.forward.blog.service.PostService;

@Controller
@RequestMapping("/front/comment")
public class FrontCommentController {
	
	@Autowired
	PostService postService;
	@Autowired
	AlbumService albumService;
	
	@RequestMapping("/comment.action")
	public String inComment(Model m){
		m.addAttribute("latestPostList", postService.selectlatestPost());
		m.addAttribute("albumSharingList", albumService.selectAlbumPartList());
		return "/front/comment";
	}
}
