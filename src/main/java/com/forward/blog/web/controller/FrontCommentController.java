package com.forward.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/front/comment")
public class FrontCommentController {
	
	@RequestMapping("/comment.action")
	public String inComment(){
		return "/front/comment";
	}
}
