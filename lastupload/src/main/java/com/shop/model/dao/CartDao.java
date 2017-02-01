package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.Cart;
import com.shop.model.entity.Cartitems;

public interface CartDao {

	public void add(Cartitems cart);

	public void delete(int cartitemid);
	public void update(Cartitems cart);
	
	public 	List getAllCartitems();
	public Cartitems getProductById(int cartitemid);
	public int cartLength(int id);
	
	public List getbyuserid(int id);
	


}
