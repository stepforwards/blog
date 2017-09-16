package com.forward.blog.web.controller;

import java.io.File;
import java.sql.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.forward.blog.model.Album;
import com.forward.blog.model.Paging;
import com.forward.blog.model.Post;
import com.forward.blog.service.AlbumService;
import com.forward.blog.service.PostService;

@Controller
@RequestMapping("/admin/album")
public class AdminAlbumController {
	
	@Autowired
	AlbumService albumService;
	@Autowired
	PostService postService;
	
	
	@RequestMapping("/album.action")
	public String inAlbum(Model m,@RequestParam(defaultValue="prev")String prevOrNext,@RequestParam(defaultValue="")String alname,@RequestParam(defaultValue="true")String firstPage,HttpSession session){
		Paging paging = (Paging) session.getAttribute("paging");
		paging = paging == null ? new Paging() : paging;
		paging.setPrevOrNext(prevOrNext);
		paging.setPageSize(16);
		if(firstPage.equals("true"))
			paging.setCurrentPage(1);
		paging.setAlname(alname);
		m.addAttribute("albumList", albumService.selectAlbumListPaging(paging));
		m.addAttribute("alname", alname);
		m.addAttribute("postList", postService.selectAllPostList());
		session.getAttribute("paging");
		return "/admin/album";
	}
	
	@RequestMapping("/addAlbum.action")
	public String addAlbum(Album album,MultipartFile photo) throws Exception{
		if(photo == null) return "redirect:/admin/album.action";
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		String extension = FilenameUtils.getExtension(photo.getOriginalFilename());
		String fileName = uuid + "." + extension;
		String pathname = "D:\\blogpic\\album";
		photo.transferTo(new File(pathname+"\\"+fileName));
		album.setAlurl("blogpic\\album\\"+fileName);
		album.setAlinserttime(new Date(System.currentTimeMillis()));
		albumService.insertAlbum(album);
		return "redirect:/admin/album/album.action";
	}
	
	@RequestMapping("/deleteAlbum.action")
	public String deleteAlbumById(Album album){
		albumService.deleteAlbumById(album);
		return "redirect:/admin/album/album.action";
	}
	
	@RequestMapping("/setPostPalbumidByPostId.action")
	public String updateSetPostPalbumidByPostId(Post post){
		post.setPalbumurl(albumService.selectAlbumById(post.getPalbumid()).getAlurl());
		postService.updateSetPostPalbumidByPostId(post);
		return "redirect:/admin/album/album.action";
	}
	
	@RequestMapping("/video.action")
	public String inVideo(){
		return "/admin/albumVideo";
	}
}
