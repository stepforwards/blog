package com.forward.blog.web.controller;

import java.io.File;
import java.sql.Date;
import java.util.UUID;


import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.forward.blog.model.Album;
import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;
import com.forward.blog.model.Video;
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
	public String inAlbum(Model m,KVO kvo,@RequestParam(defaultValue="1")int page){
		m.addAttribute("alname", kvo.getAlname());
		m.addAttribute("postList", postService.selectAllPostList());
		m.addAttribute("videoList",albumService.selectAllVideoList());
		m.addAttribute("pages", albumService.loadPage(kvo,page));
		return "/admin/album";
	}
	
	@RequestMapping("/addAlbum.action")
	public String addAlbum(Album album,MultipartFile photo) throws Exception{
		if(photo == null) return "redirect:/admin/album.action";
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		String extension = FilenameUtils.getExtension(photo.getOriginalFilename());
		if(extension.equals("")) return "redirect:/admin/album/album.action";
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
	
	/*
	 * Video
	 * */
	@RequestMapping("/video.action")
	public String inVideo(Model m,KVO kvo,@RequestParam(defaultValue="1")int page){
		m.addAttribute("pages",albumService.loadPageVideo(kvo,page));
		return "/admin/albumVideo";
	}
	
	@RequestMapping("/addVideo.action")
	public String addVideo(Video video){
		video.setVinserttime(new Date(System.currentTimeMillis()));
		albumService.insertVideo(video);
		return "redirect:/admin/album/video.action";
	}
	
	@RequestMapping("/setVideoValbumidByVideoId.action")
	public String updateSetVideoValbumidByVideoId(Video video){
		video.setValbumurl(albumService.selectAlbumById(video.getValbumid()).getAlurl());
		albumService.updateSetVideoValbumidByVideoId(video);
		return "redirect:/admin/album/album.action";
	}
}
