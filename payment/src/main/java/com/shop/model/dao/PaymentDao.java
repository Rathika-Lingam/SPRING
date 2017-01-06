package com.shop.model.dao;

import com.shop.model.entity.Cart;

public interface PaymentDao {
	public void add(String username,Cart cart);
	public void order(String username);
	public void Cartitems();
	/*public List getallorders();*/
	public void addcart(String username, Cart cart);



}
