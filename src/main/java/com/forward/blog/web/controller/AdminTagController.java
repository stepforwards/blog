package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.model.Tag;
import com.forward.blog.service.TagService;

@Controller
@RequestMapping("/admin/tag")
public class AdminTagController {
	
	@Autowired
	TagService tagService;
	
	@RequestMapping("/tagList.action")
	public String inTag(Model m){
		m.addAttribute("tagList", tagService.selectTagList());
		return "/admin/tag";
	}
	
	@RequestMapping("/addTag.action")
	public String addTag(Tag tag){
		tagService.addTag(tag);
		return "redirect:/admin/tag/tagList.action";
	}
	
	@RequestMapping("updateTag.action")
	public String updateTagById(Tag tag){
		tagService.updateTagById(tag);
		return "redirect:/admin/tag/tagList.action";
	}
	
	@RequestMapping("deleteTag.action")
	public String deleteTagById(Tag tag){
		tagService.deleteTagById(tag);
		return "redirect:/admin/tag/tagList.action";
	}
}
