package com.shop.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.entity.Cart;
import com.shop.model.entity.Cartitems;
import com.shop.model.entity.User;
import com.shop.model.service.BillingAddressService;

@Repository
@Transactional
public class PaymentDaoImpl implements PaymentDao {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	CartDao cd;
	@Autowired
	BillingAddressService bas;
	@Autowired 
	UserDao ud;
	
	
	@Override
	public void add(Cart carts) {
	 
	sessionFactory.getCurrentSession().save(carts);

		
	}



	@Override
	public void order(String username) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void Cartitems() {
		// TODO Auto-generated method stub
		
	}





	}

	
	

	


