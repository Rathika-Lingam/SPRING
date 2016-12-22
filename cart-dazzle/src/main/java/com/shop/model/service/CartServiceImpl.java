package com.shop.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.model.dao.CartDao;
import com.shop.model.entity.Cartitems;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cd;
	
	@Transactional
	public void add(Cartitems cart) {
		cd.add(cart);
		
	}

	@Transactional
	public List getAllCartitems() {
		return cd.getAllCartitems();
	}

	
}
