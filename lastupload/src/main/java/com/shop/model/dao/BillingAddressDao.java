package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.BillingAddress;


public interface BillingAddressDao {
	

	public void saveorupdate(BillingAddress bs);

	public List getbyid(int id);

	
}
