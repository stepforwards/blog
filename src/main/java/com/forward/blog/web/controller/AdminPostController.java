package com.forward.blog.web.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.forward.blog.model.KVO;
import com.forward.blog.model.MySetTpcontact;
import com.forward.blog.model.Post;
import com.forward.blog.model.Tpcontact;
import com.forward.blog.service.CategoriesService;
import com.forward.blog.service.PostService;
import com.forward.blog.service.TagService;

@Controller
@RequestMapping("/admin/post")
public class AdminPostController {
	
	@Autowired
	PostService postService;
	@Autowired
	CategoriesService categoriesService;
	@Autowired
	TagService tagService;
	
	@RequestMapping("/postList.action")
	public String inPostList(Model m,KVO kvo,@RequestParam(defaultValue="1")int page){
		m.addAttribute("pages", postService.loadPage(kvo,page));
		m.addAttribute("categoriesList", categoriesService.selectCategoriesList());
		m.addAttribute("tagList", tagService.selectTagList());
		m.addAttribute("kvo", kvo);
		return "/admin/index";
	}
	@RequestMapping("/draftsPostList.action")
	public String inDraftsPostList(Model m,KVO kvo){
		m.addAttribute("postList", postService.selectPostList(kvo));
		m.addAttribute("categoriesList", categoriesService.selectCategoriesList());
		m.addAttribute("tagList", tagService.selectTagList());
		m.addAttribute("kvo", kvo);
		return "/admin/indexDrafts";
	}
	
	/**  
	* @Title: inNewPost  
	* @Description: 查询分类及标签列表
	* @param @param m
	* @param @return    返回新建文章视图  
	* @return String    返回类型  
	* @throws  
	*/  
	@RequestMapping(value="/newPost.action",method=RequestMethod.GET)
	public String inNewPost(Model m){
		m.addAttribute("categoriesList", categoriesService.selectCategoriesList());
		m.addAttribute("tagList", tagService.selectTagList());
		return "/admin/newPost";
	}
	
	/**  
	* @Title: toNewPost  
	* @Description: 新建文章的同时获得postid，去tpcontact中添加tag标签与文章关联
	* @param @param post
	* @param @return 返回postList视图  
	* @return String    返回类型  
	* @throws  
	*/  
	@RequestMapping(value="/newPost.action",method=RequestMethod.POST)
	public String toNewPost(Post post){
		post.setPid(postService.insertPost(post));
		if(post.getTids() != null){
			
			for(int i = 0;i < post.getTids().length;i++){
				Tpcontact tpcontact = new Tpcontact();
				tpcontact.setTppostid(post.getPid());
				tpcontact.setTptagid(Integer.parseInt(post.getTids()[i]));
				tagService.insertPostTag(tpcontact);
			}
		}
		return "redirect:/admin/post/postList.action";
	}
	
	/**  
	* @Title: deletePostById  
	* @Description: 通过postid删除文章，同时也删除tpcontact中属性tppostid=postid的记录清除该文章的tag
	* @param @param post
	* @param @return    返回postList视图  
	* @return String    返回类型  
	* @throws  
	*/  
	@RequestMapping("/deletePostById.action")
	public String deletePostById(Post post){
		postService.deletePostById(post);
		tagService.deletePostTagByPostId(post.getPid());
		return "redirect:/admin/post/postList.action";
	}
	
	@RequestMapping("/deleteDraftsPostById.action")
	public String deleteDraftsPostById(Post post){
		postService.deletePostById(post);
		tagService.deletePostTagByPostId(post.getPid());
		return "redirect:/admin/post/draftsPostList.action?drafts=1";
	}
	
	/**  
	* @Title: editPostById  
	* @Description: 通过文章id查找文章数据，查询分类及标签信息
	* @param @return    返回编辑视图  
	* @return String    返回类型  
	* @throws  
	*/  
	@RequestMapping(value="/editPostById.action",method=RequestMethod.GET)
	public String editPostById(Post post,Model m){
		m.addAttribute("post", postService.selectPostById(post));
		m.addAttribute("categoriesList", categoriesService.selectCategoriesList());
		m.addAttribute("tagList", tagService.selectTagList());
		return "/admin/editPost";
	}
	
	/**  
	* @Title: updatePostById  
	* @Description: 比较新旧tag，增加的tag插入，减少的tag删除，没有新tag清空文章所有旧tag，没有旧tag直接插入新tag  
	* @param @param post
	* @param @return    返回文章列表视图 
	* @return String    返回类型  
	* @throws  
	*/  
	@RequestMapping(value="/editPostById.action",method=RequestMethod.POST)
	public String updatePostById(Post post){
		postService.updatePostById(post);
		MySetTpcontact.updateTpcontact(post, tagService);
		return "redirect:/admin/post/postList.action";
	}
	
	@RequestMapping("/setFinePostById.action")
	public void setFinePostById(Post post){
		postService.setFinePostById(post);
	}
	
}
