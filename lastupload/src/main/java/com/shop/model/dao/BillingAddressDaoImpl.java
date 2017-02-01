package com.shop.model.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.model.entity.BillingAddress;

@Repository
@Transactional

public class BillingAddressDaoImpl implements BillingAddressDao {
	@Autowired
	private SessionFactory session;

	@Override
	public void saveorupdate(BillingAddress bs) {
	
		session.getCurrentSession().saveOrUpdate(bs);

	}
	@Override
	public List getbyid(int id) {
		
		
		String query="from BillingAddress where userid=:output";
		List image=session.getCurrentSession().createQuery(query).setParameter("output",id).list();
		return image;

		
		
	}
	
}
