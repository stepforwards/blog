package com.forward.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/front/album")
public class FrontAlbumController {
	
	@RequestMapping("/album.action")
	public String inAlbum(){
		return "/front/album";
	}
}
