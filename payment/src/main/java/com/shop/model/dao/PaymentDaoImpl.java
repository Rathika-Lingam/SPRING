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
	
	
	
	public void add(String username, Cart cart) {
		User user=new User();
		
		
		//set mailid in cart object
		user.setEmail(username);
		cart.setId_fk(user);
		
		//get list of product
		List<Cartitems> li=cd.getAllCartitems();
		
		//to store the grand total
		int tot=0;
		for(int i=0;i<li.size();i++)
		{
			tot=(int) (tot+(li.get(i).getTotal()));
		}
		
		//set the grand total in cart object
		cart.setTotal(tot);
		sessionFactory.getCurrentSession().save(cart);

		
	}



	@Override
	public void order(String username) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void Cartitems() {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void addcart(String username, Cart cart) {
		// TODO Auto-generated method stub
		
	}
	}

	
	

	


