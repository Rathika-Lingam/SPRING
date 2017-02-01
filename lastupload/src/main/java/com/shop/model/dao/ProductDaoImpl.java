package com.shop.model.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.shop.model.entity.Products;
@Repository
@Transactional  //transaction propagation are handled automatically.
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Products product) {
		session.getCurrentSession().save(product);
	}

	@Override
	public void edit(Products product ) {
		session.getCurrentSession().update(product);
	}

	@Override
	public void delete(int productId) {		
		session.getCurrentSession().delete(getProduct(productId));
	}

	@Override
	public Products getProduct(int productId) {
		return (Products)session.getCurrentSession().get(Products.class, productId);
		
	}

	@Override
	public List<Products> getAllProduct() {
		return session.getCurrentSession().createQuery("from Products").list();
	}
	
	/*@Override
	public List getAllProductfromcategory(String id) {
		return session.getCurrentSession().createQuery("from Products where CATEGORYNAME='" + id + "'").list();
	}*/
	
	

	@Override
	public List getAllProductfromcategory(String id) {
		
		String query="from Products where CATEGORYNAME=:output";
		List image=session.getCurrentSession().createQuery(query).setParameter("output",id).list();
		return image;
	}

	
}
