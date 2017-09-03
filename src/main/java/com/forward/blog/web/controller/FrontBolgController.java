package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;
import com.forward.blog.service.CategoriesService;
import com.forward.blog.service.PostService;
import com.forward.blog.service.TagService;


@Controller
@RequestMapping("/front/blog")
public class FrontBolgController {
	
	@Autowired
	PostService postService;
	@Autowired
	CategoriesService categoriesService;
	@Autowired
	TagService tagService;
	
	@RequestMapping("/posts.action")
	public String inBlog(Model m,KVO kvo){
		m.addAttribute("postList", postService.selectPostList(kvo));
		m.addAttribute("categoriesList", categoriesService.selectCategoriesList());
		m.addAttribute("tagList", tagService.selectTagList());
		m.addAttribute("ptitle", kvo.getPtitle());
		m.addAttribute("latestPostList", postService.selectlatestPost());
		return "/front/blog";
	}
	@RequestMapping("/post.action")
	public String inPost(Post post,Model m){
		m.addAttribute("post", postService.selectPostById(post));
		m.addAttribute("categoriesList", categoriesService.selectCategoriesList());
		m.addAttribute("tagList", tagService.selectTagList());
		m.addAttribute("latestPostList", postService.selectlatestPost());
		return "/front/post";
	}
}
