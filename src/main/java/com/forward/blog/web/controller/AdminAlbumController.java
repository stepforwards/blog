package com.forward.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/album")
public class AdminAlbumController {
	
	@RequestMapping("/album.action")
	public String inAlbum(){
		return "/admin/album";
	}
	
	@RequestMapping("/video.action")
	public String inVideo(){
		return "/admin/albumVideo";
	}
}
