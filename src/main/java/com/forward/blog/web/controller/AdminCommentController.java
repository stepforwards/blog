package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forward.blog.model.Comment;
import com.forward.blog.model.KVO;
import com.forward.blog.service.CommentService;
import com.forward.blog.service.PostService;

@Controller
@RequestMapping("/admin/comment")
public class AdminCommentController {
		
	@Autowired
	CommentService commentService;
	@Autowired
	PostService postService;
	
	@RequestMapping("/commentList.action")
	public String inComment(Model m,KVO kvo,@RequestParam(defaultValue="1")int page){
		m.addAttribute("pages",commentService.loadPage(kvo,page));
		m.addAttribute("postList", postService.selectAllPostList());
		m.addAttribute("KVO", kvo);
		return "/admin/comment";
	}
	
	@RequestMapping("/deleteCommentById.action")
	public String deleteCommentById(Comment comment){
		commentService.deleteCommentById(comment);
		return "redirect:/admin/comment/commentList.action";
	}
	
	@RequestMapping("/liuYan.action")
	public String inLiuYan(Model m,KVO kvo,@RequestParam(defaultValue="1")int page){
		m.addAttribute("pages",commentService.liuYanLoadPage(kvo, page));
		return "/admin/liuYan";
	}
}
