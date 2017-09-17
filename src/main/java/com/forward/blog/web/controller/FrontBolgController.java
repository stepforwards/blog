package com.forward.blog.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forward.blog.model.Comment;
import com.forward.blog.model.KVO;
import com.forward.blog.model.Post;
import com.forward.blog.service.AlbumService;
import com.forward.blog.service.CategoriesService;
import com.forward.blog.service.CommentService;
import com.forward.blog.service.PostService;
import com.forward.blog.service.TagService;


@Controller
@RequestMapping("/front/blog")
public class FrontBolgController {
	
	@Autowired
	PostService postService;
	@Autowired
	CategoriesService categoriesService;
	@Autowired
	TagService tagService;
	@Autowired
	AlbumService albumService;
	@Autowired
	CommentService commentService;
	
	@RequestMapping("/posts.action")
	public String inBlog(Model m,KVO kvo,@RequestParam(defaultValue="1")int page){
		m.addAttribute("pages", postService.loadPage(kvo,page));
		m.addAttribute("categoriesList", categoriesService.selectCategoriesList());
		m.addAttribute("tagList", tagService.selectTagList());
		m.addAttribute("ptitle", kvo.getPtitle());
		m.addAttribute("latestPostList", postService.selectlatestPost());
		m.addAttribute("albumSharingList", albumService.selectAlbumPartList());
		return "/front/blog";
	}
	@RequestMapping("/post.action")
	public String inPost(Post post,Model m){
		List<Comment> commentList = commentService.selectCommentByPostId(post);
		m.addAttribute("post", postService.selectPostById(post));
		m.addAttribute("commentList", commentList);
		m.addAttribute("commentListSize", commentList.size());
		m.addAttribute("categoriesList", categoriesService.selectCategoriesList());
		m.addAttribute("tagList", tagService.selectTagList());
		m.addAttribute("latestPostList", postService.selectlatestPost());
		m.addAttribute("albumSharingList", albumService.selectAlbumPartList());
		return "/front/post";
	}
}
