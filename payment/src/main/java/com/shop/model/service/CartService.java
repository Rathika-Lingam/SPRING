package com.shop.model.service;

import java.util.List;

import com.shop.model.entity.Cart;
import com.shop.model.entity.Cartitems;

public interface CartService {
 public void add(Cartitems cart);

	public void delete(int id);
   
public List<Cartitems> getAllCartitems();
public Cartitems getProductById(int id);


public void update(Cartitems cart);

public int cartLength();

public List getbyname(String name);


}
