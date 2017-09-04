package com.forward.blog.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forward.blog.model.Categories;
import com.forward.blog.service.CategoriesService;

@Controller
@RequestMapping("/admin/categories")
public class AdminCategoriesController {
	
	@Autowired
	CategoriesService categoriesService;
	
	@RequestMapping("/categoriesList.action")
	public String inCategories(Model m){
		m.addAttribute("categoriesList", categoriesService.selectCategoriesList());
		return "/admin/categories";
	}
	
	@RequestMapping("/addCategories.action")
	public String addCategories(Categories categories){
		categoriesService.addCategories(categories);
		return "redirect:/admin/categories/categoriesList.action";
	}
	
	@RequestMapping("/deleteCategories.action")
	public String deleteCategories(Categories categories){
		categoriesService.deleteCategoriesById(categories);
		return "redirect:/admin/categories/categoriesList.action";
	}
	
}
