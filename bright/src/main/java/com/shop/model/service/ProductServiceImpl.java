package com.shop.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.ProductDao;

import com.shop.model.entity.Products;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;
	
	@Transactional
	public void add(Products product) {
		productDao.add(product);
	}

	@Transactional
	public void edit(Products product) {
		productDao.edit(product);
	}

	@Transactional
	public void delete(int productId) {
		productDao.delete(productId);
	}

	@Transactional
	public Products getProduct(int productId) {
		return productDao.getProduct(productId);
	}

	@Transactional
	public List getAllProduct() {
		return productDao.getAllProduct();
	}

	
	@Override
	public List getAllProductfromcategory(String id) {
		return productDao.getAllProductfromcategory(id);
	}

}
