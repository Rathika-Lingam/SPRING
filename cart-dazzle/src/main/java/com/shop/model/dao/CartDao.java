package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.Cartitems;

public interface CartDao {

	public void add(Cartitems cart);

	public 	List getAllCartitems();

}
