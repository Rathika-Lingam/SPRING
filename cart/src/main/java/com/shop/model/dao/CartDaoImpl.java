package com.shop.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.entity.Cartitems;


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
	public void delete(int cartitemid) {
		session.getCurrentSession().delete(getProductById(cartitemid));
		
	}
	@Override
	public void update(Cartitems cart) {
		session.getCurrentSession().update(cart);
	}


	
	@Override
	public List getAllCartitems() {
		
		return session.getCurrentSession().createQuery("from Cartitems ").list();

	}

	@Override
	public Cartitems getProductById(int cartitemid) {
		
		return (Cartitems)session.getCurrentSession().get(Cartitems.class, cartitemid);
	}

	
	@Override
	public int cartLength() {
		List cartitems=session.getCurrentSession().createQuery("from Cartitems ").list();
		return cartitems.size();
	}
	
	@Override
	public List getbyuserid(int id) {
		
		return session.getCurrentSession().createQuery("from Cartitems where userid ='"+id+"'").list();
			}
}
