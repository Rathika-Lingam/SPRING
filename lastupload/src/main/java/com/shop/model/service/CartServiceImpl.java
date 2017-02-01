package com.shop.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.CartDao;
import com.shop.model.entity.Cart;
import com.shop.model.entity.Cartitems;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cd;
	
	@Transactional
	public void add(Cartitems cart)
	{
		cd.add(cart);
		
	}
	
	
	@Transactional
	public void delete(int id) {
		 cd.delete(id);
	}
	
	
	
	@Transactional
	public void update(Cartitems cart) {
		cd.update(cart);
	}


	@Transactional
	public List getAllCartitems() {
		return cd.getAllCartitems();
	}


	@Transactional
	public Cartitems getProductById(int cartitemid) {
		
		return cd.getProductById(cartitemid);
	}
	
	@Transactional
	public int cartLength(int id) {
		return cd.cartLength(id);
	}

	@Transactional
	public List getbyuserid(int id) {
		return cd.getbyuserid(id);
	}

	
}
