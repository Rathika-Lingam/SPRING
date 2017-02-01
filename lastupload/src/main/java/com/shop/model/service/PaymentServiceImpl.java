package com.shop.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.PaymentDao;
import com.shop.model.entity.Cart;

@Service

public class PaymentServiceImpl implements PaymentService {
	@Autowired
	private PaymentDao pd;
	@Transactional
	public void add(Cart carts) {
		pd.add(carts);
	
		
	}
	@Transactional
	public void order(String username) {
		pd.order(username);
		
	}
	@Transactional
	public void Cartitems() {
		pd.Cartitems();
		
	}
/*	@Transactional
	public List getallorders() {
	return pd.getallorders();
	}
*/	
	


}
