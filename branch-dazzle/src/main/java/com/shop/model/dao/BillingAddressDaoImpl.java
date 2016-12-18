package com.shop.model.dao;

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
	public void add(BillingAddress bs) {
		session.getCurrentSession().save(bs);

}
}
