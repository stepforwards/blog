package com.forward.blog.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.model.Paging;
import com.forward.blog.service.AlbumService;
import com.forward.blog.service.PostService;

@Controller
@RequestMapping("/front/album")
public class FrontAlbumController {
	
	@Autowired
	PostService postService;
	@Autowired
	AlbumService albumService;
	
	@RequestMapping("/album.action")
	public String inAlbum(Model m,String prevOrNext,HttpSession session){
		m.addAttribute("latestPostList", postService.selectlatestPost());
		Paging paging = (Paging) session.getAttribute("paging");
		prevOrNext = prevOrNext == null ? "prev" : prevOrNext;
		paging = paging == null ? new Paging() : paging;
		paging.setPrevOrNext(prevOrNext);
		paging.setPageSize(16);
		m.addAttribute("albumList", albumService.selectAlbumListPaging(paging));
		m.addAttribute("albumSharingList", albumService.selectAlbumPartList());
		session.getAttribute("paging");
		return "/front/album";
	}
}
