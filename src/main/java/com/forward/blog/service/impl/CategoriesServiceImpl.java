package com.forward.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forward.blog.mapper.CategoriesMapper;
import com.forward.blog.model.Categories;
import com.forward.blog.service.CategoriesService;

@Service
public class CategoriesServiceImpl implements CategoriesService {
	
	@Autowired
	CategoriesMapper categoriesMapper;
	
	@Override
	public List<Categories> selectCategoriesList() {
		return categoriesMapper.selectCategoriesList();
	}

	@Override
	public void addCategories(Categories categories) {
		categoriesMapper.insertCategories(categories);
	}

	@Override
	public void deleteCategoriesById(Categories categories) {
		categoriesMapper.deleteCategoriesById(categories);
	}

	@Override
	public void updateCategoriesById(Categories categories) {
		categoriesMapper.updateCategoriesById(categories);
	}

}
