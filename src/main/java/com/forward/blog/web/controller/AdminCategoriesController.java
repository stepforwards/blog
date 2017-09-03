package com.forward.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/categories")
public class AdminCategoriesController {
	
	@RequestMapping("/categoriesList.action")
	public String inCategories(){
		return "/admin/categories";
	}
	
}
