package com.shop.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.entity.Cartitems;
import com.shop.model.entity.Products;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired
	private SessionFactory session;
	
	
	@Override
	public void add(Cartitems cart) {
		
		session.getCurrentSession().save(cart);
	}
	
	
	@Override
	public List getAllCartitems() {
		
		return session.getCurrentSession().createQuery("from Cartitems ").list();

	}



}
