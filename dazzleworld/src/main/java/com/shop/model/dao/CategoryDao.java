package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.Category;

public interface CategoryDao {
	public void add(Category category);
	public void edit(Category category);
	public void delete(int categoryId);
	public Category getcategory(int categoryId);
	public List getAllcategory();


}
