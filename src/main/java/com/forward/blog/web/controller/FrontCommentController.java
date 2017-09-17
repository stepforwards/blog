package com.forward.blog.web.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forward.blog.model.Comment;
import com.forward.blog.model.KVO;
import com.forward.blog.service.AlbumService;
import com.forward.blog.service.CommentService;
import com.forward.blog.service.PostService;

@Controller
@RequestMapping("/front/comment")
public class FrontCommentController {
	
	@Autowired
	PostService postService;
	@Autowired
	AlbumService albumService;
	@Autowired
	CommentService commentService;
	
	@RequestMapping("/comment.action")
	public String inLiuYan(Model m,KVO kvo,@RequestParam(defaultValue="1")int page){
		m.addAttribute("pages",commentService.liuYanLoadPage(kvo, page));
		m.addAttribute("latestPostList", postService.selectlatestPost());
		m.addAttribute("albumSharingList", albumService.selectAlbumPartList());
		return "/front/comment";
	}
	
	@RequestMapping("/doComment.action")
	public String doComment(Comment comment){
		comment.setCoinserttime(new Date(System.currentTimeMillis()));
		commentService.addComment(comment);
		return "redirect:/front/blog/post.action?pid="+comment.getCopostid();
	}
	
	@RequestMapping("/doLiuYan.action")
	public String doLiuYan(Comment comment){
		comment.setCoinserttime(new Date(System.currentTimeMillis()));
		commentService.addComment(comment);
		return "redirect:/front/comment/LiuYanResult.action";
	}
	@RequestMapping("/LiuYanResult.action")
	public String LiuYanResult(){
		return "/front/message";
	}
}
