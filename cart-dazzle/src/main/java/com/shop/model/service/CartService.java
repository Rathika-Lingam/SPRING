package com.shop.model.service;

import java.util.List;

import com.shop.model.entity.Cartitems;

public interface CartService {
 public void add(Cartitems cart);

public List getAllCartitems();


}
