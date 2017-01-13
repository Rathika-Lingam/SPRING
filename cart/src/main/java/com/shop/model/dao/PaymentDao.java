package com.shop.model.dao;

import com.shop.model.entity.Cart;

public interface PaymentDao {
	public void add(Cart carts);
	public void order(String username);
	public void Cartitems();
	/*public List getallorders();*/
	



}
