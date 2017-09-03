package com.forward.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/comment")
public class AdminCommentController {
	
	@RequestMapping("/commentList.action")
	public String inComment(){
		return "/admin/comment";
	}
}
