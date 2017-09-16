package com.forward.blog.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forward.blog.model.KVO;
import com.forward.blog.service.AlbumService;
import com.forward.blog.service.PostService;
import com.forward.blog.utils.Page;

@Controller
@RequestMapping("/front/album")
public class FrontAlbumController {
	
	@Autowired
	PostService postService;
	@Autowired
	AlbumService albumService;
	
	@SuppressWarnings("rawtypes")
	@RequestMapping("/album.action")
	public String inAlbum(Model m,KVO kvo,@RequestParam(defaultValue="1")int page){
		Page pages = albumService.loadPage(kvo,page);
		m.addAttribute("latestPostList", postService.selectlatestPost());
		m.addAttribute("albumSharingList", albumService.selectAlbumPartList());
		
		Page pagesv = albumService.loadPageVideo(kvo,page);
		m.addAttribute("videoList",pagesv.getRows());
		
		m.addAttribute("pages", pages.getTotal() > pagesv.getTotal() ? pages : pagesv);
		return "/front/album";
	}
}
