package com.forward.blog.mapper;

import java.util.List;

import com.forward.blog.model.Categories;

public interface CategoriesMapper {

	List<Categories> selectCategoriesList();

	void insertCategories(Categories categories);

	void deleteCategoriesById(Categories categories);

	void updateCategoriesById(Categories categories);

}
