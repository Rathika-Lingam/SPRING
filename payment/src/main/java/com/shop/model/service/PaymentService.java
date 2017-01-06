package com.shop.model.service;

import java.util.List;

import com.shop.model.entity.Cart;

public interface PaymentService {
	public void add(String username,Cart cart);
	public void order(String username);
	public void Cartitems();
	/*public List getallorders();*/


}
