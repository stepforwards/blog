package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.model.Post;
import com.forward.blog.service.PostService;


@Controller
@RequestMapping("/front/blog")
public class FrontBolgController {
	
	@Autowired
	PostService postService;
	
	@RequestMapping("/posts.action")
	public String inBlog(Model m){
		m.addAttribute("postList", postService.selectPostList());
		return "/front/blog";
	}
	@RequestMapping("/post.action")
	public String inPost(Post post,Model m){
		m.addAttribute("post", postService.selectPostById(post));
		return "/front/post";
	}
}
