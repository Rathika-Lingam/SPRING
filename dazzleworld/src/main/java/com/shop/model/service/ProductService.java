package com.shop.model.service;

import java.util.List;


import com.shop.model.entity.Products;

public interface ProductService {
	public void add(Products product);
	public void edit(Products product);
	public void delete(int productId);
	public Products getProduct(int productId);
	public List<Products> getAllProduct();
	public List getAllProductfromcategory(String id);
	}
