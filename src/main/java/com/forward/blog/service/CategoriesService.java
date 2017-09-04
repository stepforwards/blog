package com.forward.blog.service;

import java.util.List;

import com.forward.blog.model.Categories;

public interface CategoriesService {

	List<Categories> selectCategoriesList();

	void addCategories(Categories categories);

	void deleteCategoriesById(Categories categories);

}
